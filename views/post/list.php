<h3>Quản lý dữ liệu cá nhân</h3>
<p>
    <a href="index.php?c=post&m=add" class="btn btn-primary">Thêm bài viết</a>
</p>
<table class="table table-bordered">
    <tr>
        <th>STT</th>
        <th>Tiêu đề bài viết</th>
        <th>Ngày Đăng</th>
        <th>Lượt xem</th>
        <th>Danh mục</th>
        <th>Thao tác</th>
    </tr>
    <?php
        $i = 0;
        $total = 0;
        foreach ($post as $p):
        $i++;
        $total += intval($p['view']);
    ?>
    <tr>
        <td><?php echo $i; ?></td>
        <td><a href="index.php?c=post&m=view&key=<?php echo $p['id'] ?>" ><?php echo $p['title']; ?></a></td>
        <td><?php echo $p['datetime']; ?></td>
        <td class="text-right"><?php echo number_format($p['view'], 0, ',', '.'); ?></td>
        <?php foreach ($category as $cat) {  ?>
           <?php if($p['category_id'] == $cat['id']) { ?>
            <td><?php echo $cat['name'] ?></td>
        <td>
                <a href="index.php?c=post&m=delete&key=<?php echo $p['id'] ?>">Xoá</a> |||
                <a href="index.php?c=post&m=update&key=<?php echo $p['id'] ?>">Cập Nhật</a>
        </td>
        <?php } } ?>
    </tr>
    <?php        
        endforeach;
        if ($i):
    ?>
    </tr>
    <?php else: ?>
    <tr>
        <td colspan="4" class="text-center"><strong>Chưa có bài viết nào.</strong></td>
    </tr>
    <?php endif; ?>
</table>