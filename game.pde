void game() {
  if (score==42) {
    mode=WIN;
  }
  theme.pause();
  gameover.pause();
  gametheme.play();
  background(80);
  fill(232);
  text(timer, 3*width/4, 550); 
  timer=timer-1;
  circle(50, 50, 50);
  textSize(30);
  textAlign(CENTER, CENTER);

  text("lives:"+lives, width/2, 40);
  textSize(60);
  text("score:"+score, width/2, 600);

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

  if (bally<8/2) {
    vy=vy*-1;
  }

  if (x>750) {
    x=750;
  }
  if (x<50) {
    x=50;
  }



  int i=0;
  while (i<n) {
    if (alive[i]==true)

      manageBrick( i );
    i++;
  }
  if (bally>1000) 
    //playSound();
  {
    lives=lives-1;
    ballx=width/2;
    bally=height/2+100;
    timer=0;
    // bump.rewind();
    // bump.play();
    if (lives==0) {
      mode=GAMEOVER;
      gameover.rewind();
      gameover.play();
    }
  }
}

void playSound() {
}
void gameClicks() {  
  if (bally>1000) {
    //playSound();
  } else if (dist(mouseX, mouseY, 50, 50)<50) {
    mode=PAUSE;
  } else {
    lives=lives-1;
    ballx=width/2;
    bally=height/2+100;
    timer=0;
    // bump.rewind();
    // bump.play();
    if (lives==0) {
      mode=GAMEOVER;
    }
  }
}
void manageBrick(int i ) {
  if (by[i]==100) fill(#E34242);
  if (by[i]==180) fill(#E2E342);
  if (by[i]==260) fill(#9DE342);
  if (by[i]==340) fill(#42E3BC);
  if (by[i]==420) fill(#426EE3);
  circle(bx[i], by[i], brickd);
  if (dist(ballx, bally, bx[i], by[i])<balld/2+brickd/2) {
    vx=(ballx-bx[i])/10;
    vy=(bally-by[i])/10;
    alive[i]=false;
    score=score+1;

    r2=random(-50, 50);
    score=score+1;
    if (r<0) {
      coin.rewind();
      coin.play();
    } else {
      coin02.rewind();
      coin02.play();
    }
  }
}
