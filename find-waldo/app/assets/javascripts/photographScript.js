

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
}

function isFound(characterID){
    document.getElementById('character_id').value = characterID;
    let submitBtn = document.getElementById('submitBtn');
    submitBtn.click();
    //let form = document.getElementsByTagName('form')[0];

    //form.submit();
}
function disableGame(){
    let cover = document.getElementById('cover-photograph');
    cover.style.display = "block";
    //show time now in console.log
}

// changes seconds to string
function getScore(duration){//sec
    let hrs = parseInt(duration/3600);
    duration -= hrs*3600;
    let mins = parseInt(duration/60);
    duration -= mins*60;

    let score = hrs+":"+mins+":"+parseInt(duration);
    console.log(score);
    return score;
    //console.log("hrs: "+hrs+" mins: "+mins+" secs: "+duration);

}

function getScoreStr(duration){
    let hrs = parseInt(duration/3600);
    duration -= hrs*3600;
    let mins = parseInt(duration/60);
    duration -= mins*60;
    let str='';
    console.log(hrs);
    if(hrs){
        str = timeToStr(str,'hr',hrs);
    }
    if(mins){
        str = timeToStr(str,'min',mins);
    }
    if(duration){
        str = timeToStr(str,'sec',parseInt(duration));
    }
    return str;
}

function timeToStr(str, noun, value){
    if(value>1){
        str+=value+' '+noun+'s ';
    }else{
        str+=value+' '+noun+' ';
    }
    return str;
}

function renderPlayerForm(duration){
    //let endTime = new Date().getTime();
    // is endTime greater than the top ten
    //let duration = (endTime - startTime)/1000;
   // let scoreStr = getScore(duration);
    document.getElementById('player-form').style.display = "block";
    document.getElementById('playerScore').innerHTML=getScoreStr(duration);
    document.getElementById('user_score').value = duration;


}

function renderCongrats(duration){
    let congratsWrapper = document.getElementById('congrats-wrapper');
    congratsWrapper.style.display = "block";
    document.getElementById('score').innerHTML = getScoreStr(duration);
}

function enableGame(){
    let cover = document.getElementById('cover-photograph');
    cover.style.display = "none";
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
let startTime;

window.onload = loadPage;

function loadPage(){
	setupPhotograph();
    startTime = new Date().getTime();
}
