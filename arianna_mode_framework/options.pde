void options () {
  background(green);
  theme.pause();
  option.play();
  
  //back button
  stroke(52, 51, 167);
  fill(white);
  backtactile(100, 100, 50);
  circle(100, 100, 100);
  fill(black);
  textSize(40);
  strokeWeight(30);
  text("<--", 100, 100);
  
  strokeWeight(0);
  
  //indicator
  fill(darkblue);
  rect(410, 105, sliderXX, sliderXX);
  image(face, 410, 105, sliderXX, sliderXX);
  
  //slider
  fill(darkblue);
  stroke(darkblue);
  strokeWeight(thickness);
  thickness = map(sliderX, 100, 300, 2, 30);
  line (100, 300, 300, 300);
  stactile(sliderXX, 300, 30);
  circle(sliderX, 300, 10);
  
  //uwu button
  fill(white);
  uwutactile(460, 450, 250, 250);
  uwuOnOff();
  rect(460, 450, 250, 250);
  image(uwu, 460, 450, 250, 250);
  
  //xd button
  xdtactile(100, 450, 250, 250);
  xdOnOff();
  rect(100, 450, 250, 250);
  image(xd, 100, 450, 250, 250);
  
 
}

void optionsClicks () {
  // back click
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = INTRO;
    theme.rewind();
    option.pause();
    option.rewind();
  }
    
    //uwu click
    if (mouseX > 460 && mouseX < 680 && mouseY > 450 && mouseY < 700){
      face = uwu;
    }
    //xd click
    if (mouseX > 100 && mouseX < 350 && mouseY > 450 && mouseY < 700){
      face = xd;
    }
}
