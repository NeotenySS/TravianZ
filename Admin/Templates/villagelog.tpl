<?php
$id = $_GET['did'];
if(isset($id))
{
	?>
	<br /><br />
	<table id="profile">
		<thead>
		<tr>
				<th colspan="3" class="on"><a href="#"><?php echo $village['name']; ?></a>'s Build Log</th>
			</tr>
			<tr>
				<td class="on">#</td>
				<td>Event</td>
			</tr>
		</thead>
			<?php
				$sql = "SELECT * FROM ".TB_PREFIX."build_log WHERE wid = ".(int) $_GET['did']."";
				$result = mysqli_query($GLOBALS["link"], $sql);
				while($row = mysqli_fetch_assoc($result))
				{
					$j++;
					echo '
					<tr>
						<td class="on">'.$j.'</td>
						<td>'.$row['log'].'</td>
					</tr>';
				}
			?>
		</thead>
	</table><?php
}
else
{
	include("404.tpl");
}
?>