<div class="row">
<div class="col-xs-12">
	<table class="table table-bordered table-hover" style="border-color: #eee; display: block; width: 100%!important; overflow-x: auto;">
        <thead>
        	<tr>
	            <th style="width: 2%">#</th>
                <th>Tanggal</th>
                <th>Surat</th>
                <th>Mulai Ayat</th>
	            <th>Selesai Ayat</th>
            </tr>
        </thead>
        <tbody>	
            <?php 
            $num = 1;
            foreach ($list_tadarus as $key => $value): ?>
            <tr>
                <td><?=$num++; ?></td>
                <td><?=$value['tgl']; ?></td>
                <td><?=$value['name']; ?></td>
                <td><?=$value['dari']; ?></td>
                <td><?=$value['sampai']; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
</div>