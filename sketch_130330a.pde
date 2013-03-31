Drawing d = new Drawing();

void setup() {
  size(300, 300);
  d.AddPolygon();
  d.AddPolygon();
  d.AddPolygon();
  d.AddPolygon();
  render();
}

void loop()
{
  //d.Mutate();
  render();
}

void render()
{
  for (int i = 0; i < d.polygons.size(); i++) {
    Polygon p = (Polygon) d.polygons.get(i);
    beginShape();
    for (int j = 0; j < p.points.length; j++) {
      vertex(p.points[j].x,p.points[j].y);
    }
    vertex(p.points[0].x,p.points[0].y);
    endShape();
  }
}

class Drawing
{
  ArrayList polygons = new ArrayList();
  
  void Mutate()
  {
    AddPolygon();
    
    MutatePolygons();
  }
  
  void MutatePolygons()
  {
    for (int i = 0; i < d.polygons.size(); i++) {
    }
  }
  
  void AddPolygon()
  {
    Polygon p = new Polygon();
    
    p.points = new Point[(int)random(1,6)];
    for (int i = 0; i < p.points.length; i++) {
      p.points[i] = new Point((int)random(width), (int)random(height));
    }
    
    polygons.add(p);
  }
}

class Polygon
{
  Point[] points;
}

class Point
{
  Point(int _x, int _y)
  {
    x = _x;
    y = _y;
  }
  int x;
  int y;
}
