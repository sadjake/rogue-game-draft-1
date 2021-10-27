//Jake Choi
//1-4

boolean upkey,leftkey,downkey,rightkey,spacekey;
ArrayList<GameObject> myObjects;
Hero myHero;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int VICTORY = 4;
final int GAMEOVER = 5;

//colour scheme pallette
color GREEN  = #00FC2C;
color DARKGREEN = #026C14;
color MINT = #7EF091;
color BLACK = #030303;
color WHITE = #FFFFFF;

void setup(){
  mode = INTRO;
  size(800,800,FX2D);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  imageMode(CENTER);
  // GIF
  //myGIF = new AnimatedGIF(10,"frame_" , "_delay-0.07s.gif", width/2, height/2, width, height);
  //create objects
  //myObjects = new ArrayList<GameObject>(1000);
  //myHero = new Hero();
  //myObjects.add(myHero);
}

void draw(){
  if (mode == INTRO){
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == VICTORY){
    gameover();
  } else if (mode == GAMEOVER){
    win();
  } else {
    println("Error: Mode = " + mode);
  }
}
