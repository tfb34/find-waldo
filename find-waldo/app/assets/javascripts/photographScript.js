function createPhotographGrid(){
	let elem;
	if(elem=document.getElementById('photograph-wrapper')){
		// create a table and add it to this element
		console.log('hellooooo you have chosen a photograph');
		console.log(elem);
		
	}else{
		console.log("you are on the main page");
	}

}

function getMousePosition(event){
    //return [event.clientX, event.clientY];
    let xOffset = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft);
    let yOffset = Math.max(document.documentElement.scrollTop,document.body.scrollTop);
    console.log(event.clientX+" "+event.clientY);
    let x = event.clientX+xOffset;
    let y = event.clientY+yOffset
    console.log(x+" "+y);
    let menu = document.getElementsByClassName('choose-character-menu')[0];

    if(menu.style.visibility === "visible"){
        hideMenu(menu);
    }else{
        showMenu(menu, x, y);
    }
    //alert(event.clientX+" "+x+" "+event.clientY+" "+y);
}

function hideMenu(menu){
    menu.style.visibility = "hidden";
    console.log("hide");
}

function showMenu(menu, x, y){// menu is 
    console.log("show");
    menu.style.visibility = "visible";
    console.log(x);
    console.log(y+"px");
    menu.style.left = x+"px";
    menu.style.top = (y-200)+"px";
    document.getElementById('x').value = x;
    document.getElementById('y').value = y;
    //menu.setAttribute("id", )
    console.log(menu.style.top);
    //where? top, left, absolute position, photo wrapper relative
}

function setupPhotograph(){
    console.log("stuff");
    let photo;
    if(photo = document.getElementById('photograph')){
        photo.addEventListener("click", getMousePosition);
    }else{
        console.log("no photo");
    }
}
// this won't work , you have to check in server.
// pass form with hidden values and character id


window.onload = function(){
	setupPhotograph()
}
