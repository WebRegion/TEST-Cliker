<?php
class Controller
{
    private $model;
 
    public function __construct($model) {
        $this->model = $model;
    }

    public function paint() {
        $this->model->head = "Тут находится рисовалка :)";
		$this->model->code = '
		<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal" onclick=" $(\'#response\').html(\'\');">Сохранить рисунок</a>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Сохранение рисунка</h4>
			  </div>
			  <form class="form-horizontal" role="form">
			  <div class="modal-body">
				  <div class="form-group">
					<label for="name" class="col-sm-2 control-label">Название</label>
					<div class="col-sm-10">
					  <input type="text" class="form-control" id="name" placeholder="Название"  required required="required" pattern="|[a-z,\d, а-я,-=]{,255}|i">
					</div>
				  </div>
				  <div id="response"></div>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
				<button type="button" id="savebut" class="btn btn-primary" onclick="Select()">Сохранить</button>
			  </div>
			  </form>
			</div>
		  </div>
		</div>
		
		<table collspacing="0" cellpadding="0" border="0" class="paint-table">
		';
		$count = 20;
		for ($i=0; $i<$count; $i++) {
			$this->model->code .= '<tr class="row row'.$i.'">';
			for ($j=0; $j<$count; $j++) {
				$this->model->code .= '<td class=" cell cell'.$j.' row'.$i.'"></td>';
			}
			$this->model->code .= '</tr>';
		}
		$this->model->code .= '</table>';
    }
	
    public function listing() {
		$rows = $this->model->get_list();
		$this->model->code = '
		<table cellpadding="0" cellspacing="0" border="0" class="list" width="100%">
		<tr><th>Название картинки</th><th>Дата создания</th><th>Дата апдейта</th><th>Время потраченное на картинку</th><th>Управление картинкой</th></tr>
		';
		foreach ($rows as $row) {
			
			$this->model->code .= '<tr><td>'.$row['name'].'</td><td>'.$row['date_add'].'</td><td>'.$row['date_update'].'</td><td>'.
			sprintf('%02d:%02d:%02d:%02d', $row['time_edit']/3600000, ($row['time_edit'] % 3600000)/60000, ($row['time_edit'] % 60000) / 1000,  ($row['time_edit'] % 1000)) .'</td><td>
			<a href="?action=load&id='.$row['id'].'" class="btn btn-primary btn-xs">Загрузить картинку</a>
			<a href="?action=del&id='.$row['id'].'" class="btn btn-warning btn-xs">Удалить картинку</a>
			</td></tr>';
		}
		$this->model->code .= '</table>';
        $this->model->head = "Тут список картинок в БД";
    }


    public function savepictures() {
		if (isset($_POST) && trim($_POST['name'])<>'' && trim($_POST['time'])<>'' ) {
			if ($_POST['rep']=='true') {
				( $this->model->rep_table( ['name'=>trim($_POST['name']),'time'=>trim($_POST['time']),'pic'=>trim($_POST['pic'])] ) ) ? $this->model->code = 'Рисунок сохранен' : $this->model->code = 'Ошибка';
			}
			if ($_POST['upd']=='true' && trim($_POST['oldtime']) <> '') {
				$time = $_POST['oldtime']+$_POST['time'];
				( $this->model->upd_table( ['name'=>trim($_POST['name']),'time'=>$time,'pic'=>trim($_POST['pic'])] ) ) ? $this->model->code = 'Рисунок сохранен' : $this->model->code = 'Ошибка';
			} else {
				( $this->model->ins_table( ['name'=>trim($_POST['name']),'time'=>trim($_POST['time']),'pic'=>trim($_POST['pic'])] ) ) ? $this->model->code = 'Рисунок сохранен' : $this->model->code = 'Ошибка'; }
		}
	}

	public function select() {
		if (isset($_POST) && trim($_POST['name'])<>'') {
			echo $this->model->select(trim($_POST['name']));
		}
	}
	
	
	public function load() {
		if (isset($_GET['id']) && trim($_GET['id'])<>'') {	
			$row = $this->model->loading($_GET['id']);
			$this->model->head = "Рисунок ".$row[0]['name'];
			$this->model->code = '
			<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal" onclick=" $(\'#response\').html(\'\');">Сохранить рисунок</a>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Сохранение рисунка</h4>
				  </div>
				  <form class="form-horizontal" role="form">
				  <div class="modal-body">
					  <div class="form-group">
						<label for="name" class="col-sm-2 control-label">Название</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" id="name" placeholder="Название" value="'.$row[0]['name'].'" disabled required required="required">
						</div>
					  </div>
					  <div id="response"></div>
				  </div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
					<button type="button" id="savebut" class="btn btn-primary" onclick="SavePictures(\'&upd=true&oldtime='.$row[0]['time_edit'].'\');">Сохранить</button>
				  </div>
				  </form>
				</div>
			  </div>
			</div>
			
			<table collspacing="0" cellpadding="0" border="0" class="paint-table">
			';
			$pic = explode("|",$row[0]['pictures']);
			$count = 20;
			for ($i=0; $i<$count; $i++) {
				$this->model->code .= '<tr class="row row'.$i.'">';
				for ($j=0; $j<$count; $j++) {
					$this->model->code .= '<td class=" cell cell'.$j.' row'.$i.'"></td>';
				}
				$this->model->code .= '</tr>';
			}
			$this->model->code .= '</table>
			<style type="text/css">
			';
			foreach ($pic as $key=>$val) {
				$elem = explode("=",$val);
				$this->model->code .= $elem[0].' {background-color:'.$elem[1].'}
				';
			}
			$this->model->code .= '	
			</style>
			';
		}
	}
	
	public function del() {
		if (isset($_GET['id']) && trim($_GET['id'])<>'') {
			( $this->model->delet($_GET['id']) ) ? header('Location: '.$_SERVER['HTTP_X_FORWARDED_PROTO'].'://'.$_SERVER['HTTP_HOST'].'/?action=listing') : die("ERROR");
		}
	}
	
    
}