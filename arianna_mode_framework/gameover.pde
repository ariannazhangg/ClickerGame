void gameover() {
  background(red);
  theme.pause();
  theme.rewind();
  gameover.play();
  
  //gameover text
  fill(52, 51, 167);
  strokeWeight(0);
  stroke(0);
  rect(180, 300, 450, 200);
  fill(fontblue);
  textSize(39);
  textFont(sunflower);
  text("GAMEOVER", 400, 350);
  text("YOU LOSE", 400, 450);
  
  //high score text
  textSize(30);
  text("High Score: " + highscore, 400, 550);
  
if (highscore < score) {
    highscore = score;
  }
}

void gameoverClicks () {
  mode = INTRO;
  reset();
  gameover.rewind();
}
