void intro() {

  myGIF.show();
  fill(DARKGREEN);
  textSize(80);
  text("ROGUE GAME", 200, 200);

  //buttons
  click();
  button = new Button("PLAY", 200, 200, 400, 300, DARKGREEN, MINT);
  button.show();
  if (button.clicked) {
    mode = GAME;
  }
}

void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mouseReleased =  true;
    wasPressed = false;
  }
}
void introClicks() {
}
