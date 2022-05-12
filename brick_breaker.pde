import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme, gametheme, gametheme02, coin, bump, gameover, coin02;

theme=minim.loadFile("Y2Mate.is - War Thunder Soundtrack Legacy Main Theme-elU1vJzhFX8-128k-1649107117443.mp3");
gametheme=minim.loadFile("game theme.mp3");

int i=0;
int mode;
int n;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;
final int WIN=5;
float ballx, bally, balld;
float x, y, d, rightx, righty, rightd;
float vx, vy;
float S2, dist;
boolean akey, dkey, upkey, downkey;
float r, R;
int score, timer, highscore;
int tempx, tempy;
boolean[] alive;
float lives;

int[] bx; 
int[] by; 
int brickd;

void setup() {
  size(800, 1000);
  mode=INTRO;
  S2=8;
  vx=random(-S2, S2);
  vy=random(-S2, S2);
  lives=3;

  ballx=width/2;
  bally=height/2+100;
  balld=8;

  x=width/2;
  y=800;
  d=100;
  r=d/2;
  R=balld/2;

  score=0;
  timer=100;
  akey=dkey=upkey=downkey=false;

  brickd=50;
  n=42;
  bx=new int[n];
  by=new int[n];
  tempx=100;
  tempy=100;
  alive=new boolean[n];

  int i=0;
  while (i<n) {
    bx[i]=tempx;
    by[i]=tempy;
    alive[i]=true;

    tempx = tempx + 100;
    if (tempx==width) {
      tempx=100;
      tempy=tempy+80;
    }
    i=i+1;
  }
}
void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==WIN) {
    win();
  } else {
    println("Mode error:"+mode);
  }
}
void mouseReleased() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else if (mode==OPTIONS) {
    pauseClicks();
  } else if (mode==WIN) {
    winClicks();
  } else {
    println("error: mode="+mode);
  }
}
