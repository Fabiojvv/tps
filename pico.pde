class Pico {
 //añadir campo
  int ancho= 60;
  int alto=60;
  float xpos, ypos, xspeed;
  PImage pico = loadImage ("pico.png");

 //constructor
  Pico (float tempX, float tempY, float tempXspeed) {
    ancho=60;
    alto= 60;
    xpos = tempX;
    ypos = tempY;
    xspeed = tempXspeed;
  }
  
  //metodos
  void ubiPico (){
     image (pico, xpos, ypos, 60,60 );
  }
  void moviPico(){
    xpos += xspeed;
    if (xpos > width -100 ){
      xpos =10;
    }
  }
}
