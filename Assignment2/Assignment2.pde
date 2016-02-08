ArrayList Enemies = new ArrayList();
ArrayList Bullets = new ArrayList();
int psize = 4;
int gsize = psize * 7 + 5;
PImage enemy;
Player p1;

void setup() 
{
    background(0);
    noStroke();
    fill(255);
    size(800, 600);
    enemy = loadImage("Alien.png");
    p1 = new Player();
}//End setup()

void draw()
{
    background(0);
    image(enemy,0,0);
    p1.draw();
}//End draw()