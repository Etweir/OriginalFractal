public void setup()
{
  size(1920,1080);
  background(0,0,0);
}
public void draw()
{
  Fractal(100,1000,mouseX);
}
public void Fractal(int x, int y, int len) 
{
   if(len <= 20)
   {
     noFill();
     triangle(x,y,x+(len/2),y-len,x+(len),y);
   }
   else
   {
     stroke(color(random(250),random(250),random(250)));
     Fractal(x,y,len/2);
     Fractal(x+len/2,y,len/2);
     Fractal(x+len/4, y-len/2, len/2);
   }
}
