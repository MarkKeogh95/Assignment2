import processing.sound.*;
SoundFile audio;

ArrayList Bullets = new ArrayList();
int psize = 4;
int gsize = psize * 7 + 5;
int rows=3;
int spaceBetweenEnemies = 40;
int spaceBetweenRows = 40;
int enemiesperrow=6;
int StartPosXRows = 30;
int OffsetPosXRows = 500;
int PosXRows = StartPosXRows;
boolean direction = true;
PImage enemy;
PImage Ship;
Enemies Aliens;
Player p1;
int a=0;

void setup() 
{
    background(0);
    noStroke();
    fill(255);
    size(800, 600);
    Ship = loadImage("Ship.png");
    enemy = loadImage("Alien.png");
    enemy.resize(40,40);
    audio = new SoundFile(this, "SpaceInvader.mp3");
    audio.loop();
    Aliens = new Enemies();
    p1 = new Player();
}//End setup()

void draw()
{  
   background(0);
    Aliens.draw();
    p1.draw();

    
}//End draw()