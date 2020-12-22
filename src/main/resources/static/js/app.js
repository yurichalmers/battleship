var divItems = document.getElementsByClassName("grid");

var currentColor = "red";

function changeColor(item) {
	item.style.backgroundColor = 'red';
	if (currentColor == "red"){
		item.style.backgroundColor="gray";
		currentColor="gray";
	} else {
		item.style.backgroundColor = "red";
		currentColor = "red";
	}
	
}
function clear() {
	for (var i = 0; i<divItems.length; i++){
		var item = divItems[i];
		item.style.backgroundColor = 'gray';
	}
}



function allowDrop(ev) {
	ev.preventDefault();
}

function drag(ev) {
 	ev.dataTransfer.setData("div", ev.target.id);
	console.log(ev.dataTransfer.getData());
}

function drop(ev) {
	ev.preventDefault();
 	var data = ev.dataTransfer.getData("div");
 	ev.target.appendChild(document.getElementById(data));
	console.log("hi");
	
}