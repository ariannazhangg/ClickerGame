//slider
void controlSlider () {
  if (mouseX > 100 && mouseX < 300 && mouseY > 275 && mouseY < 325) {
    sliderX = mouseX;
    sliderXX = mouseX;
    insliderXXX = mouseX;
  }
}

// reset
void reset () {
  lives = 3;
  score = 0;
  vx = random(-1, 5);
  vy = random(-1, 5);
  x = width/2;
  y = height/2;
}

// uwu onoff
void uwuOnOff() {
  if (uwuOn == false) {
    stroke(fontblue);
    strokeWeight (5);
  } else {
    stroke(darkblue);
    strokeWeight(5);
  }
}

//xd onoff
void xdOnOff() {
  if (xdOn == false) {
    stroke(fontblue);
    strokeWeight (5);
  } else {
    stroke(darkblue);
    strokeWeight(5);
  }
}
// tactile ==============================================================
//pause tactile
void pausetactile (int x, int y, int r)  {
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke (green);
  } else {
  stroke (darkblue);
  }
}

//start tactile
void starttactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(5);
    stroke(green);
    rect(250, 560, 300, 100);
  } else {
    stroke(fontblue);
  }
}

//start tactile
void optiontactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(5);
    stroke(green);
    rect(250, 560, 300, 100);
  } else {
    stroke(fontblue);
  }
}

//back tactile
void backtactile (int x, int y, int r)  {
   if (dist(x, y, mouseX, mouseY) < r) {
    strokeWeight(10);
    stroke (fontblue);
   } else {
     strokeWeight(10);
    stroke (darkblue);
   }
}

//slider tactile
void stactile (int x, int y, int r)  {
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke (fontblue);
  } else {
  stroke (darkblue);
  }
}

// uwu tactile
void uwutactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(0);
    strokeWeight(0);
    fill(fontblue);
  } else {
    fill(darkblue);
  }
}

//xd tactile
void xdtactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(fontblue);
  } else {
    fill(darkblue);
  }
}
// tactile end ============================================================
