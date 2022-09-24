class MaquinaDePeluches {
  //añadir campos
  int ancho, alto;
  float x, y;
  PImage fondo = loadImage ("fondo.jpg");

  //constructor
  MaquinaDePeluches (int tempAncho, int tempAlto, float tempX, float tempY) {
    ancho = tempAncho;
    alto = tempAlto;
    x = tempX;
    y= tempY;
  }
  
//crear metodo
  void display () {
  image(fondo, ancho, alto, x, y);
  }
 
}
