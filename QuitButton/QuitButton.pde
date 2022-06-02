//Global Variables
//Prototyping exit with key Board
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, green=#24F03A, orange=#F05024, resetWhite=#FFFFFF;

void setup() {
  size (600, 400); //Landscape Mode
  //Population
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  buttonX = width*1/4;
  buttonY = height*1/4;
}//End setup()

void draw() {
  println(mouseX, mouseY); 
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) { 
    buttonColour = orange;
  } else { 
    buttonColour = green;
  } 
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);
}//End draw()

void keyPressed() {
  if (key == 'q' || key == 'Q') exit(); //key not keyCode
}//End keyPressed()

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit() ;
}//End mousePressed()
