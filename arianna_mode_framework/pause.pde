void pause() {
  theme.pause();
  fill(darkblue);
  textSize(52);
  text("PAUSE", 400, 400);
  fill(black);
  textSize(50);
  text("PAUSE", 400, 400);
}

void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
    theme.play();
  }
}
