

function getMousePosition(event){
    var posx = 0;
    var posy = 0;
    if (!event) var event = window.event;
    if (event.pageX || event.pageY)     {
        posx = event.pageX;
        posy = event.pageY;
    }
    else if (event.clientX || event.clientY)    {
        posx = event.clientX + document.body.scrollLeft
            + document.documentElement.scrollLeft;
        posy = event.clientY + document.body.scrollTop
            + document.documentElement.scrollTop;
    }

    console.log("posx: "+posx,"posy: "+posy);

    //return [event.clientX, event.clientY];
    let xOffset = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft);
    let yOffset = Math.max(document.documentElement.scrollTop,document.body.scrollTop);
    console.log("clientx:"+event.clientX+" "+"clientY"+event.clientY);
    let x = event.clientX+xOffset;
    let y = event.clientY+yOffset;
    console.log("offsetX: "+x+" "+"offsetY"+y);
    let x1 = event.clientX-xOffset;
    let y1 = event.clientY-yOffset;
    console.log("minus offset=> "+"x:"+x1+" y:"+y1);
    let menu = document.getElementsByClassName('choose-character-menu')[0];

    if(menu.style.visibility === "visible"){
        hideMenu(menu);
    }else{
        showMenu(menu, x, y, xOffset, yOffset);
    }
    //alert(event.clientX+" "+x+" "+event.clientY+" "+y);
}

function hideMenu(menu){
    menu.style.visibility = "hidden";
}

function showMenu(menu, x, y, xOffset, yOffset){// menu is 
    
    menu.style.visibility = "visible";
    menu.style.left = x+"px";
    menu.style.top = (y-200)+"px";
    document.getElementById('x').value = x;
    document.getElementById('y').value = y;
    //document.getElementById('offsetX').value = xOffset;
    //document.getElementById('offsetY').value = yOffset;
    //menu.setAttribute("id", )
    //where? top, left, absolute position, photo wrapper relative
}

function isFound(characterID){
    document.getElementById('character_id').value = characterID;
    let submitBtn = document.getElementById('submitBtn');
    submitBtn.click();
    //let form = document.getElementsByTagName('form')[0];

    //form.submit();
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
