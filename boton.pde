class Boton {
  //añadir campos
  int x ;
  int y;
  int ancho;
  int alto;
  PFont fuenteNueva01= loadFont ("titulo01.vlw");


//constructor
Boton () {
  x = 130;
  y = 490;
  ancho = 137;
  alto =40;
}

//metodos
void botonPress (){
  smooth(); 
stroke (255, 223, 43);
pushStyle();
if ((mouseX>x )&& (mouseX<x + ancho) && (mouseY>y) && (mouseY < y+alto)) {
  fill(255, 223, 43);
} else { 
  stroke (201, 1, 1);
  fill(201, 1, 1);
}
rect(x, y, ancho, alto);
popStyle();

//Texsto: press
    fill(255);
    textFont(fuenteNueva01);
    textSize(20);
    text("press", width/2, height-85);
}
}
