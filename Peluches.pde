class Peluches {
  //añadir campos
  int ancho, alto;
  float x, y;
  PImage peluche = loadImage ("peluche.png");

  //constructor
Peluches (int tempAncho, int tempAlto, float tempX, float tempY) {
    ancho = tempAncho;
    alto = tempAlto;
    x = tempX;
    y= tempY;
  }
  
//crear metodo
  void p () {
  image(peluche, ancho, alto, x, y);
  }
}
