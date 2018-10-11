
void setup() {
  noLoop();
  noStroke();
  size(800, 600);
}

void draw() {
  
  int[] r = { rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor() };
  int[] g = { rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor() };
  int[] b = { rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor(), rndColor() };
  
  background(255);
  
  float pixelSize = random(5, 20);
  float step = random(3, 20);
  int N = (int)random(1, 10);
  
  for(int y = 0; y < height; y += step) {
    for(int x = 0; x < width; x += step) {
      
      int col = (int)abs(func(x, y) % N);
      fill(r[col], g[col], b[col]);
      rect(x, y, pixelSize, pixelSize);
    }
  }
}

float func(int x, int y) {
  //return x^2 + y^2;
  //return x^2 - y^2;
  //return sin(x^2) + cos(y^2);
  //return sin(x^2) * tan(y^2);
  //return sin(x) + cos(y);
  //return sqrt(x+y);
  return x^(y^2);
}

int rndColor() {
  return (int)random(255);
}

void mousePressed() {
  redraw();
}
