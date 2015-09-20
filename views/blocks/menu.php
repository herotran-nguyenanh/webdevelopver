<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Nav -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
        </div>
        <!-- Nav collapse -->
        <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav">
                <?php foreach($category as $cate) { ?> 
                <li>
                    <a href="index.php?c=post&m=home&key=<?php echo $cate['id'] ?>"><?php echo $cate['name'] ?></a>
                </li>
                <?php } ?>
            </ul>
            <?php if ($logged = isLogged()): ?>
            <a href="index.php?c=auth&m=logout"><button class="btn btn-info navbar-btn">Logout</button></a>
            <?php else: ?>
            <div class="navbar-right">
                <a href="index.php?c=auth&m=login"><button class="btn btn-danger navbar-btn">Đăng Nhập</button></a>
                <a href="index.php?c=auth&m=register"><button class="btn btn-info navbar-btn">Đăng Ký</button></a>
            </div>
            <?php endif; ?>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- /Navigation -->