int numParticles = 6000;   
Particle[] particles;

void setup() {
  size(1000, 1000, P3D);
  particles = new Particle[numParticles];
  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0);
  lights();

  
  translate(width/2, height/2, -600);
  rotateY(frameCount * 0.0015);
  rotateX(frameCount * 0.001);

  
  for (int i = 0; i < numParticles; i++) {
    particles[i].update();
    particles[i].display();
  }
}


class Particle {
  PVector pos;
  float angleOffset;
  float radius;
  float speed;

  Particle() {
    radius = random(80, 600);   
    float theta = random(TWO_PI);
    float phi = random(PI);
    pos = new PVector(
      radius * sin(phi) * cos(theta),
      radius * sin(phi) * sin(theta),
      radius * cos(phi)
    );
    angleOffset = random(TWO_PI);
    speed = random(0.0015, 0.008);
  }

  void update() {
    float t = frameCount * speed + angleOffset;

    
    float r = radius + 40*sin(t*2.0);
    float theta = t*1.2;
    float phi = PI/2 + 0.4*sin(t*1.5);

    pos.x = r * sin(phi) * cos(theta);
    pos.y = r * sin(phi) * sin(theta);
    pos.z = r * cos(phi);
  }

  void display() {
    float intensity = map(radius, 80, 600, 255, 60);
    stroke(
      160 + 90*sin(frameCount*0.01 + pos.x*0.01),
      170 + 85*sin(frameCount*0.015 + pos.y*0.01),
      255,
      intensity
    );
    strokeWeight(2);  
    point(pos.x, pos.y, pos.z);
  }
}

