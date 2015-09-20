<?php

class Comment extends Model {
    public $table = 'comment';
    public $primary_key = 'id';
    
    //get all cmt by id post
    public function getAllcommentbyIDpost($id) {
        $sql = "SELECT * FROM `{$this->table}`
                    WHERE `post_id` = '" . intval($id) ."' ";
        return db_get_all($sql);
    }
    //add cmt
    public function addCommentbyIDPost($post_cmt){
          return db_insert($this->table, $post_cmt);
    }
}
