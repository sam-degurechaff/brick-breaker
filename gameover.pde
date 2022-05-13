void gameover() {  
  gametheme.pause();
  //gameover.rewind();
  gameover.play();
  background(225);
  textSize(50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("click any where to restart", width/2, 300);
}
void gameoverClicks() {  
  mode=INTRO;
  lives=3;
  score=0;
  timer=0;
  i=0;
  alive[i]=true;
  setup();
  if (mode==INTRO) {
    gameover.pause();
  }}{}{}{}{}{}{}{}{}{}
