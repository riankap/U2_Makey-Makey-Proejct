//visual: piano press amd play the keys. 6 white keys, 5 black sharps/flats
PImage piano;
PImage right;
PImage left;
PImage up;
PImage down;
PImage space;
PImage click;

int x=100;
int y=100;
int current=0;

import processing.sound.*;
SoundFile G;
SoundFile A;
SoundFile B;

SoundFile C;
SoundFile D;
SoundFile E;
void setup()
{

fullScreen();
background(255);
  piano=loadImage("piano.png");
  piano.resize(1100, 600);

  right=loadImage("right.png");
  right.resize(100, 100);

  left=loadImage("left.png");
  left.resize(100, 100);

  up=loadImage("up.png");
  up.resize(100, 100);

  down=loadImage("down.png"); 
  down.resize(100, 100);

  space=loadImage("space.png");
  space.resize(100, 100);

  click=loadImage("click.png");
  click.resize(100, 100);
  
  G=new SoundFile(this, "G.mp3");
  A=new SoundFile(this, "A.mp3");
  B=new SoundFile(this, "B.mp3");

  C=new SoundFile(this, "C.mp3");
  D=new SoundFile(this, "D.mp3");
  E=new SoundFile(this, "E.mp3");


}

void draw()
{
  image(piano, x, y);
  image(left, 120, 500);
  image(down, 590, 500);
  image(up, 290, 500);
  image(right, 450, 500);
  image(space, 750, 500);
  image(click, 900, 500);


  if (current==1) 
  {
    ellipseMode(CENTER);
    fill(255, 8, 41);
    ellipse(170, 400, 30, 30);
    G.play();
  }




  if (current==2)
  {
    ellipseMode(CENTER);
    fill(8, 255, 241);
    ellipse(335, 400, 30, 30);
    A.play();
  }



  if (current==3)
  {
    ellipseMode(CENTER);
    fill(234, 26, 197);
    ellipse(500, 400, 30, 30);
    B.play();

  }



  if (current==4) 
  {
    ellipseMode(CENTER);
    fill(238, 255, 8);
    ellipse(640, 400, 30, 30);
    C.play();

  }


  if (current==5) 
  {
    ellipseMode(CENTER);
    fill(180, 8, 255);
    ellipse(800, 400, 30, 30);
    D.play();

  }

  if (current==6)
  {

    image(click, 900, 500);
    ellipseMode(CENTER);
    fill(8, 255, 26);
    ellipse(960, 390, 30, 30);
    E.play();

  }
  
  textSize(40); 
  fill(0);
  text("C", 620, 150); 
  
  
   textSize(40); 
  fill(0);
  text("B", 480, 150); 
  
   textSize(40); 
  fill(0);
  text("A", 315, 150); 
  
  textSize(40); 
  fill(0);
  text("G", 150, 150); 
  
  textSize(40); 
  fill(0);
  text("D", 780, 150); 
  
  textSize(40); 
  fill(0);
  text("E", 940, 150); 
  
 
}

void keyReleased()
{
  if (key==CODED)
  { 
    if (keyCode == LEFT)
    {
      current=1;
    }



    if (keyCode == UP)
    {
      current=2;
    }


    if (keyCode == RIGHT) 
    {
      current=3;
    }



    if (keyCode == DOWN) 
    {
      current=4;
    }
  }

  if (key == ' ') 
  {
    current=5;
  }
}



void mousePressed()
{
  if (mouseX>890 && mouseX<1040 && mouseY>110 && mouseY<670)
  {
    current=6;
  }
}