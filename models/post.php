<?php
class Post extends Model
{
    public $table = 'post';
    public $primary_key = 'id';
    
    public function getAllByUserId($user_id) {
        $sql = "SELECT * FROM `{$this->table}`
                    WHERE `user_id` = '" . intval($user_id) . "' ";
        
        return db_get_all($sql);
    }
    
    public function addToUser($postData, $user_id) {
        $postData['datetime'] = date("Y-m-d H:i:s");
        $postData['user_id'] = $user_id;
        // var_dump($postData);die();
        return db_insert($this->table, $postData);
    }
    public function deletebyID($id) {
        $sql = "id = $id";
        return db_delete($this->table, $sql);
    }
    public function getallByIDpost($id) {
         $sql = "SELECT * FROM `{$this->table}`
                    WHERE `id` = '" . intval($id) . "' ";
        
        return db_get_all($sql);
    }
    public function getpostall($count){
         $sql = "SELECT * FROM `{$this->table}`
                    LIMIT $count ";
         return db_get_all($sql);

    }
    public function getAllpostbyCategoryID(){

        
    }
}
