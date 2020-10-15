//Arianna Zhang
// Block 1-2 A
// October 6 2020

// how do options work????????

//sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//font variable
PFont sunflower;

//colours
color fontblue = #E0F6FF;
color white = #FFFFFF;
color black = #000000;
color red = #E52E2E;
color darkblue = #3433A7;
color green = #9AFAA4;

//image
PImage uwu;
boolean uwuOn;
PImage xd;
boolean xdOn;
PImage face;

// sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover, option;

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//target variables
float x, y, d;
float vx, vy; // target velocity
int score, lives;
int highscore;

//slider variables
float sliderX;
float thickness;
int sliderXX;
int insliderXXX;


void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  
  //slider initial
  sliderX = 200;
  sliderXX = 200;
  thickness = 0;
  
  
  //initialize target
  x = width/2;
  y = height/2;
  d = 0;
  vx = random(-1, 5);
  vy = random(-1, 5);
  
  // point initialize
  score = 0;
  lives = 3;
  
  //font
  sunflower = createFont("Sunflower.otf", 60);
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("wiisportsmusic.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  option = minim.loadFile("wiimenumusic.mp3");
  
  // uwu image
  uwu = loadImage("uwu.png");
  uwuOn = true;
  
  //image
  xd = loadImage("xd.png");
  xdOn = true;
  
  // indicator target
  face = uwu;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else if (mode == OPTIONS){
    options();
  } else {
    println("Mode Error : Mode is" + mode);
  }
}
