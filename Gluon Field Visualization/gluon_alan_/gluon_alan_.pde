int numParticles = 200; 
float[] angleX, angleY, radius; 
float[] speed, zPos, zSpeed; 

void setup() {
  size(800, 600, P3D); 
  noFill();
  angleX = new float[numParticles];
  angleY = new float[numParticles];
  radius = new float[numParticles];
  speed = new float[numParticles];
  zPos = new float[numParticles];  
  zSpeed = new float[numParticles];  

  for (int i = 0; i < numParticles; i++) {
    angleX[i] = random(TWO_PI); 
    angleY[i] = random(TWO_PI); 
    radius[i] = random(100, 300);
    speed[i] = random(0.02, 0.05); 
    zPos[i] = random(-100, 100); 
    zSpeed[i] = random(0.01, 0.05); 
  }
}

void draw() {
  background(0);
  translate(width / 2, height / 2, 0); 

  
  rotateX(PI / 6); 
  rotateY(frameCount * 0.01); 
  rotateZ(frameCount * 0.01); 

  
  for (int i = 0; i < numParticles; i++) {
    
    float x = radius[i] * cos(angleX[i]);
    float y = radius[i] * sin(angleY[i]);
    float z = zPos[i]; 
    
    
    angleX[i] += speed[i] * sin(frameCount * 0.01 + i); 
    angleY[i] += speed[i] * cos(frameCount * 0.01 + i); 
    
    
    zPos[i] += zSpeed[i];
    if (zPos[i] > 150 || zPos[i] < -150) {
      zSpeed[i] *= -1; 
    }
    
    
    float r = 255 * (sin(angleX[i] * 2) + 1) / 2; 
    float g = 255 * (cos(angleY[i] * 2) + 1) / 2; 
    float b = 255 * (sin(angleX[i] * 3) + 1) / 2;   

    
    stroke(r, g, b, 180); 
    pushMatrix();
    translate(x, y, z); 
    sphere(5); 
    popMatrix();
    
    
    for (int j = 0; j < 5; j++) {
      float alpha = map(j, 0, 5, 100, 255);
      stroke(r, g, b, alpha);
      float x1 = radius[i] * cos(angleX[i] + j * PI / 5);
      float y1 = radius[i] * sin(angleY[i] + j * PI / 5);
      float z1 = zPos[i] + random(-10, 10); 
      float x2 = radius[i] * cos(angleX[i] + j * PI / 5 + PI);
      float y2 = radius[i] * sin(angleY[i] + j * PI / 5 + PI);
      float z2 = zPos[i] + random(-10, 10);
      line(x1, y1, z1, x2, y2, z2); 
    }
  }
}
