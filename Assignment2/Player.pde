class Player extends Ship
{
    //Draws the player ship
     Player() 
    {
        y = height - (10 * psize);
        //Everywhere there is a 1 theres a rectangle drawn
        PlayerShip    = new String[5];
        PlayerShip[0] = "0001000";
        PlayerShip[1] = "0011100";
        PlayerShip[2] = "0111110";
        PlayerShip[3] = "0111110";
        PlayerShip[4] = "1111111";
    }

  //Movement of the player ship using S,D
    void update()
    {
      //When S is pressed the 5 is taken away from the x value
      if(keys['S'])
      {
        x -= 5;
      }
      if(keys['D'])
      {
        //When D is pressed the 5 is added to the x value
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
    }
}