<div class="content-post" style="width=500px">
	<?php foreach($post as $p ) { ?>
		<h2><?php echo $p['title']; ?></h2><p><?php echo $p['datetime']; ?></p>
		<span><?php echo $p['description']; ?></span>
		<p><?php echo $p['content']; ?></p><br>
		
	<?php } 

	 ?>
</div>   
<div class="content-comment">
	<?php if (isset($comment)) { ?>
	<b>Bình Luận nổi bật:</b><br />
	<?php foreach ($comment as $cmt) { ?>
            <b>Email :</b><i><?php echo $cmt['email'] ?> </i><br /><i>Ngày: <?php echo $cmt['datetime'] ?></i><br />
            <?php echo $cmt['content'] ?><br /><br />
        <?php } } ?>

</div>
<div class="comment">

   <form method="POST" action="" name="cmt">
        <table border="0px">
		<tr>
		<td>Email: </td>
		<td><input type="email" name="email" value=""></td>
		</tr>
		<tr>
		<td>Content: </td>
        <td><textarea name="content" rows="5" cols="10"></textarea><td>
		</tr>
		<tr>
        <td colspan="2" align="right"><input type="submit" name="cmt" value="Comment"></td>
		</tr>
		</table>
</div>