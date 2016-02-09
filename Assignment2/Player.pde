class Player extends Ship
{
    boolean Shoot = true;
    int Reload = 0;
 
    Player() 
    {
        x = width/gsize/2;
        y = height - (10 * psize);
        PlayerShip    = new String[5];
        PlayerShip[0] = "0001000";
        PlayerShip[1] = "0011100";
        PlayerShip[2] = "0111110";
        PlayerShip[3] = "0111110";
        PlayerShip[4] = "1111111";
    }

    void update()
    {
      if(keys['S'])
      {
        x -= 5;
      }
      if(keys['D'])
      {
        x += 5;
      }
      if (keys['A'])
    {
      // Create a new bullet instance and add it to the arraylist of bullets
      Bullet bullet = new Bullet();
      bullet.pos.x = pos.x;
      bullet.pos.y = pos.y;
      bullets.add(bullet);
    }
      /*if (keyPressed && keyCode == CONTROL && Shoot)
      {
            bullets.add(new Bullet(x,y));
            Shoot = false;
            Reload = 0;
      }
      
      Reload++;
      if(Reload >= 15)
      {
        Shoot = true;
      }
      Bullet bullet = new Bullet();
      bullet.pos.x = pos.x;
      bullet.pos.y = pos.y;*/
    }
}