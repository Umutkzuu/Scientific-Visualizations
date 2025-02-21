int numPoints = 1000;
float time = 0;
float randomnessFactor = 0.05;

void setup() {
  size(900, 900, P3D);
  smooth(10);
}

void draw() {
  background(0);  
  lights();

  translate(width / 2, height / 2, -300);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.02);

  noFill();
  strokeWeight(4);

  beginShape();
  for (int i = 0; i < numPoints; i++) {
    float t = map(i, 0, numPoints, 0, TWO_PI);
    float baseR = 200 + 80 * sin(4 * t + time) + 50 * cos(7 * t + time * 0.5);
    float baseX = baseR * cos(t * 2);
    float baseY = baseR * sin(t * 3);
    float baseZ = 100 * cos(5 * t + time) + 40 * sin(8 * t + time * 0.3);

    float randomShift = 1 + randomnessFactor * random(-1, 1);
    float x = baseX * randomShift;
    float y = baseY * randomShift;
    float z = baseZ * randomShift;

    float red = 127 + 127 * sin(time + t);
    float green = 127 + 127 * sin(time * 0.7 + t * 1.5);
    float blue = 127 + 127 * cos(time * 1.3 + t * 2);

    red = constrain(red, 0, 255);
    green = constrain(green, 0, 255);
    blue = constrain(blue, 0, 255);

    stroke(red, green, blue, 220);
    vertex(x, y, z);
  }
  endShape(CLOSE);

  time += 0.02;
 
  
}
