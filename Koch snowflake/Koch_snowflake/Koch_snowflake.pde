int maxIterations = 6;  
int currentIteration = 0;
KochSnowflake snowflake;

void setup() {
  size(800, 800);
  snowflake = new KochSnowflake(currentIteration);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  snowflake.display();
  
  
  if (frameCount % 60 == 0 && currentIteration < maxIterations) {  
    currentIteration++;
    snowflake.kochIteration();
  }
}

class KochSnowflake {
  ArrayList<PVector> points;

  KochSnowflake(int iteration) {
    points = new ArrayList<PVector>();
    
    
    float size = width * 0.6;
    PVector p1 = new PVector(width / 2, height / 2 - size / sqrt(3));
    PVector p2 = new PVector(width / 2 - size / 2, height / 2 + size / (2 * sqrt(3)));
    PVector p3 = new PVector(width / 2 + size / 2, height / 2 + size / (2 * sqrt(3)));
    
    points.add(p1);
    points.add(p2);
    points.add(p3);
    points.add(p1);
    
    
    for (int i = 0; i < iteration; i++) {
      kochIteration();
    }
  }

  void kochIteration() {
    ArrayList<PVector> newPoints = new ArrayList<PVector>();
    
    for (int i = 0; i < points.size() - 1; i++) {
      PVector a = points.get(i);
      PVector b = points.get(i + 1);
      
      PVector v1 = PVector.lerp(a, b, 1.0 / 3.0);
      PVector v2 = PVector.lerp(a, b, 2.0 / 3.0);
      
      float angle = PI / 3;  
      PVector direction = PVector.sub(v2, v1);
      PVector peak = new PVector(
        v1.x + direction.x * cos(angle) - direction.y * sin(angle),
        v1.y + direction.x * sin(angle) + direction.y * cos(angle)
      );

      newPoints.add(a);
      newPoints.add(v1);
      newPoints.add(peak);
      newPoints.add(v2);
    }
    newPoints.add(points.get(points.size() - 1));
    
    points = newPoints;
  }

  void display() {
    beginShape();
    for (PVector p : points) {
      vertex(p.x, p.y);
    }
    endShape(CLOSE);
  }
}
