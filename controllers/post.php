<?php
function post_list() {
    $data = array();
    $currentUser = isLogged();
    $data['sidebar'] = 1;
    $data['post'] = model('post')->getAllByUserId($currentUser['id']);
    $data['category'] = model('category')->getAllBycategory();
    $data['template_file'] = 'post/list.php';
    render('layout.php', $data);
}

function post_add() {
    $data = array();
    $data['sidebar'] = 1;
    if (isPostRequest()) {
        $target_dir = "uploads/";
        
        //folder chua hình
        $target_file = $target_dir . basename($_FILES["txtImages"]["name"]);
        $uploadOk = 1;
        $imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
        
        // Kiểm tra có phải file hình ảnh k
        $check = getimagesize($_FILES["txtImages"]["tmp_name"]);
        if ($check !== false) {
            $uploadOk = 1;
        } 
        else {
            echo "<script>alert('Không phải file hình ảnh')</script>";
            $uploadOk = 0;
        }
        
        // Check img size
        if ($_FILES["txtImages"]["size"] > 500000) {
            echo "<script>alert('Kích thước hình quá lớn')</script>";
            $uploadOk = 0;
        }
        
        // Check fomat
        if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
            echo "<script>alert('File được chọn không phải hình ảnh')</script>";
            $uploadOk = 0;
        }
        if ($uploadOk == 0) {
            echo "<script>alert('Xuất hiện lỗi')</script>";
        } 
        else {
            if (move_uploaded_file($_FILES["txtImages"]["tmp_name"], $target_file)) {
                $postData = postData();
                if ($postData['status'] == 'on') {
                    $postData['status'] = 1;
                } 
                else {
                    $postData['status'] = 0;
                    exit();
                }
                $currentUser = isLogged();
                $image['img_url'] = $target_file;
                $post_user = array('title' => $postData['txtName'], 'content' => $postData['txtContent'], 'category_id' => intval($postData['category']), 'description' => $postData['txtDescription'], 'status' => $postData['status'], 'images' => $image['img_url'],);
                if (model('post')->addToUser($post_user, intval($currentUser['id']))) {
                    
                    redirect('index.php?c=post&m=list');
                } 
                else {
                    echo "<script>alert('Có lỗi xảy ra,vui lòng kiểm tra lại')</script>";
                }
                
                
            } 
            else {
                echo "<script>alert('Lỗi quá trình upload hình')</script>";
            }
        }
    }
    
    $data['category'] = model('category')->getAllBycategory();
    $data['template_file'] = 'post/add.php';
    render('layout.php', $data);
}
function post_view() {
    $post['id'] = $_POST['key'];
    $id = $post['id'];
    $data['category'] = model('category')->getAllBycategory();
    if (model('comment')->getAllcommentbyIDpost($id)) {
        $data['comment'] = model('comment')->getAllcommentbyIDpost($id);
        // exit();
    }
    $data['post'] = model('post')->getallByIDpost($id);
    if (isPostRequest()) {
        $postData = postData();
        $post_cmt = array('email' => $postData['email'], 'post_id' => intval($id), 'content' => $postData['content'],);
        if (model('comment')->addCommentbyIDPost($post_cmt)) {
            echo "<script>alert('Comment thành công!')</script>";
            exit();
        } 
        else {
            echo "<script>alert('Comment không thành công!')</script>";
            exit();
        }
         exit();
    }
    $data['template_file'] = 'post/view.php';
    render('layout.php', $data);
}
function post_home() {
    $cateid = $_GET['key'];
    
}
function post_delete() {
    $postid = $_GET['key'];
    if ($data['rs'] = model('post')->deletebyID($postid)) {
        echo "<script>alert('Xoá thành công !')</script>";
        redirect('index.php?c=post&m=list');
    } 
    else {
        echo "<script>alert('Có lỗi !')</script>";
    }
}

