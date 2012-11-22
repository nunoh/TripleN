// Code for the animated beer

function hideBottle() {
    $("#ani").hide();
}

function move(obj, property, newPos, time) {
  var step = 40;  // ms from tick to tick
  var position = parseInt(eval(obj+".style."+property));
  var distance = parseInt(newPos) - position;
  if (property == "top") limit = screen.availHeight; // Limits to hide picture
  else limit = screen.availWidth;

  if (position < limit && position > 0) {  // While still in the screen
        var newTime = time - step;      // One step less
        var ticks = newTime / step;
        var speed = distance / ticks;
//console.log("Ticks: " + ticks + ", distance: " + distance + " -> speed: " + speed);

        if (Math.abs(distance) > 5) {
            position += speed;
            eval(obj + ".style." + property + " = '" + position + "px'");
            setTimeout(function () {
                move(obj, property, newPos, newTime)
            }, step);
      }
   }
}

function rotate(canvas, img, dir, time, deg) {  // time in miliseconds
    deg = typeof deg !== 'undefined' ? deg : 0; //  Default value for deg is 0

    var myCan = document.getElementById(canvas);
    var myImg = document.getElementById(img);
    var width = myImg.clientWidth;
    var height = myImg.clientHeight;

    var cContext = myCan.getContext('2d');
    var cw = myImg.width, ch = myImg.height, cx = 0, cy = 0;

    var degree_change = 90;
    if (dir == "left") degree_change = -90;
    
    if (time > 0) {
        deg += degree_change;
        if (deg == -90) deg = 270;
        else if (deg == 360) deg = 0;
        time -= 40;
        setTimeout("rotate('" + canvas + "', '" + img + "', '" + dir + "', " + time + ", " + deg + ")", 40);
    }
   
    //   Calculate new canvas size and x/y coorditates for image
    switch(deg){
        case 90:
            cw = myImg.height;
            ch = myImg.width;
            cy = myImg.height * (-1);
            break;
        case 180:
            cx = myImg.width * (-1);
            cy = myImg.height * (-1);
            break;
        case 270:
            cw = myImg.height;
            ch = myImg.width;
            cx = myImg.width * (-1);
            break;
    }

    //  Rotate image
    myCan.setAttribute('width', cw);
    myCan.setAttribute('height', ch);
    cContext.rotate(deg * Math.PI / 180);
    cContext.drawImage(myImg, cx, cy);
}

function animateTop() {
    var myBot = document.getElementById("ani_bottle").id;
    var myTop = document.getElementById("ani_top").id;

    move(myBot, "top", 300, 1000);

    setTimeout(function () {
        document.getElementById("sound").innerHTML = '<object data="sound/bottle_open.mp3"></object>';
    }, 1700);   // Opening sound

    setTimeout(function () {

        document.getElementById("ani_bottle_img").src = "img/anim_bottle.png";
        $("#sayhi").show(1000);
        // Starts the movement
        move(myTop, "left", 100, 1600);
        move(myTop, "top", 200, 300);
        rotate("ani_top_c", "top", "left", 1600);
        // Scheduled movements
        setTimeout(function () { move(myTop, "top", 1000, 1500); }, 500);

    }, 2400);
}

