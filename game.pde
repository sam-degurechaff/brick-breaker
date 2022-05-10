void game() {
  text(timer, 3*width/4, 550); 
  timer=timer-1;
  circle(100, 100, 50);

  println(ballx, bally);
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

  if (bally<8/2||bally>height-8/2) {
    vy=vy*-1;
  }

  if (x>750) {
    x=750;
  }
  if (x<50) {
    x=50;
  }

  circle(bx[0], by[0], brickd);
  circle(bx[1], by[1], brickd);
  circle(bx[2], by[2], brickd);

  int i=0;
  while (i<n) {
    if (alive[i]==true)

      manageBrick( i );
    i++;
  }
}

void gameClicks() {  
  if (bally>1000) {
    //playSound();
  } else if (dist(mouseX, mouseY, 100, 100)<50) {
    mode=PAUSE;
  } else {
    lives=lives-1;
    // bump.rewind();
    // bump.play();
    if (lives==0) {
      mode=GAMEOVER;
    }
  }
}
void manageBrick(int i ) {
  circle(bx[i], by[i], brickd);
  if (dist(ballx, bally, bx[i], by[i])<balld/2+brickd/2) {
    vx=(ballx-bx[i])/10;
    vy=(bally-by[i])/10;
    alive[i]=false;
  }
}
