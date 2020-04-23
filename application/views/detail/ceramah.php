<div class="row">
<div class="col-xs-12">
	<table class="table table-bordered table-hover" style="border-color: #eee; display: block; width: 100%!important; overflow-x: auto;">
        <thead>
        	<tr>
	            <th style="width: 2%">#</th>
                <th>Tanggal</th>
                <th>Jam</th>
	            <th>Channel TV</th>
	            <th>Nama Penceramah</th>
	            <th>Topik</th>
            </tr>
        </thead>
        <tbody>	
            <?php 
            $num = 1;
            foreach ($list_ceramah as $key => $value): ?>
            <tr>
                <td><?=$num++; ?></td>
                <td><?=$value['tgl']; ?></td>
                <td><?=$value['jam']; ?></td>
                <td><?=$value['chanel']; ?></td>
                <td><?=$value['nama_penceramah']; ?></td>
                <td><?=$value['topik']; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
</div>