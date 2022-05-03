int i=0;
int mode;
int n;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;
final int GAMEOVER02=5;
float ballx, bally, balld;
float x, y, d, rightx, righty, rightd;
float vx, vy;
float S2, dist;
boolean akey, dkey, upkey, downkey;
float r, R;
int score, timer;

int[] bx; 
int[] by; 
int brickd;

void setup() {
  size(800, 1000);
  mode=GAME;
  S2=8;
  vx=random(-S2, S2);
  vy=random(-S2, S2);

  ballx=width/2;
  bally=height/2;
  balld=8;

  x=width/2;
  y=800;
  d=100;
  r=d/2;
  R=balld/2;

  timer=100;
  akey=dkey=upkey=downkey=false;

  brickd=50;
  n=4;
  bx=new int[n];
  by=new int[n];

  bx[0]=100;
  by[0]=100;

  bx[1]=400;
  by[1]=100;

  bx[2]=700;
  by[2]=100;

  bx[3]=100;
  by[3]=200;

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
  } else if (mode==GAMEOVER02) {
    utilities();
  } else {
    println("Mode error:"+mode);
  }
}
