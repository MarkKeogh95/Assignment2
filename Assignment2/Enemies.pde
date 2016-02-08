void Enemies()
{
  for( int i=0; i<rows; i++)
  {
    if(direction)
    {
      PosXRows++;
    }
    else
    {
      PosXRows--;
    }
    if(PosXRows > StartPosXRows + OffsetPosXRows || PosXRows < StartPosXRows - OffsetPosXRows)
    {
      direction=!direction;
    }
     EnemyRows(PosXRows,50 + spaceBetweenRows * i);
  }
}