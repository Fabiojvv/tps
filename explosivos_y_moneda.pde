class ExplosivosYMoneda {
  //añadir campos
  int ancho= 20;
  int alto=20;
  float x, y;
  PImage bomba = loadImage ("bomba.png");
  PImage moneda = loadImage ("moneda.png");

  //constructor
  ExplosivosYMoneda (float tempX, float tempY) {
    ancho=60;
    alto= 60;
    x = tempX;
    y = tempY;
  }

  //metodos
  void ubiBomba () {
    image (bomba, x, y, ancho, alto);
  }
  
  void ubiMoneda (){
    image (moneda, x, y, ancho,alto);
  }
}
