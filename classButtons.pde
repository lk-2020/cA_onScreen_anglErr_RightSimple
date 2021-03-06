public class MyButton {
  float buttonX, buttonY, buttonWidth, buttonHeight;
  String buttonText;
  boolean buttonOn;
  boolean buttonClicked = false;
  boolean buttonEnabled = false;

  public MyButton(float xx, float yy, float ww, float hh, String text) {
    buttonX = xx;
    buttonY = yy;
    buttonWidth = ww;
    buttonHeight = hh;
    buttonText = text;
    // Interactive.add(this); // add this to GUIDO manager, important!
  }

  void mousePressed() {
    // called when the button has been pressed
    if (buttonEnabled == true) {
      // parent.background(255);
      buttonClicked = true;
    }
  }

  public void enable() {
    buttonEnabled = true;
  }

  public void disable() {
    buttonEnabled = false;
  }

  public void draw() {
//      int dark = 50;
//      int light = 130;
//      int border = 40;
//      // stroke(200);
//      noStroke();
//      fill(light, light, light, 100);
//      rect(buttonX, buttonY, buttonWidth, buttonHeight / 2, 7, 7, 0, 0);
//      fill(dark, dark, dark, 100);
//      rect(buttonX, buttonY + buttonHeight / 2, buttonWidth, 
//      buttonHeight / 2, 0, 0, 7, 7);
//      stroke(border, border, border, 100);
//      noFill();
//      smooth();
//      rect(buttonX, buttonY, buttonWidth, buttonHeight, 7, 7, 7, 7);
      fill(255);
      textSize(20);
      text(buttonText, buttonX + 5, buttonY + (float) 0.75* buttonHeight);
  }

  public boolean isMouseOverButton() {

    if ((mouseX > buttonX) && (mouseX < (buttonX + buttonWidth))
      && (mouseY > buttonY)
      && (mouseY < (buttonY + buttonHeight))) {
      return true;
    }

    return false;
  }
}
