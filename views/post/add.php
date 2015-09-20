<h2 class="title"><span>Thêm bài viết</span> &nbsp;</h2>
<form action="" id="frmUser" name="frmUser" method="post" enctype="multipart/form-data">
    <div class="rows_register editors">
        <label style="line-height: 20px;margin-top: 0;">&nbsp;</label>
        ( <font color="#FF0000">*</font> ) Bạn bắt buộc phải nhập.
        <div class="clear"></div>
        <label>Tiêu đề :<span>*</span></label>
        <input type="text" name="txtName" id="txtName" class="txtRegiter txtTitle">
        <div class="clear"></div>
        <label>Nội dung mô tả ngắn :<span>*</span></label>
        <input type="text" name="txtDescription" id="txtDescription" class="txtRegiter txtTitle">
        <div class="clear"></div>
        <lable style="margin-top:35px;">Danh mục :</lable>
        <div class="">
          <select name="category">
            <?php foreach ($category as $ca) { ?>
              <option value="<?php echo $ca['id'] ?>"><?php echo $ca['name'] ?></option>
           <?php } ?>
          </select>
        </div>
        <label>Trạng Thái :<span>*</span></label>
       <div>
          <input type="checkbox" name="status" />Kích hoạt
       </div>
       <br>
        <div class="clear"></div>
        <label>Nội dung :<span>*</span></label>
        <div style="width:620px;margin-top:10px;"><textarea name="txtContent" id="txtContent" style="width:100%;height:450px;" rows="5" cols=""></textarea></div>
        <div class="clear"></div>
        <label style="margin-top:35px;">Hình đại diện:</label>
        <input type="file" name="txtImages" class="txtFile" id="txtImages" style="margin-top:10px " />
        <div class="clear"></div>
    </div>
  	<div class="rows_register" style="border: none; margin-top: 10px;">
  		<p style="">
  			<input type="submit" value="Thêm" class="btnRegister">
         <input type="reset" value="Huỷ" class="btnRegister">
  		</p>
  		<div class="clear"></div>
  	</div>
</form>
<div class="clear"></div>
<script type="text/javascript" src="/styles/ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'txtContent' );
</script>