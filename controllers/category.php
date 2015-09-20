<?php

function category_list() {
    $data = array();
    $currentUser = isLogged();
    $data['sidebar'] = 1;
    $data['category'] = model('category')->getAllBycategoryId();
    $data['template_file'] = 'category/list.php';
    render('layout.php', $data);
   }

