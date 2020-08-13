<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
  protected $komikModel;

  public function __construct()
  {
    $this->komikModel = new KomikModel();
  }

  public function index()
  {
    // $komik = $this->komikModel->findAll();
    $data = [
      'titlebar' => 'Daftar Komik',
      'komik' => $this->komikModel->getKomik(),
    ];

    return view('komik/index', $data);
  }

  public function detail($slug)
  {
    $data = [
      'titlebar' => 'Detail Komik',
      'komik' => $this->komikModel->getKomik($slug)
    ];
    // Jika komik tidak ditemukan
    if (empty($data['komik'])) {
      throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak Ditemukan');
    }

    return view('komik/detail', $data);
  }

  public function create()
  {
    $data = [
      'titlebar' => 'Form Tambah Data Komik',
      'validation' => \Config\Services::validation()
    ];

    return view('komik/create', $data);
  }

  public function save()
  {
    // Validasi input
    if (!$this->validate([
      'judul' => [
        'rules' => 'required|is_unique[komik.judul]',
        'errors' => [
          'required' => '{field} komik harus diisi !',
          'is_unique' => '{field} komik sudah ada !'
        ]
      ],
      'penulis' => [
        'rules' => 'required',
        'errors' => [
          'required' => '{field} komik harus diisi !'
        ]
      ],
      'penerbit' => [
        'rules' => 'required',
        'errors' => [
          'required' => '{field} komik harus diisi !'
        ]
      ],
      'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg, image/png]',
        'errors' => [
          'max_size' => 'Ukuran gambar terlalu besar',
          'is_image' => 'Yang anda pilih bukan gambar',
          'mime_in' => 'Yang anda pilih bukan gambar',
        ]
      ]
    ])) {
      // $validation = \Config\Services::validation();

      // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
      return redirect()->to('/komik/create')->withInput();
    }

    //! ambil gambar
    $fileSampul = $this->request->getFile('sampul');
    // Cek apakah ada gambar yang diupload
    //? Digunakan jika tidak ada file yg diupload*
    if ($fileSampul->getError() == 4) {
      $namaSampul = 'default.jpg';
    } else {
      //? Digunakan jika mau me-random nama file yg diupload*
      // Generate nama sampul random 
      $namaSampul = $fileSampul->getRandomName();
      // pindahkan file ke public/img
      $fileSampul->move('img', $namaSampul);

      //! Digunakan jika ingin nama file yg tersimpan di db == nama file yang diupload*
      // ambil nama file yg diupload 
      // $namaSampul = $fileSampul->getName();
    }

    $slug = url_title($this->request->getVar('judul'), '-', true);
    $this->komikModel->save([
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Komik berhasil ditambahkan.');
    return redirect()->to('/komik');
  }

  public function delete($id)
  {
    // Jika ingin hapus file dari folder public/img
    // Cari gambar berdasarkan id
    $komik = $this->komikModel->find($id);

    // Cek/pastikan jika file yang akan dihapus bukan gambar default
    if ($komik['sampul'] != 'default.jpg') {
      // Hapus file/gambarnya dari folder assets
      unlink('img/' . $komik['sampul']);
    }

    $this->komikModel->delete($id);
    session()->setFlashdata('pesan', 'Komik berhasil dihapus.');
    return redirect()->to('/komik');
  }

  public function edit($slug)
  {
    $data = [
      'titlebar' => 'Form Ubah Data Komik',
      'validation' => \Config\Services::validation(),
      'komik' => $this->komikModel->getKomik($slug),
    ];

    return view('komik/edit', $data);
  }

  public function update($id)
  {
    // Cek Judul
    $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));

    if ($komikLama['judul'] == $this->request->getVar('judul')) {
      $rule_judul = 'required';
    } else {
      $rule_judul = 'required|is_unique[komik.judul]';
    }
    if (!$this->validate([
      'judul' => [
        'rules' => $rule_judul,
        'errors' => [
          'required' => '{field} komik harus diisi !',
          'is_unique' => '{field} komik sudah ada !'
        ]
      ],
      'penulis' => [
        'rules' => 'required',
        'errors' => [
          'required' => '{field} komik harus diisi !'
        ]
      ],
      'penerbit' => [
        'rules' => 'required',
        'errors' => [
          'required' => '{field} komik harus diisi !'
        ]
      ],
      'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg, image/png]',
        'errors' => [
          'max_size' => 'Ukuran gambar terlalu besar',
          'is_image' => 'Yang anda pilih bukan gambar',
          'mime_in' => 'Yang anda pilih bukan gambar',
        ]
      ]
    ])) {
      return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
    }

    $fileSampul = $this->request->getFile('sampul');
    // Cek gambar apakah tetap gambar lama
    if ($fileSampul->getError() == 4) {
      $namaSampul = $this->request->getVar('sampulLama');
    } else {
      // Generate nama file random
      $namaSampul = $fileSampul->getRandomName();
      // upload gambar
      $fileSampul->move('img', $namaSampul);
      // hapus file gambar yg lama
      unlink('img/' . $this->request->getVar('sampulLama'));
    }

    $slug = url_title($this->request->getVar('judul'), '-', true);
    $this->komikModel->save([
      'id' => $id,
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Komik berhasil diubah .');
    return redirect()->to('/komik');
  }
}
