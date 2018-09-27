window.onload = function() {
	var eHoofdKnop = document.getElementById('hoofdknop');
	
	eHoofdKnop.onclick = function() {
		var eScreens = document.querySelectorAll('img.screenshot');
		var screensAreHidden = false;
		
		for (var i = 0; i < eScreens.length; i++) {
			screensAreHidden = eScreens[i].classList.toggle('hidden');
		}
		
		if (screensAreHidden) {
			this.innerHTML = "Alle schermen tonen";
		} else {
			this.innerHTML = "Alle schermen verbergen";
		}
	}
}

function plaatsVerbergKnoppen() {
	
}