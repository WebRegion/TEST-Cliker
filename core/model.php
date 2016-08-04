<?php
class Model
{
    public $head;
	public $code;
	public $db;
 
    public function __construct(){
        $this->head = "Добро пожаловать в РИСОВАЛКУ :)";
		$this->db_con();
    }
	
	public function db_con() {
		require_once (__DIR__.'/../config/config.php');
		try {
			$db = new PDO('mysql:host='.$db_host.';dbname='.$db_name, $db_user, $db_pass);
		} catch (PDOException $e) { die('Подключение не удалось: ' . $e->getMessage()); }
		$db->exec("SET CHARACTER SET utf8");
		$this->db = $db;
	}
	
	public function ins_table($param = []) {
		if (!empty($param)) {
			    $sql = 'INSERT INTO `pictures`(`id`, `name`, `date_add`, `date_update`, `time_edit`, `is_del`, `pictures`) VALUES (uuid(),"'.$param['name'].'",now(),now(),"'.$param['time'].'",0, "'.$param['pic'].'")';
				$this->db->exec($sql);
				return true;
			} else return false;
	}
	
	public function rep_table($param = []) {
		if (!empty($param)) {
			    $sql = 'UPDATE `pictures` SET `date_add`=now(),`date_update`=now(),`time_edit`="'.$param['time'].'",`is_del`=0,`pictures`="'.$param['pic'].'" WHERE `is_del`=0 and  `name`="'.$param['name'].'"';
				$this->db->exec($sql);
				return true;
			} else return false;
	}

	public function upd_table($param = []) {
		if (!empty($param)) {
			    $sql = 'UPDATE `pictures` SET `date_update`=now(),`time_edit`="'.$param['time'].'",`is_del`=0,`pictures`="'.$param['pic'].'" WHERE `is_del`=0 and  `name`="'.$param['name'].'"';
				$this->db->exec($sql);
				return true;
			} else return false;
	}	
	
	public function select($text = '') {
		if ($text) {
			$stmt = $this->db->query('SELECT `id` FROM `pictures` WHERE  `is_del`=0 and `name`="'.$text.'"');
			$row_count = $stmt->rowCount();
			return $row_count;
		} else return false;
	}
	
	public function get_list() {
		$stmt = $this->db->query('SELECT * FROM `pictures` WHERE `is_del`=0');
		$stmt->setFetchMode(PDO::FETCH_ASSOC);
		while($row = $stmt->fetch())
		{
			$array[] = $row;
		}
		return $array;
	}
	
	
	public function loading($id="") {
		$stmt = $this->db->query('SELECT `pictures`,`time_edit`,`name`,`id` FROM `pictures` WHERE `is_del`=0 and `id` = "'.$id.'"');
		$stmt->setFetchMode(PDO::FETCH_ASSOC);
		while($row = $stmt->fetch())
		{
			$array[] = $row;
		}
		return $array;
	}

	public function delet($id = '') {
		if ($id) {
			    $sql = 'UPDATE `pictures` SET `is_del`=1 WHERE `id`="'.$id.'"';
				$this->db->exec($sql);
				return true;
			} else return false;
	}		
}