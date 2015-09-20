<?php

class User extends Model {
    public $table = 'user';
    public $primary_key = 'id';
    
    public function authLogin($postData) {
        $user = static::getOneBy($postData['username'], 'username');
        
        if ($user && $user['password'] == md5($postData['password'])) {
            unset($user['password']);
            $_SESSION['logged'] = $user;
            return $user;
        }
        
        return false;
    }
    
    public function authRegister($postData) {
        $user = static::getOneBy($postData['username'], 'username');
        if ($user) {
            return false;
        } else {
            $postData['password'] = md5($postData['password']);
            $user_id = db_insert($this->table, $postData);
            unset($postData['password']);
            $postData['id'] = $user_id;
            $_SESSION['logged'] = $postData;
            
            return true;
        }
    }
    
    public function authLogout() {
        unset($_SESSION['logged']);
        session_destroy();
    }
}
