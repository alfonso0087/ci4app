<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
  protected $orangModel;

  public function __construct()
  {
    $this->orangModel = new OrangModel();
  }

  public function index()
  {

    $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;


    $keyword = $this->request->getVar('keyword');
    if ($keyword) {
      $orang = $this->orangModel->searchOrang($keyword);
    } else {
      $orang = $this->orangModel;
    }

    $data = [
      'titlebar' => 'Daftar Orang',
      // 'orang' => $this->orangModel->findAll(),
      // Pakai pagination, gunakan fungsi paginate untuk menentukan jumlah data yang ditampilkan, dan pager untuk menampilkan next/previous
      'orang' => $orang->paginate(5, 'orang'),
      'pager' => $this->orangModel->pager,
      'currentPage' => $currentPage
    ];
    return view('orang/index', $data);
  }
}
