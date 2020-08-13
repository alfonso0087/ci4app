<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
  <div class="row">
    <div class="col-6">
      <h1 class="mt-2">Daftar Orang</h1>
      <form action="" method="POST">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Masukkan Keyword Pencarian" name="keyword">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  <div class="row">
    <div class="col">

      <!-- <a href="/komik/create" class="btn btn-primary mb-3">Tambah Data Komik</a> -->

      <table class="table">
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">Nama</th>
            <th scope="col">Alamat</th>
            <th scope="col">Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1 + (5 * ($currentPage - 1));
          foreach ($orang as $org) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><?= $org['nama']; ?></td>
              <td><?= $org['alamat']; ?></td>
              <td>
                <a href="" class="btn btn-success">Details</a>
              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
      <!-- Tampilkan Pagintaion -->
      <?= $pager->links('orang', 'orang_pagination'); ?>
    </div>
  </div>
</div>


<?= $this->endSection(); ?>