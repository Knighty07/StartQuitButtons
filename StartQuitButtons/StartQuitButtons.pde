//Global Variables
Boolean start=false, actuallyStart=false;
int rectX, rectY, rectWidth, rectHeight;
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
PImage pic, pic2;
int backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
int skullX, skullY, skullHeight, skullWidth; 
void setup () {
  size (1200, 800);
  appWidth=width;
  appHeight=height;

  rectX= appWidth * 3/4;
  rectY= appHeight * 17/20;
  rectWidth = appWidth *1/6;
  rectHeight = appHeight * 1/20;

  skullX
  skullY
  skullWidth
  skullHeight

  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button with Hoverover


  pic = loadImage ("duckwithknife.PNG"); 
  pic2 = loadImage ("skull.PNG");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  int picWidth=431;
  int picHeight=437;
  int pic2Height = 220;
  int pic2Width = 256;
}
void draw () {
  rect(100, 100, 220, 220);
  image (pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  textSize(50);
  text("Press Space to Start", 50, 100); 
  fill(68, 66, 99);
  textSize(40);
  text("Press Esc, Tab , or Q to Exit", 50, 750); 
  fill(170, 88, 62);
  image (pic2, rectX,rectY,rectWidth,rectHeight);

  rect(400, 300, 220, 220);
}

void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  println("PRESS SPACE TO START");
  start=true;
}

void keyPressed () {
  if (key==' '&& start==true) actuallyStart = true ;
  //
  //Prototype Keyboard Quit Button OR Shortcut 
  if (key=='Q' || key=='q') exit(); 
  if (key==CODED && keyCode== ESC) exit();
  if (key==CODED && keyCode== TAB) exit();
  if (key=='W' || key=='w')  rect(200, 200, 220, 220);
  ;
}
