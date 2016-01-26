// Wall Drawings #138
// http://www.ericdoeringer.com/ConArtRec/LeWitt/LeWitt-WD138.html
// Modified by Mario Vanegas


int gridSpacing = 60;

void setup() {
  size(960, 540);
  background(255);
  noFill();
  noLoop();
  strokeWeight(0.5);
}

void draw() {
  // draw grid
  stroke(0, 100);
  drawGrid();
  
  // draw circles from center
  stroke(0, 100);
  drawCircles(480, 270, 324);
  
  // draw circles from midpoints
  stroke(0, 50);
  drawCircles(480, 0, width * 1.6);
  drawCircles(960, 270, width * 2.1);
  drawCircles(480, 540, width * 1.6);
  drawCircles(0, 270, width * 2.1);
  
}

void drawGrid() {
  for (int i = 0; i < width; i+=gridSpacing) {
      line(i, 0, i, height);
  }
  for (int i = 0; i < height; i+=gridSpacing) {
      line(0, i, width, i);
  }
}

void drawCircles(int x, int y, float limit) {
  pushMatrix();
  translate(x, y);
  
  for (int i = 0; i < limit; i+=gridSpacing) {
      ellipse(0, 0, i, i);
  }
  
  popMatrix();
}

// Code from Matt Felsen in Processing, 2014
// https://gist.github.com/mattfelsen/9510125