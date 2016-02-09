class Player extends Ship
{
    boolean Shoot = true;
    int Delay = 0;
 
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

    void Move()
    {
      if(keyPressed && keyCode == LEFT)
      {
        x -= 5;
      }
      if(keyPressed && keyCode == RIGHT)
      {
        x += 5;
      }
    }
}