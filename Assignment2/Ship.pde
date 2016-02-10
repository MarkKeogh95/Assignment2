class Ship
{
  PVector pos;
  PVector forward;
  float speed = 5.0f;
  int x,y;
  //String to store the locations for drawing the player ship
  String PlayerShip[];
  
  void draw()
  {
    //update();
    //Calls drawPlayerShip 
    drawPlayerShip(x,y);
  }//End draw()
  
  void drawPlayerShip(int xpos, int ypos)
  {
    int j,i;
    
    //Runs through the PlayerShip String and rows and
    //where there is a '1' it draws a rectangle and colours it
    for(i = 0; i < PlayerShip.length; i++)
    {
       String row = (String) PlayerShip[i];
       
       //
       for(j = 0; j < row.length(); j++)
       {
         if(row.charAt( j ) == '1')
         {
             rect(xpos+(j * psize), ypos+(i * psize), psize, psize);
             fill(0,255,0);
         }//End if()
       }//End nested for()
    }//End for()
  }//End drawPlayerShip()
}//End Ship