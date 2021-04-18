int w, h;
boolean change;


color g1 = color(250, 148, 255);
color g2 = color(48, 173, 228);

void setup() {
  size(500, 500);
  w = width;
  h = height;
  background(255);
  surface.setResizable(true);
  surface.setLocation(100, 100);
  surface.setTitle("Hello World!");
}

void draw() {
  surface.setSize(w, h);
  if (w > 500) change = true;
  if (!change) w++; 
  else w--;
  if (w < 400) change = false;
  surface.setLocation(100+w, 100);
  line(0, 0, width, height);
  line(width, 0, 0, height);
}
