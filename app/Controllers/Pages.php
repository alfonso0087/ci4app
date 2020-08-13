<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {
    $data = [
      'titlebar' => 'Home',
      'test' => ['satu', 'dua', 'tiga']
    ];
    return view('pages/home', $data);
  }

  public function about()
  {
    $data = [
      'titlebar' => 'About Me'
    ];

    return view('pages/about', $data);
  }

  public function contact()
  {
    $data = [
      'titlebar' => 'Contact US',
      'alamat' => [
        [
          'tipe' => 'Rumah',
          'alamat' => 'Jl 123',
          'kota' => 'Yogyakarta'
        ],
        [
          'tipe' => 'Kantor',
          'alamat' => 'Jl.Cendrawasih',
          'kota' => 'Surakarta'
        ]
      ]
    ];

    return view('pages/contact', $data);
  }

  //--------------------------------------------------------------------

}
