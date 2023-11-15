<!DOCTYPE html>
<html>
<head>
	<title>MEMBUAT GRAFIK DARI DATABASE MYSQL DENGAN PHP DAN CHART.JS - www.malasngoding.com</title>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
</head>
<body>
	<style type="text/css">
	body{
		font-family: roboto;
	}
 
	table{
		margin: 0px auto;
	}
	</style>
 
 
	<center>
		<h2>MEMBUAT GRAFIK DARI DATABASE MYSQL DENGAN PHP DAN CHART.JS<br/>- www.malasngoding.com -</h2>
	</center>
 
 
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="myChart"></canvas>
	</div>
 
	<br/>
	<br/>
 
	<table border="1">
		<thead>
			<tr>
				<th>No</th>
				<th>Nama Barang</th>
				<th>Harga</th>
				<th>Kategori</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$no = 1;
			$data = mysqli_query($koneksi,"select * from products");
			while($d=mysqli_fetch_array($data)){
				?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $d['product_title']; ?></td>
					<td><?php echo $d['product_price']; ?></td>
					<td><?php echo $d['product_cat']; ?></td>
				</tr>
				<?php 
			}
			?>
		</tbody>
	</table>
 
 
	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: [
				<?php 
				$categories = mysqli_query($koneksi,"SELECT DISTINCT product_cat FROM products");
				while($cat=mysqli_fetch_array($categories)){
					echo "'" . $cat['product_cat'] . "',";
				}
				?>
				],
				datasets: [{
					label: '',
					data: [
					<?php 
					$categories = mysqli_query($koneksi,"SELECT DISTINCT product_cat FROM products");
					while($cat=mysqli_fetch_array($categories)){
						$count = mysqli_query($koneksi,"SELECT COUNT(*) as total FROM products WHERE product_cat='" . $cat['product_cat'] . "'");
						$total = mysqli_fetch_assoc($count)['total'];
						echo $total . ",";
					}
					?>
					],
					backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)',
					'rgba(255, 99, 132, 0.2)'
					],
					borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)',
					'rgba(255, 99, 132, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			},
			plugins: {
				tooltip: {
					callbacks: {
						label: function(context) {
							var label = context.dataset.label || '';
							if (label) {
								label += ': ';
							}
							label += context.parsed.y;
							return label;
						}
					}
				}
			}
		});
	</script>
</body>
</html>