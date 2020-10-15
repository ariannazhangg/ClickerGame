void intro() {
  gameover.pause();
  theme.play();
  
  background(225, 171, 252);
  
  fill(fontblue);
  textSize(39);
  textFont(sunflower);
  text("Arianna's super cool (*^w^*)", 400, 230);
  text("clicker game ", 400, 300);
  
  //press to start button
  strokeWeight(5);
  fill(darkblue);
  starttactile(250, 400, 300, 100);
  rect(250, 400, 300, 100);
  fill(fontblue);
  textSize(30);
  text("press to start", 400, 445);
  
  //option button
  optiontactile(250, 560, 300, 100);
  fill(darkblue);
  rect(250, 560, 300, 100);
  fill(fontblue);
  text("option", 400, 610);
}

void introClicks () {
  //start button click
  if (mouseX > 250 && mouseX < 550 && mouseY > 400 && mouseY < 500)
  mode = GAME;
  
  //option button click
  if (mouseX > 250 && mouseX < 550 && mouseY > 560 && mouseY < 660)
  mode = OPTIONS;
}
