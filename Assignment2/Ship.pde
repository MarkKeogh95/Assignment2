class Ship
{
  int x,y;
  String PlayerShip[];
  
  void draw()
  {
    Move();
    drawPlayerShip(x,y);
  }//End draw()
  
  void drawPlayerShip(int xpos, int ypos)
  {
    int j,i;
    
    for(i = 0; i < PlayerShip.length; i++)
    {
       String row = (String) PlayerShip[i];
       
       for(j = 0; j < row.length(); j++)
       {
         if(row.charAt( j ) == '1')
         {
             rect(xpos+(j * psize), ypos+(i * psize), psize, psize);
         }//End if()
       }//End nested for()
    }//End for()
  }//End drawPlayerShip()
  
     void Move()
  {
    
  }//End Move()
  
}//End SpaceShip