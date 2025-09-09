int numCubes = 100;  // Küp sayısı
float size = 200;    // İlk küp boyutu
float decrement = 2; // Her bir küpün boyutunun küçülme miktarı

void setup() {
  size(600, 600, P3D);
  noFill();
}

void draw() {
  background(0);  // Arka planı siyah yap
  translate(width / 2, height / 2);  // Ekranı ortalayalım
  rotateX(frameCount * 0.01);  // Zamanla X ekseninde döndür
  rotateY(frameCount * 0.01);  // Zamanla Y ekseninde döndür

  // Küpleri çiz
  for (int i = 0; i < numCubes; i++) {
    float currentSize = size - i * decrement;  // Her küpün boyutu küçülür
    stroke(random(255), random(255), random(255));  // Rastgele bir renk seç
    drawCube(currentSize);  // Küp çizme fonksiyonunu çağır
  }
}

void drawCube(float s) {
  // Küpün köşelerini hesapla
  PVector[] vertices = new PVector[8];
  vertices[0] = new PVector(-s / 2, -s / 2, -s / 2);
  vertices[1] = new PVector(s / 2, -s / 2, -s / 2);
  vertices[2] = new PVector(s / 2, s / 2, -s / 2);
  vertices[3] = new PVector(-s / 2, s / 2, -s / 2);
  vertices[4] = new PVector(-s / 2, -s / 2, s / 2);
  vertices[5] = new PVector(s / 2, -s / 2, s / 2);
  vertices[6] = new PVector(s / 2, s / 2, s / 2);
  vertices[7] = new PVector(-s / 2, s / 2, s / 2);

  // Küpün kenarlarını çiz
  for (int i = 0; i < 4; i++) {
    int next = (i + 1) % 4;
    line(vertices[i].x, vertices[i].y, vertices[i].z, vertices[next].x, vertices[next].y, vertices[next].z);
    line(vertices[i + 4].x, vertices[i + 4].y, vertices[i + 4].z, vertices[next + 4].x, vertices[next + 4].y, vertices[next + 4].z);
    line(vertices[i].x, vertices[i].y, vertices[i].z, vertices[i + 4].x, vertices[i + 4].y, vertices[i + 4].z);
  }
  for (int i = 4; i < 8; i++) {
    int next = (i + 1) % 4 + 4;
    line(vertices[i].x, vertices[i].y, vertices[i].z, vertices[next].x, vertices[next].y, vertices[next].z);
  }
}
