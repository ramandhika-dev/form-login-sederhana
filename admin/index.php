<?php
session_start();

// cek apakah yang mengakses halaman ini sudah login
if ($_SESSION['level'] == "") {
	header("location:../index.php");
}

?>
<html>

<head>
	<title>CRUD PHP MYSQL</title>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</head>

<body>
	<div class="row">
		<div class="container-fuild">
			<div class="row">
				<br>
				<br>
				<center>
					<p class="admin">Halo <b><?php echo $_SESSION['username']; ?></b> Anda telah login sebagai <b><?php echo $_SESSION['level']; ?></b>.</p>
				</center>
				<div class="col-md-8 col-md-offset-2">
					<a href="tambah.php" class="btn btn-success"><i class="glyphicon glyphicon-plus"></i> Tambah</a>
					<a href="../index.php" class="btn btn-warning"><i class="glyphicon glyphicon-minus"></i> Log Out</a>
					<br>
					<br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="title"><b>Data Siswa</b></span>
						</div>
						<div class="panel-body">
							<table class="table table-stripped" width="100%">
								<thead>
									<tr>
										<th>NO</th>
										<th>NAMA SISWA</th>
										<th>NIS</th>
										<th>ALAMAT</th>
										<th>NOMOR TELEPON</th>
										<th>PILIHAN</th>
									</tr>
								</thead>
								<?php
								include 'koneksi.php';

								$lihat	= mysqli_query($conn, "SELECT * FROM data_siswa");
								if (mysqli_num_rows($lihat) == 0) { //jika hasil dari query menampilkan 0 data maka akan memperlihatkan data kosong
									echo '<tr><td colspan="6"><center>Data Kosong!!!</center></td></tr>';
								} else {
									$no 	= 1;
									while ($data = mysqli_fetch_array($lihat)) {
								?>
										<tbody>
											<tr>
												<td><?php echo $no; ?></td>
												<td><?php echo $data['nama_siswa'] ?></td>
												<td><?php echo $data['nis_siswa'] ?></td>
												<td><?php echo $data['alamat_siswa'] ?></td>
												<td><?php echo $data['notelp_siswa'] ?></td>
												<td>
													<a href="edit.php?id_siswa=<?php echo $data['nis_siswa'] ?>" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
													<a href="proses_hapus.php?id_siswa=<?php echo $data['id_siswa'] ?>" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-erase"></i> Hapus</a>
												</td>
											</tr>
										</tbody>
								<?php $no++;
									}
								} ?>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>