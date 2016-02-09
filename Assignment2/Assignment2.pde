import processing.sound.*;
SoundFile audio;

ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int psize = 4;
int gsize = psize * 7 + 5;
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
    Menu = loadImage("Start.png");
    Menu.resize(800,600);
    enemy = loadImage("Alien.png");
    enemy.resize(40,40);
    Stars = loadImage("Star.jpg");
    Stars.resize(800,600);
    audio = new SoundFile(this, "SpaceInvader.mp3");
    audio.loop();
    Aliens = new Enemies();
    p1 = new Player();
}//End setup()

boolean[] keys = new boolean[512];

void keyPressed()
{
  if(key==' ')
  {
    a =' ';
  }//end if
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{  
   background(Menu);
   switch(a)
   {
     case ' ':
     {
       background(Stars);
      Aliens.draw();
    
      p1.draw();
      p1.update();
      //Bullet.draw();
      for(Bullet b: bullets)
      {
        b.update();
        b.render();
      }
     }
   }

    
}//End draw()