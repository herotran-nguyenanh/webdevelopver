<?php

function index_index() {
	$data['category'] = model('category')->getAllBycategory();
	$count=10;
	$data['post'] = model('post')->getpostall($count);
	$data['template_file'] = 'home/index.php';
    render('layout.php', $data);
    //redirect('index.php' . (isLogged() ? '?c=post&m=list' : '?c=auth&m=login'));
}
