void game(){
  
  gameRoom();
  drawGameObjects();
  //drawLightLayer();
  //drawMiniMap();
  
  //int i = 0;
  //while ( i < myObjects.size()) {
  // GameObject myObj = myObjects.get(i);
  // myObj.show();
  // myObj.act();
  //}
  //myHero.show();
  //myHero.act();
}
void gameRoom(){
 background(DARKGREEN);
 stroke(BLACK);
 strokeWeight(8);
 line(0,0,width,height);
 line(width,0,0,height);
 stroke(DARKGREEN);
 fill(BLACK);
 rect(width/2,height/2,width-100,height-100);
}

void drawGameObjects(){
  int i = 0;
  while ( i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
  if (myObj.HEALTHPOINTS == 0) {
      myObjects.remove(i); 
    } else {
      i++;
    }
  }
}

void gameClicks(){
  
}
