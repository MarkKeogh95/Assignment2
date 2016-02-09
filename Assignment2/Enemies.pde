class Enemies
{
  void draw()
  {
    drawAliens();
  }
  void drawAliens()
  {
    for(int i=0; i<rows; i++)
    {
      if(direction)
      {
        PosXRows++;
      }
      else
      {
        PosXRows--;
      }
      if(PosXRows > StartPosXRows + OffsetPosXRows || PosXRows < StartPosXRows )
      {
        direction=!direction;
      }
       EnemyRows(PosXRows,50 + spaceBetweenRows * i);
    }
  }
  
  void Enemy(int posX, int posY)
  {
    image(enemy,posX,posY);
  }

  void EnemyRows(int posX, int posY)
  {
    for( int i=0; i<enemiesperrow; i++)
    {
       Enemy(posX + i * spaceBetweenEnemies ,posY);
    }
  }
}