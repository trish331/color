

void gameover() {
  background (255);
  textSize(60);
  text("gameover", width/2, height/2);
  //textSize(60);
  text("press anywhere to continue", 400, 700);
  
  
}

void gameoverClicks() {
  reset();
  mode = INTRO;
}
