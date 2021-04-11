public void setup()
{
  size(1920,1080);
  background(0,0,0);
  noLoop();
}
public void draw()
{
  Fractal(900,0,400);
}
public void Fractal(int x, int y, int len) 
{
   if(len <= 10)
   {
     noFill();
     circle(x,y,len*2);
     
   }
   else
   {
     
     stroke(color(250));
     Fractal(x,y,len/3);
     Fractal(x,y,len/2);
     Fractal(x,y,len/4);
     stroke(color(85,180,220));
     Fractal(x+len/2,y+len/4,len/2);
     Fractal(x-len/2,y+len/4,len/2);
     Fractal(x,y+len*4,len/2);
   }
}

