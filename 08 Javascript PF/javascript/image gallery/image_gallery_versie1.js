var versie = " versie 1.0";

window.onload = function() {
	// versie info
	var eKop = document.getElementsByTagName('h1')[0];
	eKop.innerHTML += versie;
	
	var eImg = document.getElementById('plaatshouder');
	
	// nieuwe eventhandler voor alle hyperlinks in de menubalk
	//var eSidebar = document.querySelector('sidebar');
	//var eLinks = eSidebar.getElementsByTagName('a');
	var eLinks = document.querySelectorAll('sidebar a');
	console.log('sidebarLinks %s', eLinks.length);
	
	for (var i = 0; i < eLinks.length; i++) {
		eLinks[i].addEventListener('click', function(e) {
			e.preventDefault();
			toonFoto(this, eImg);
		})
	}
}

function toonFoto(eLink, eImg) {
	/*
	Wisselt de bron van het src attribuut van de img#beeld
	@ eLink, een hyperlink element
	@ eImg, plaatshouder img
	*/
	
	//console.log(eLink.href);
	eImg.src = eLink.href;
	var sInfo = eLink.getAttribute('title');
	var eInfo = document.getElementById('info');
	
	if (eInfo) {
		eInfo.innerHTML = sInfo;
	} else {
		eInfo = document.createElement('p');
		eInfo.id = "info";
		eInfo.innerHTML = sInfo;
		//eImg.parentNode.appendChild(eInfo);
		eImg.parentNode.insertBefore(eInfo, eImg.parentNode.firstChild);
	}	
}