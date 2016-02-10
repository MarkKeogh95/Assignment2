//Import sound files
import processing.sound.*;
SoundFile audio;

//New array for Bullets
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int psize = 4;
int gsize = 2;
int rows=4;
int spaceBetweenEnemies = 40;
int spaceBetweenRows = 40;
int enemiesperrow=6;
int StartPosXRows = 30;
int OffsetPosXRows = 500;
int PosXRows = StartPosXRows;
boolean direction = true;
PImage enemy;
PImage Menu;
PImage Stars;
Enemies Aliens;
Player p1;
int a=0;

void setup() 
{
    background(0);
    noStroke();
    fill(255);
    size(800, 600);
    //Load menu image
    Menu = loadImage("Start.png");
    Menu.resize(800,600);
    //load enemy image
    enemy = loadImage("Alien.png");
    enemy.resize(40,40);
    //load stars background
    Stars = loadImage("Star.jpg");
    Stars.resize(800,600);
    //load audio and loop it
    audio = new SoundFile(this, "SpaceInvader.mp3");
    audio.loop();
    //Create new aliens instance
    Aliens = new Enemies();
    //Create new player instance
    p1 = new Player();
}//End setup()

boolean[] keys = new boolean[512];

//Recognises input from keyboard
void keyPressed()
{
  //If spacebar pressed a=spacebar , enters case switch case ' '
  if(key==' ')
  {
    a =' ';
  }//end if
  keys[keyCode] = true;
}

//If nothings is pressed its false
void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{  
  //Starts with the background as image menu
   background(Menu);
   switch(a)
   {
     //When space bar is pressed runs this case
     case ' ':
     {
       background(Stars);
       //Draws ALiens
      Aliens.draw();
    
      //Draws Player ship
      p1.draw();
      p1.update();
      //Draws Bullets
      for(Bullet b: bullets)
      {
        b.update();
        b.render();
      }
     }
   }

    
}//End draw()