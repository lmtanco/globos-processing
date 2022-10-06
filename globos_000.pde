class Globo
{
  float x, y,vx,vy;
  PImage img;
  Globo (float _x, float _y, PImage _img)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   img = _img;
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
    push();
      ellipse(x,y,100,100);
      image(x,y,100,100);
    pop();
  }
  
}

ArrayList<Globo> globos;

PImage cara;

void setup()
{
  size(400,400);
  globos = new ArrayList<Globo>();
  cara = loadImage("beard.png");
}

void draw()
{
  background(0);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY,cara));
}
