void EnemyRows(int posX, int posY)
{
  for( int i=0; i<enemiesperrow; i++)
  {
     Enemy(posX + i * spaceBetweenEnemies ,posY);
  }
}