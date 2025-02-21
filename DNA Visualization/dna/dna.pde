int numPairs = 30; // DNA çift sarmalındaki baz çiftlerinin sayısı
float angle = 0;
float helixRadius = 100;
float helixHeight = 15;
float rotationSpeed = 0.02;
String[] nucleotides = {"A", "T", "C", "G"};
float rotateXAngle = PI/6;
float rotateYAngle = 0;

void setup() {
  size(800, 800, P3D);
  smooth();
  textAlign(CENTER, CENTER);
  textSize(12);
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2);
  rotateX(rotateXAngle);
  rotateY(rotateYAngle + angle);
  
  for (int i = 0; i < numPairs; i++) {
    float theta = map(i, 0, numPairs, 0, TWO_PI * 3);
    float x1 = cos(theta) * helixRadius;
    float z1 = sin(theta) * helixRadius;
    float y = map(i, 0, numPairs, -250, 250);
    
    float x2 = cos(theta + PI) * helixRadius;
    float z2 = sin(theta + PI) * helixRadius;
    
    // Nükleotidleri belirleme
    String base1 = nucleotides[(int)random(4)];
    String base2 = complementaryBase(base1);
    
    // Bağlantı çubukları
    stroke(255);
    strokeWeight(4);
    line(x1, y, z1, x2, y, z2);
    
    // Sarmalın birinci ipliği
    fill(0, 0, 255);
    noStroke();
    pushMatrix();
    translate(x1, y, z1);
    sphere(10);
    fill(255);
    text(base1, 0, 0);
    popMatrix();
    
    // Sarmalın ikinci ipliği
    fill(255, 0, 0);
    noStroke();
    pushMatrix();
    translate(x2, y, z2);
    sphere(10);
    fill(255);
    text(base2, 0, 0);
    popMatrix();
  }
  
  angle += rotationSpeed;
}

void mouseDragged() {
  rotateYAngle = map(mouseX, 0, width, -PI, PI);
  rotateXAngle = map(mouseY, 0, height, -PI/2, PI/2);
}

String complementaryBase(String base) {
  if (base.equals("A")) return "T";
  if (base.equals("T")) return "A";
  if (base.equals("C")) return "G";
  if (base.equals("G")) return "C";
  return "";
}
