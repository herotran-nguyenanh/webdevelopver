<h2>Bài VIẾT MỚI NHẤT</h2>
<?php foreach ($post as $post) {
?>
<div class="row" style="margin-top:10px;">
    <div class="col-md-2">
        <a href="index.php?c=post&m=view&key=<?php echo $post['id'] ?>">
            <img class="img-responsive" src="<?php echo $post['images'] ?>">
        </a>
    </div>
    <div class="col-md-10">
        <h3><?php echo $post['title'] ?></h3>
        <span class="post-date" itemprop="datePublished"><i class="fa fa-clock-o"></i><?php echo $post['datetime']?>
        </span>
        <p style="margin-top:5px;"><?php echo $post['description'] ?></p>
        <a class="btn btn-primary" href="index.php?c=post&m=view&key=<?php echo $post['id'] ?>">Xem Bài <span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
</div>
  <div class="clear"></div>

<?php } ?>

<!-- Pagination -->
<div class="row text-center">
    <div class="col-lg-12">
        <ul class="pagination">
            <li>
                <a href="#">&laquo;</a>
            </li>
            <li class="active">
                <a href="#">1</a>
            </li>
            <li>
                <a href="#">2</a>
            </li>
            <li>
                <a href="#">3</a>
            </li>
            <li>
                <a href="#">4</a>
            </li>
            <li>
                <a href="#">5</a>
            </li>
            <li>
                <a href="#">&raquo;</a>
            </li>
        </ul>
    </div>
</div>