void game() {
  background(171, 230, 252);
  
  //pause button
  stroke(52, 51, 167);
  fill(white);
  pausetactile(100, 100, 50);
  circle(100, 100, 100);
  fill(black);
  stroke(10);
  line(85, 85, 85, 115);
  line(115, 85, 115, 115);
  
  //score text
  fill(black);
  stroke(0);
  textSize(28);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  // show target
  strokeWeight(5);
  fill(white);
  image(face, x, y, sliderXX, sliderXX);
  
  //moving target
  x = x + vx;
  y = y + vy;
  
  //bouncing target
  if (x < d || x > width-sliderX) {
    vx = vx * -1;
  }
  if (y < d || y > height-sliderX) {
    vy = vy * -1;
  }
}

void gameClicks () {
  if (dist (mouseX, mouseY, x, y) < sliderXX) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  }

}
