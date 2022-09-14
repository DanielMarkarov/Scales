void setup()
{
  double Random = Math.random();
  size(400, 400);
  for(int x = 0; x < 401; x+=20)
  {
    for(int y = 0; y<401; y+=20)
    {
      if (Random >= 0.5)
      {
        scale2(x, y);
      }
      else
      {
        scale(x, y); 
      }
    }
  }
}

void scale (int x, int y)
{
  noStroke();
  fill(242 + x, 15, 68 + y); //red/purple gradient
  rect(x, y, 40, 40);
  fill(36, 123 +x, 144 + y); //blue gradient
  ellipse(x, y+10, 10, 10);
  ellipse(x, y+5, 8, 8);
  triangle(x, y-10, x+10, y, x-10, y);
  fill(234-0.5*x, 121, 14);
}

void scale2(int x, int y)
{
  stroke(2);
  fill(255+x, 171, 44+y);
  rect(x, y, 20, 20);
  ellipse(x, y, 25, 35);
  fill(100, 100, 225);
  triangle(x, y-7, x-7, y,x+7, y );
  triangle(x, y-10, x-7, y-7, x+7, y-7);
  fill(0);
  ellipse(x, y, 5, 5);
  fill(232, 215, 19+x);
  ellipse(x, y, 3, 3);
  fill(242, 44, 51);
  quad(x-12,y-13, x-7, y-8, x-2, y-8, x-5, y-13);
  quad(x+12, y-13, x+7, y-8, x+2, y-8, x+5, y-13);
  fill(#F2F22C);
  triangle(x, y-20,x-5, y-5, x+5, y-5);
}
