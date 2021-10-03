PFont bubble_shine;



void intro() {
  background (17, 124, 114);
  image (gif[f], 0, 0, width, height);
  f=f+1;
  if (f == numberOfFrames) f=0;
  fill(255);
  rect(300, 500, 200, 100);
  textSize(60);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(bubble_shine);
  text("COLOUR GAME", 400, 400);
 } 

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
}
