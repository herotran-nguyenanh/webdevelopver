<?php
    
function auth_login() {
    $data = array();
    
    if (isPostRequest()) {
        $postData = postData();
        if (model('user')->authLogin($postData)) {
            redirect('index.php?c=post&m=list');
        } else {
            $data['error'] = 'Login failed ! Please try again !';
        }
    }
    $data['category'] = model('category')->getAllBycategory();
    $data['template_file'] = 'auth/login.php';
    render('layout.php', $data);
}

function auth_register() {
    $data = array();
    $data['template_file'] = 'auth/register.php';
    
    if (isPostRequest()) {
        $postData = postData();
        if($postData['status']=='on'){
            $postData['status']=1;
        }
        else{
            $postData['status'] =0;
            exit();
        }
        if (model('user')->authRegister($postData)) {
            redirect('index.php?c=post&m=list');
        } else {
            $data['error'] = 'Register failed ! Email exists ! Please try again !';
            $data['postData'] = $postData;
        }
    }
     $data['category'] = model('category')->getAllBycategory();
    render('layout.php', $data);
}

function auth_logout() {
    model('user')->authLogout();
    redirect('index.php?c=index&m=index');
}