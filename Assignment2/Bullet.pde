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