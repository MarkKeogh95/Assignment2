class Bullet extends Ship
{
  void render()
  {
    // Just draw a small vertical line
    pushMatrix();
    translate(pos.x, pos.y);
    line(0, -5, 0, 5);
    popMatrix();    
  }
  
  void update()
  {
    forward.y = pos.y +5;
    forward.mult(speed);
    pos.add(forward);
  }
}
  /*int a,b;
  
  Bullet( int posX, int posY)
  {
    a = posX +gsize/2-4;
    b = posY;
  }
  
  void draw()
  {
    rect(a,b,psize,psize);
    b -= psize;
  }
}*/