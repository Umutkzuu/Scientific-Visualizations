int numLines = 200; 
int numPoints = 100; 
float amplitude = 15; 
float waveSpeed = 0.05; 

PVector center;

void setup() {
  fullScreen();
  strokeWeight(1.2);
  noFill();
  center = new PVector(width/2, height/2); // çekim merkezi
}

void draw() {
  background(0);
  
  for (int i = 0; i < numLines; i++) {
    // Çekim merkezine göre faktör
    float t = map(i, 0, numLines-1, 0.1, 1); // 0.1 = merkeze yakın, 1 = dış
    
    // Dinamik renkler
    float r = map(sin(frameCount*0.02 + i), -1, 1, 100*t, 255);
    float g = map(sin(frameCount*0.015 + i*1.1), -1, 1, 50*t, 255);
    float b = map(sin(frameCount*0.018 + i*0.7), -1, 1, 100*t, 255);
    stroke(r, g, b);
    
    PVector dir = PVector.sub(center, new PVector(random(width), random(height)));
    dir.mult(t*0.5); // merkez çekimi etkisi
    
    beginShape();
    for (int j = 0; j <= numPoints; j++) {
      float x = map(j, 0, numPoints, 0, width);
      float y = map(j, 0, numPoints, 0, height);
      
      // Çekim etkisi
      x += dir.x * sin(j*0.1 + frameCount*waveSpeed);
      y += dir.y * sin(j*0.1 + frameCount*waveSpeed);
      
      // Dalga ve kaotik hareket
      x += sin(j*0.2 + frameCount*0.03 + i*0.1) * amplitude * t;
      y += cos(j*0.15 + frameCount*0.02 + i*0.1) * amplitude * t;
      
      vertex(x, y);
    }
    endShape();
  }
}
