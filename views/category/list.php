<h3>Quản lý dữ liệu cá nhân</h3>
<p>
    <a href="index.php?c=category&m=add" class="btn btn-primary">Thêm chuyên mục</a>
</p>
<table class="table table-bordered">
    <tr>
        <th>STT</th>
        <th>Tên chuyên mục</th>
        <th>Trang Thái</th>
        <th>Thao tác</th>
    </tr>
     <?php foreach ($category as $t) { ?>
    <tr>
           <td><?php echo $t['id'] ?></td>
           <td><?php echo $t['name'] ?></td> 
           <td><?php 
                    if($t['status']==1){
                        echo "Kích hoạt";
                    }
                    else{
                        echo "Ẩn";
                    }

            ?></td> 
            <td>
                <a href="#">Xoá</a> |||
                <a href="#">Cập Nhật</a>
            </td>
    </tr>
     <?php } ?>
</table>