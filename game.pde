void game() {
  text(timer, 3*width/4, 550); 
  timer=timer-1;

  if (ballx<8/2||ballx>width-8/2) {
    vx=vx*-1;
    
  }
  circle(x, y, d);
  circle(ballx, bally, balld);

  dist = dist(x, y, ballx, bally);
  if (dist<r+R) {
    vx=(ballx-x)/10;
    vy=(bally-y)/10;
  }

  if (akey==true)x=x-5;
  if (dkey==true)x=x+5;

  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }

  if (bally<100/2||bally>height-100/2) {
    vy=vy*-1;
  }

  if (x>750) {
    x=750;
  }
  if (x<50) {
    x=50;
  }
}
void gameClicks() {
}
