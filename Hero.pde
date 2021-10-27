class Hero extends GameObject{
 
  float speed; 
  int rx, ry;
  
  Hero(){
    super();
    speed = 5;
    rx = 1;
    ry = 1;
  }
 
  void show(){    
  fill(DARKGREEN);
  strokeWeight(3);
  ellipse(location.x,location.y,50,50);
  }

  void act(){
    super.act();
    //move
    if (upkey) velocity.y = -speed;
    if (leftkey) velocity.x = -speed; 
    if (downkey) velocity.y = speed;
    if (rightkey) velocity.x = speed; 
    if(velocity.mag() > 5) velocity.setMag(speed);
    //if (!leftkey && !rightkey) velocity.x = 0;
    //if (!downkey && !upkey) velocity.y = 0;
  }
  
}
  
