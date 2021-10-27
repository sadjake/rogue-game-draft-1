class GameObject {
  PVector location;
  PVector velocity;
  int HEALTHPOINTS;
  
  GameObject(){
    location = new PVector (width/2, height/2);
    velocity = new PVector(0,0);
    HEALTHPOINTS = 1;
  }
  
  void show(){
  }
  
  void act(){
    location.add(velocity);
    if (location.x < 75) location.x = 75;
    if (location.x > width-75) location.x = width-75;
    if (location.y < 60) location.y = 60;
    if (location.y > height-60) location.y = height-60;
  }
    
}
