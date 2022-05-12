void pause() {
  background(225);

  fill(0);
  textSize(80);
  text("game pused", 400, 400);
  circle(100, 100, 100);
  textSize(80);
} 
void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100)<50) {
    mode=GAME;
  }
}
