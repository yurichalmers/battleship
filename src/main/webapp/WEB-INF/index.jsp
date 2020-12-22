<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/app.js"></script>
            <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
        
<meta charset="UTF-8">
<title>Battleship</title>
</head>
<body>
	<h1>Howdy</h1>
	<div class = "container">
		<div class = "opponentGrid">
			<div class = "row" >
				<c:forTokens items = " ,1,2,3,4,5,6,7,8,9,10" delims="," var="column">
					<div class="coordinate"><h2><c:out value = "${column}"/></h2></div>
				</c:forTokens>
			</div>
			<div class = "row"  ondrop="drop(event)" ondragover="allowDrop(event)" >
				<div class="coordinate"><h2>A</h2></div>
				<c:forEach items="${rowCoordinatesA}" var = "A">
					<div class="grid" id="${A}" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>B</h2></div>
				<c:forEach items="${rowCoordinatesB}" var = "B">
					<div class="grid" id="${B}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>C</h2></div>
				<c:forEach items="${rowCoordinatesC}" var = "C">
					<div class="grid" id="${C}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>D</h2></div>
				<c:forEach items="${rowCoordinatesD}" var = "D">
					<div class="grid" id="${D}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>E</h2></div>
				<c:forEach items="${rowCoordinatesE}" var = "E">
					<div class="grid" id="${E}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>F</h2></div>
				<c:forEach items="${rowCoordinatesF}" var = "F">
					<div class="grid" id="${F}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>G</h2></div>
				<c:forEach items="${rowCoordinatesG}" var = "G">
					<div class="grid" id="${G}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>H</h2></div>
				<c:forEach items="${rowCoordinatesH}" var = "H">
					<div class="grid" id="${H}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>I</h2></div>
				<c:forEach items="${rowCoordinatesI}" var = "I">
					<div class="grid" id="${I}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
			<div class = "row">
				<div class="coordinate"><h2>J</h2></div>
				<c:forEach items="${rowCoordinatesJ}" var = "J">
					<div class="grid" id="${J}" ondrop="drop(event)" ondragover="allowDrop(event)" onclick=changeColor(this)></div>
				</c:forEach>
			</div>
		</div>
		<div class ="shipsContainer">
			<form>
				<div class="shipHouse" ondrop="drop(event)" ondragover="allowDrop(event)">
					<label for="carrier">Carrier</label>
					<img src="ship1.png" draggable="true" ondragstart="drag(event)" id="carrier" width=200px height=40px>
				</div>
				<div class = "shipHouse">
					<label for="battleship">Battleship</label>
					<img src="ship1.png" draggable="true" ondragstart="drag(event)" id="battleship" width=160x height= 40px>
				</div>
				<div class = "shipHouse">
					<label for="destroyer">Cruiser</label>
					<img src="ship1.png" draggable="true" ondragstart="drag(event)" id="destroyer" width=120px height= 40px>			
				</div>
				<div class = "shipHouse">
					<label for="submarine">Submarine</label>
					<img src="ship1.png" draggable="true" ondragstart="drag(event)" id="submarine" width=120px height= 40px>			
				</div>
				<div class = "shipHouse">
					<label for="patrolBoat">Patrol Boat</label>
					<img src="ship1.png" draggable="true" ondragstart="drag(event)" id="patrolBoat" width=80px height= 40px>			
				</div>
				<div class = "shipHouse">
					<label for="sampleBoat">Sample Boat</label>
					<div draggable="true" ondragstart="drag(event)" id="boat">
						<div class = "grid" id="boat"></div>
						<div class = "grid" id="boat"></div>
						<div class = "grid" id="boat"></div>
					</div>
				</div>
				<button>Done</button>
			</form>
		</div>





		</div>

</body>
</html>