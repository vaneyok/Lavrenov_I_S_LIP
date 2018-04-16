function show_result(data){ 
 	let result = document.getElementById('result');
	msg = document.createElement('div');
	if (data.message == 'ok'){
		let table = document.createElement('table');
 		table.border = 1;
		let trnew = document.createElement('tr'); 
		let th1 = document.createElement('th'); th1.innerText = "Номер";
		let th2 = document.createElement('th'); th2.innerText = "Полученное число";
 		table.style.textAlign = "center";
		
		trnew.appendChild(th1);
		trnew.appendChild(th2);
		table.appendChild(trnew);
		let tdnew1 = document.createElement('td');
		let tdnew2 = document.createElement('td');
		data.values.forEach(function(value, index){
			tdnew1 = document.createElement("td"); 
			tdnew1.innerText = (index + 1).toString();
			tdnew2 = document.createElement("td"); 
			tdnew2.innerText = value.toString();
			let trnew = document.createElement('tr');	
			trnew.appendChild(tdnew1);
			trnew.appendChild(tdnew2);
			table.appendChild(trnew);
		})

		result.appendChild(table);
		msg.innerHTML = '<br>' + 'Количество чисел Армстронга для чисел с ' + data.number.toString() + ' цифрами(-ой): ' + data.values.length.toString();
	}
	else{
		if (data.message == 'not_found')
			msg.innerText = 'Для чисел с ' + data.number.toString() + ' цифрами нет чисел Армстронга';
		else{
			if (data.message == 'blank'){
				msg.innerText = 'Заполните пустое поле';
			}
			if (data.message == 'nan'){
				msg.innerText = 'Введите числовое значение';
			}
		}
	}
	result.appendChild(msg);
}

$(document).ready(function() {
  $('#lr9_form').bind("ajax:success", function (xrs, data, status) {
  		$('#table').empty();
  		$('#result').empty();
        show_result(xrs.detail[0]);
    })
});