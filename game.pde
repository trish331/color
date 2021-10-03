void game () {
  background(63, 142, 134);
  fill (0);
  rect(600, 800, width/2, height);
  fill(colors[c]);
  text(words[w], 300, 400);
  textSize(60);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(bubble_shine);
  text("Score:" + score, 100, 700);
text("true", 100, 100);
text("false", 700, 100);

}

void gameClicks () {
  if (mouseX < width/2) {
    if (w==c) {
      w=int (random (0, 6));
      c=int (random (0, 6));
      score = score +1;
    } else {
      mode = GAMEOVER;
    }
  } else { 

    if (w==c) {
      mode = GAMEOVER;
    } else {
      w=int (random (0, 6));
      c=int (random (0, 6));
      score = score +1;
    }
  }
}
