Die theDie;
int value=(int)(Math.random()*6)+1;
int sum=0;
void setup()
{
  size(800,800);
  background(255);
  noLoop();
}
void draw()
{
  background(255);
  for(int myX=0; myX<=750; myX+=50)
    {
     for(int myY=0; myY<=750; myY+=50)
       {
        Die theDie = new Die(myX,myY);
        theDie.show();
        theDie.roll();
        if(value<7)
        {
          sum=sum+value;
        }
       }
    }
   strokeWeight(2);
   stroke(0);
   fill(255);
   rect(750,750,50,50);
   fill(0);
   textSize(20);
   textAlign(CENTER);
   text(sum,775,780);
}
void mousePressed()
{
 redraw();
 sum=0;
}
class Die
{
 int x,y;
 Die(int myX, int myY)
 {
  roll();
  x=myX;
  y=myY;
 }
 void roll()
 {
  if(Math.random()<0.1666)
  {
   value=1; 
  }
  else if(Math.random()<0.333)
  {
   value=2;
  }
  else if(Math.random()<0.5)
  {
   value=3; 
  }
  else if(Math.random()<0.666)
  {
   value=4;
  }
  else if(Math.random()<0.8333)
  {
   value=5; 
  }
  else
  {
   value=6; 
  }
 }
 void show()
 {
       fill(0);
        if (value == 1)
          {
            ellipse (x+25, y+25, 10, 10);
          }
        if (value == 2)
          {
            ellipse (x+12.5, y+12.5, 10, 10);
            ellipse (x+37.5, y+37.5, 10, 10);
          }
         if (value == 3)
          {
            ellipse (x+12.5, y+12.5, 10, 10);
            ellipse (x+37.5, y+37.5, 10, 10);
            ellipse (x+25, y+25, 10, 10);
          }  
         if (value == 4)
          {
            ellipse (x+12.5, y+12.5, 10, 10);
            ellipse (x+12.5, y+37.5, 10, 10);
            ellipse (x+37.5, y+12.5, 10, 10);
            ellipse (x+37.5, y+37.5, 10, 10);
          }  
        if (value == 5)
          {
            ellipse (x+12.5, y+12.5, 10, 10);
            ellipse (x+12.5, y+37.5, 10, 10);
            ellipse (x+37.5, y+12.5, 10, 10);
            ellipse (x+37.5, y+37.5, 10, 10);
            ellipse (x+25, y+25, 10, 10);
          }
        if (value == 6)
          {
           ellipse (x+12.5, y+12.5, 10, 10);
           ellipse (x+12.5, y+25, 10, 10);
           ellipse (x+12.5, y+37.5, 10, 10);
           ellipse (x+37.5, y+12.5, 10, 10);
           ellipse (x+37.5, y+25, 10, 10);
           ellipse (x+37.5, y+37.5, 10, 10); 
          }
 }
}

