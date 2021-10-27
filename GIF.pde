AnimatedGIF myGIF;

class AnimatedGIF {
  PImage[] pics;
  int numberofFrames;
  int frame;
  float x,y,w,h;

  AnimatedGIF(int nf, String pre, String post){
    x = width/2;
    y = height/2;
    w = width;
    h = height;
    numberofFrames = nf;
    pics = new PImage[numberofFrames];
    int i = 0;
    while (i < numberofFrames){
      pics[i] = loadImage(pre+i+post);
      i++;
    }
    frame = 0;
  }
  
  AnimatedGIF(int nf, String pre, String post, float locx, float locy, float wth, float hgt){
    x = locx;
    y = locy;
    w = wth;
    h = hgt;
    numberofFrames = nf;
    pics = new PImage[numberofFrames];
    int i = 0;
    while (i < numberofFrames){
      pics[i] = loadImage(pre+i+post);
      i++;
    }
    frame = 0;
  }
  void show(){
    imageMode(CENTER);
    if (frame == numberofFrames) frame = 0;
    image(pics[frame], x, y, w, h);
    frame++;
    }
}
  
  
