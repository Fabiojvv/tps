

//musica de fondo
import ddf.minim.*;
Minim minim;
AudioPlayer player;

//llamar class
FondoN inicio;
ExplosivosYMoneda bomba01;
ExplosivosYMoneda bomba02;
ExplosivosYMoneda bomba03;
ExplosivosYMoneda bomba04;
ExplosivosYMoneda moneda;
Pico pico;
Boton boton;

void setup () {
  size ( 400, 600);
  //musica
  minim = new Minim (this);
  player = minim.loadFile("audio.wav");
  
  //fondo
  inicio = new FondoN();
  
  //bomba
  bomba01 = new ExplosivosYMoneda (90, 300);
  bomba02 = new ExplosivosYMoneda (244, 305);
  bomba03 = new ExplosivosYMoneda (55, 460);
  bomba04 = new ExplosivosYMoneda (190, 370);
  
  //objeto moneda
  moneda = new ExplosivosYMoneda (300, 350);
  
  //pico
  pico = new Pico (600, 210, 1);
  
  //boton
  boton = new Boton ();
}

void draw() {
  //musica
   player.play();
 
  //truco para ubicar coordenadas
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  //llamar método
  inicio.titulo();
  bomba01.ubiBomba ();
  bomba02.ubiBomba ();
  bomba03.ubiBomba ();
  bomba04.ubiBomba ();
  moneda.ubiMoneda ();
  pico. ubiPico ();
  pico. moviPico();
  boton. botonPress();
}
