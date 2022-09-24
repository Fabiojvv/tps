class MaquinaDePeluches {
//añadir campos
  PImage fondo;
  int ancho, alto;
  float x, y;
}
//constructor
MaquinaDePeluches (int 50, int 50, float x, float y, PImage fondo) {
ancho= 50;
alto=50;
x=100;
y=100;
fondo = loadImage ("fondo.jpg");
}

void display (){
 image(fondo, 100,100,50,50);
}



MaquinaDePeluches inicio;

void setup (){
  size 400,400);
  inicio = new MaquinaDePeluches(100,100,50,50);
}

void draw(){
  inicio.display();
}
