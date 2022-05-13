void intro() {
  gametheme.pause();
  theme.play();
  gameover.pause();
  textAlign(CENTER,CENTER);
  background(0, 0, 0);
  text("Brick_bricker.exe", width/2, 300);
  fill(71, 129, 10);
  rect(300, 500, 200, 100);
  fill(#FFEA00);
  textSize(50);
  text("start:", width/2, 530);
} 
void introClicks() { 
  if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<600) {
    mode=GAME;
    gametheme.rewind();
  }
}
