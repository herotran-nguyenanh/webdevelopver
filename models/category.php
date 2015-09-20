<?php

class Category extends Model {
    public $table = 'category';
    public $primary_key = 'id';
    
    public function getAllBycategory() {
        $sql = "SELECT * FROM `{$this->table}`
                    WHERE `status` = 1 ";
        
        return db_get_all($sql);
    }
    
    // public function addToUser($postData, $user_id) {
    //     $postData['paid_day'] = date("Y-m-d H:i:s");
    //     $postData['user_id'] = $user_id;
        
    //     return db_insert($this->table, $postData);
    // }
}
