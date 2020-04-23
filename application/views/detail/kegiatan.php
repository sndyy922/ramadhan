<style type="text/css">
	.table-bordered tr td{
		border-color: #ddd!important;
	}	
	.table-bordered tr th{
		background-color: #eee!important;
		border-color: white!important;
	}
	.ico-haid{
		background-color: #eb4d4b;
		color: white;
		padding: 5px 10px;
		border-radius: 10px;
	}
	.ico-check{
		color:#16a085;
		font-size: 15px;
		font-weight: bold;
	}	
</style>

<div class="row">
<div class="col-xs-12">
	<table class="table table-bordered table-hover" style="border-color: #eee; display: block; width: 100%!important; overflow-x: auto;">
        <thead>
        	<tr>
	            <th style="width: 2%">#</th>
	            <th>Tanggal</th>
        		<?php foreach ($list_activity as $key => $value): ?>
	            <th style="text-align: center!important; width: 7%;"><?=$value['name'] ?></th>
            	<?php endforeach; ?>
            </tr>
        </thead>
        <tbody>	
    		<?php 
    			$num = 1;
    			$count = count($list_activity);
    			$total = [];

    			foreach ($list_activity as $k => $v){
    				$total[$v['name']]['do'] = 0;
    				$total[$v['name']]['not'] = 0;
    				$total[$v['name']]['haid'] = 0;
    			}

				foreach ($list_activity_per_date as $key => $value): 
    		?>
	            <tr>
	              <td><?=$num++; ?></td>
	              <td><?=$value['waktu'] ?></td>
    			  <?php 
			  	  
			  	  foreach ($list_activity as $k => $v): ?>
	              <td align="center">
              		<?php
              			switch ($value[$v['name']]) {
              				case '1':
              					echo '<span class="ico-check">✓</span>';
              					$total[$v['name']]['do'] += 1;
              					break;
          					case '2':
          						echo '<span class="ico-haid">Haid</span>';
              					$total[$v['name']]['haid'] += 1;
              					break;
              				default:
              					echo '';
              					$total[$v['name']]['not'] += 1;
              					break;
              			}
              		?>	
              	  </td>
            	  <?php endforeach; ?>
	            </tr>
        	<?php endforeach;
        	?>
        	<tr>
        		<td colspan="<?=$count+2 ?>" style="font-weight: bold; background: #eee">Total</td>
        	</tr>
        	<tr>
        		<td style="color: black;" colspan="2">Menjalankan</td>
        		<?php foreach ($list_activity as $key => $value): ?>
	            	<td style="text-align: center!important; width: 80px;"><?=$total[$value['name']]['do']; ?></td>
            	<?php endforeach; ?>
        	</tr>
        	<tr>
        		<td style="color: black;" colspan="2">Meninggalkan</td>
        		<?php foreach ($list_activity as $key => $value): ?>
	            	<td style="text-align: center!important; width: 80px;"><?=$total[$value['name']]['not']; ?></td>
            	<?php endforeach; ?>
        	</tr>
        	<tr>
        		<td style="background-color: #eb4d4b; color:white;" colspan="2">Haid</td>
        		<?php foreach ($list_activity as $key => $value): ?>
	            	<td style="text-align: center!important; width: 80px;"><?=$total[$value['name']]['haid']; ?></td>
            	<?php endforeach; ?>
        	</tr>
        </tbody>
    </table>
</div>
</div>