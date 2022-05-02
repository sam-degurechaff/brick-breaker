void keyPressed() {
  if (key=='A'||key=='a')akey=true;
  if (key=='D'||key=='d')dkey=true;
  if (keyCode==UP)upkey=true;
  if (keyCode==DOWN)downkey=true;
}
void keyReleased() {
  if (key=='A'||key=='a')akey=false;
  if (key=='D'||key=='d')dkey=false;
  if (keyCode==UP)upkey=false;
  if (keyCode==DOWN)downkey=false;
}
