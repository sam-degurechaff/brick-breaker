void win() {
  background(225);
  
  fill(0);
  textAlign(CENTER, CENTER);textSize(120);
  text("victory",width/2,100);
  textSize(50);
  text("click any where to restart", width/2, 300);
}
{}void winClicks() {  
  mode=INTRO;
  lives=3;
  score=0;
  timer=0;
  i=0;
  alive[i]=true;
  setup();
}
