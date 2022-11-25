//Global Variables
Boolean start=false, actuallyStart=false;
int rectX, rectY, rectWidth, rectHeight;
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
PImage pic;
int backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;

void setup () {
  size (1200, 800);
  appWidth=width;
  appHeight=height;

  rectX= appWidth * 3/4;
  rectY= appHeight * 17/20;
  rectWidth = appWidth *1/6;
  rectHeight = appHeight * 1/20;

  pic = loadImage ("duckwithknife.PNG"); 
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  int picWidth=431;
  int picHeight=437;
}
void draw () {
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button with Hoverover
  rect(100, 100, 220, 220);
  image (pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  textSize(100);
  text("Press Space to Start", 50, 100); 
    fill(68,66,99);
    textSize(40);
  text("Press Esc, Tab , or Q to Exit", 50, 750); 
    fill(170,88,62);

}

void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  println("PRESS SPACE TO START");
}

void keyPressed () {
  if (key==' '&& start==true) actuallyStart = true ;
  //
  //Prototype Keyboard Quit Button OR Shortcut 
  if (key=='Q' || key=='q') exit(); 
  if (key==CODED && keyCode== ESC) exit();
  if (key==CODED && keyCode== TAB) exit();
}
