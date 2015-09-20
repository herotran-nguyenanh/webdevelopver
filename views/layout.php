<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Blog tin tức tổng hợp PHP MVC</title>
  <link rel="stylesheet" href="./styles/css/bootstrap.min.css">
  <link rel="stylesheet" href="./styles/css/styles.css">
  <script type="text/javascript" src="./styles/js/jquery.js"></script>
</head>
<body>
  <div class='container'>
    <nav class='navbar navbar-inverse'>
      <?php include ROOT . DS . 'views' . DS . 'blocks' . DS . 'menu.php'; ?>
    </nav>
    <div class='container'>
      <div class='span9 main'>
        <?php include ROOT . DS . 'views' . DS . $template_file; ?>
      </div>
      <div class='span3 sidebar'>
        <?php if(isset($sidebar)) {
         include ROOT . DS . 'views' . DS . 'blocks' . DS . 'sidebar.php';
       } ?>
     </div>
   </div>
 </div>
</body>
<footer>
 <div class="span12 navbar text-center">
  Sản xuất năm 2015 ^.^ <a href="">Maria olala tại Japan</a>
 </div>
</html>