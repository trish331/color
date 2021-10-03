//Tricia Sun
//Block 1-3
//Sept 17 2021


//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 3;
String [] words;
//color [] colors;

PImage[] gif;
int numberOfFrames;
int f;
int numberOfPages;
int score;
int w;
int c;
int highscore;
int clickedOnRect;
//COLOUR PALLETE
color red = #C41C1C;
color blue = #1C55C4;
color violet = #751CC4;
color yellow = #B5C41C;
color brown = #5D5657;
color black = #0D0D0D;

//VARIABLES
int r = int (random (0, 6));
//colors = int (random (0,6));
color [] colors;
//setup
void setup() {
  size (800, 800);
  mode = INTRO;
  words = new String [6];
  words [0] = "RED";
  words [1] = "BLUE";
  words [2] = "VIOLET";
  words [3] = "YELLOW";
  words [4] = "BROWN";
  words [5] = "BLACK";
  bubble_shine = createFont ("BubbleShine.ttf", 60);

//colors
colors = new color [6];
colors [0] = red;
colors [1] = blue;
colors [2] = violet;
colors [3] = yellow;
colors [4] = brown;
colors [5] = black;

  numberOfFrames = 15;
  gif = new PImage[numberOfFrames];


  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_" +i+ "_delay-0.1s.gif");
    i = i+1;
  }
  f=0;

  w=int (random (0, 6));
  c=int (random (0, 6));

  score = 0;
  score = score +1;
  highscore = 0;

  reset();
}


void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode Error: Mode = " +mode);
  }
}
