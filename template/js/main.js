$(document).ready(function(){

$('.cell').on("click", function(){
	var d0=0;
	if ( d0 == ''  )  {d0 = new Date(); }
		var color = $(this).css("background-color");
		timer(true);
		switch (color) {
			case 'rgb(255, 255, 255)': $(this).css({"background-color":"#ff0000"}); break;
			case 'rgb(255, 0, 0)': $(this).css({"background-color":"#ffff00"}); break;
			case 'rgb(255, 255, 0)': $(this).css({"background-color":"#00ff00"}); break;
			case 'rgb(0, 255, 0)': $(this).css({"background-color":"#ffffff"}); break;			
		}							   
	});
		
});

function Select() {
	if ($('#name').val() == '') {alert("Введите имя!"); return false;}
	$('#savebut').addClass('disabled');
    $.ajax({
        type: "POST",
        url: "?action=select",
        data: "name="+$('#name').val(),
        success: function(response){
			if (response == '0') {
				SavePictures();
			} else {
				if (confirm("Рисунок с таким именем уже существует. \r\n Желаете перезаписать рисунок? \r\n")) { SavePictures('&rep=true'); } else {
					alert("Измените текущее название и повторите попытку!");
					$('#savebut').removeClass('disabled');}
			} 
        }	
	});		
}


function SavePictures(upd=''){
	if ($('#name').val() == '') {alert("Введите имя!"); return false;}
	$('#savebut').addClass('disabled');
	var tim = timer(false);
	var cell = '';	
	for (i=0; i<20; i++) {
		for (j=0; j<20; j++) {
			color=$('td.cell.cell'+j+'.row'+i).css("background-color");
			if (color != 'rgb(255, 255, 255)') {cell = 'td.cell.cell'+j+'.row'+i+'='+color+'|'+cell;}
		}
	}	
	if (cell.length > 0) {cell = cell.substring(0, cell.length - 1);}	
    $.ajax({
        type: "POST",
        url: "?action=savepictures",
        data: "name="+$('#name').val()+"&time="+tim+"&pic="+cell+upd,
        success: function(response){
            $('#response').html(response);
			$('#savebut').removeClass('disabled');
        }	
	});	
}
	
	
function timer(flag = false) {
	if (flag) {
		if (typeof d0 === 'undefined' || d0 == ''  )  {d0 = new Date(); }
	} else {
		if (typeof d0 === 'undefined') {d0 = new Date(); console.log('зашли');}
		d1 = new Date();
		//console.log(d1.getTime());
		//console.log(d0.getTime());
		var tim = d1.getTime() - d0.getTime();
		console.log(tim);
		return tim;
	}
}