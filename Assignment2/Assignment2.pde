ArrayList Enemies = new ArrayList();
ArrayList Bullets = new ArrayList();
int psize = 4;
int gsize = psize * 7 + 5;
int rows=3;
int spaceBetweenEnemies = 50;
int enemiesperrow=3;
PImage enemy;
Player p1;

void setup() 
{
    background(0);
    noStroke();
    fill(255);
    size(800, 600);
    enemy = loadImage("Alien.png");
    enemy.resize(50,50);
    p1 = new Player();
}//End setup()

void draw()
{
    background(0);
    Enemies();
    p1.draw();
}//End draw()