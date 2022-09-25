class FondoN {
  //añadir campos
  int ancho, alto;
  float x, y;
  PImage fondo = loadImage ("fondo.png");
  PFont fuenteNueva01= loadFont ("titulo01.vlw");

  //constructor
  FondoN () {
    ancho = 400;
    alto = 600;
    x = 0;
    y= 0;
  }

  //crear metodo
  void titulo () {
    image(fondo, x, y, ancho, alto);
    textFont(fuenteNueva01);
    fill(255, 223, 43);
    textAlign(CENTER);
    text ("PESCA", 200, 90);
  }
    
}
