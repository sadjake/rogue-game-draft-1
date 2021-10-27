boolean mouseReleased;
boolean wasPressed;

Button button;
class Button extends GameObject {
  //instance  variables
  float x,y,w,h;
  String text;
  color normal, highlight;
  boolean clicked;
  
  //constructors
  Button(String _text, int _x, int _y, int _w, int _h, color _normal, color _highlight){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = _text;
    normal = _normal;
    highlight = _highlight;
    clicked = false;
  }
  
  void show(){
    rectMode(CENTER);
    if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2){//in button
      fill(DARKGREEN);
    } else {
      fill(MINT);
      button = new Button("PLAY",200,200,400,300,DARKGREEN,MINT);
    }
    stroke(DARKGREEN);
    strokeWeight(2);
    rect(x,y,w,h,40);
    pushMatrix();
    textMode(CENTER);
    textSize(50);
    fill(DARKGREEN);
    text(text,x,y);
    popMatrix();
     
    if (mouseReleased == true && mouseX > x - w/2 && mouseY > y-h/2 && mouseY < y + h/2){
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
