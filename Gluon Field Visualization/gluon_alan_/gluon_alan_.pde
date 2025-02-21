int numParticles = 200; // Parçacık sayısı
float[] angleX, angleY, radius; // Parçacık açıları ve yarıçaplar
float[] speed, zPos, zSpeed; // Parçacık hızları ve Z ekseni pozisyonları

void setup() {
  size(800, 600, P3D); // 3D modunda pencere
  noFill();
  angleX = new float[numParticles];
  angleY = new float[numParticles];
  radius = new float[numParticles];
  speed = new float[numParticles];
  zPos = new float[numParticles];  // Z ekseni için
  zSpeed = new float[numParticles];  // Z ekseni hızları

  for (int i = 0; i < numParticles; i++) {
    angleX[i] = random(TWO_PI); // Başlangıç açıları
    angleY[i] = random(TWO_PI); // Başlangıç açıları
    radius[i] = random(100, 300); // Yarıçaplar
    speed[i] = random(0.02, 0.05); // Hızlar
    zPos[i] = random(-100, 100); // Z ekseni başlangıç
    zSpeed[i] = random(0.01, 0.05); // Z ekseni hızları
  }
}

void draw() {
  background(0);
  translate(width / 2, height / 2, 0); // Ekranın ortasına odaklan

  // Kamera hareketini ayarlayalım
  rotateX(PI / 6); // X ekseninde dönme
  rotateY(frameCount * 0.01); // Y ekseninde dönme
  // rotateZ(frameCount * 0.01); // Z ekseninde de dönebiliriz

  // Gluon alanı simülasyonu
  for (int i = 0; i < numParticles; i++) {
    // Her parçacığın konumunu ve hareketini hesapla
    float x = radius[i] * cos(angleX[i]);
    float y = radius[i] * sin(angleY[i]);
    float z = zPos[i]; // Z eksenindeki hareket
    
    // Parçacık hareketi için açıları güncelle
    angleX[i] += speed[i] * sin(frameCount * 0.01 + i); // Dalgalı hareket
    angleY[i] += speed[i] * cos(frameCount * 0.01 + i); // Dalgalı hareket
    
    // Z ekseni hareketi için hız güncelle
    zPos[i] += zSpeed[i];
    if (zPos[i] > 150 || zPos[i] < -150) {
      zSpeed[i] *= -1; // Z ekseninde hareketin tersine dönmesi
    }
    
    // Parçacık renkleri (renkli gluonlar)
    float r = 255 * (sin(angleX[i] * 2) + 1) / 2; // Kırmızı tonları
    float g = 255 * (cos(angleY[i] * 2) + 1) / 2; // Yeşil tonları
    float b = 255 * (sin(angleX[i] * 3) + 1) / 2; // Mavi tonları

    // Parçacıkları 3D uzayda çiz
    stroke(r, g, b, 180); // Yarı opak renkler
    pushMatrix();
    translate(x, y, z); // Parçacığı belirli bir konumda yerleştir
    sphere(5); // Küre şeklinde çiz
    popMatrix();
    
    // Dalgalı çizgiler ekleyelim (dalgaların izlediği yollar)
    for (int j = 0; j < 5; j++) {
      float alpha = map(j, 0, 5, 100, 255);
      stroke(r, g, b, alpha);
      float x1 = radius[i] * cos(angleX[i] + j * PI / 5);
      float y1 = radius[i] * sin(angleY[i] + j * PI / 5);
      float z1 = zPos[i] + random(-10, 10); // Z eksenindeki dalgalanma
      float x2 = radius[i] * cos(angleX[i] + j * PI / 5 + PI);
      float y2 = radius[i] * sin(angleY[i] + j * PI / 5 + PI);
      float z2 = zPos[i] + random(-10, 10);
      line(x1, y1, z1, x2, y2, z2); // Dalgalı çizgiler
    }
  }
}
