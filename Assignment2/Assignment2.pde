import processing.sound.*;
SoundFile audio;

ArrayList Enemies = new ArrayList();
ArrayList Bullets = new ArrayList();
int psize = 4;
int gsize = psize * 7 + 5;
int rows=3;
int spaceBetweenEnemies = 40;
int spaceBetweenRows = 40;
int enemiesperrow=6;
int StartPosXRows = 50;
int OffsetPosXRows = 50;
int PosXRows = StartPosXRows;
boolean direction = true;
PImage enemy;
Player p1;

void setup() 
{
    background(0);
    noStroke();
    fill(255);
    size(800, 600);
    enemy = loadImage("Alien.png");
    enemy.resize(40,40);
    audio = new SoundFile( this, "SpaceInvader.mp3");
    audio.loop();
    p1 = new Player();
}//End setup()

void draw()
{
    background(0);
    Enemies();
    p1.draw();
}//End draw()