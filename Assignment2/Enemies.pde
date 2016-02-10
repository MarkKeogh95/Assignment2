class Enemies
{
  void draw()
  {
    drawAliens();
  }
  
  //Draws one enemy image
  void Enemy(int posX, int posY)
  {
    image(enemy,posX,posY);
  }

  //Draws the enemies in row
  void EnemyRows(int posX, int posY)
  {
    for( int i=0; i<enemiesperrow; i++)
    {
       Enemy(posX + i * spaceBetweenEnemies ,posY);
    }
  }
  
  //Draws enemies in rows and movement code
  void drawAliens()
  {
    for(int i=0; i<rows; i++)
    {
      //Moves the enemies
      if(direction)
      {
        PosXRows++;
      }
      else
      {
        PosXRows--;
      }
      //Changes the direction 
      if(PosXRows > StartPosXRows + OffsetPosXRows || PosXRows < StartPosXRows )
      {
        direction=!direction;
      }
      //Makes the enemies into rows
       EnemyRows(PosXRows,50 + spaceBetweenRows * i);
    }
  }
  
  
}//End Enemies()