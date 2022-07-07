String pantalla;
PFont fuenteNueva2;
float []botonLinea = {181, 232, 35, 15};//{132, 240, 260, 240}; //ubicacion de la linea que será el BOTON de instrucciones
PImage sky, nube, personajePerro, personajeChico, personajeChica, fondo1, fondo2, fondo3, fondo4;
int tiempo;
int t=1;
int n=1;
float a=0;
float n1, n2, n3, n4, n5, n6, n7, n8, n9, c1, c2, c3, c4, c5,h1,h2,h3,h4,h5,h6,h7,h8;
boolean escogePerro, escogeChica, escogeChico;



void setup() {
  size (400, 400);
  //
  escogePerro=false;
  escogeChica=false;
  escogeChico=false;
  //imagenes
  sky = loadImage ("sky.png");
  nube = loadImage ("nube.png");
  personajePerro = loadImage("personajePerro.png");
  personajeChica= loadImage ("personajeChica.png");
  personajeChico= loadImage ("personajeChico.png");
  fondo1= loadImage ("fondo1.png");
  fondo2= loadImage ("fondo2.png");
  fondo3= loadImage ("fondo3.png");
  fondo4= loadImage ("fondo4.png");

  //Ajustes de texto
  textSize(24);
  textAlign (CENTER, CENTER);

  //carga de nuevas fuente
  fuenteNueva2 = loadFont("cuerpo.vlw");

  //pantalla: Estado
  pantalla = "inicio";
}

void draw () {
  //  frameRate (1);
  println (mouseX, mouseY);
  image(sky, 0, 0, 1000, 400);
  //PRIMERA PANTALLA (INICIO)
  if (pantalla.equals("inicio")) {
    n++;
    n1=-10+n; 
    n2=100; 
    n3=400; 
    n4=50+n; 
    n5=120; 
    n6=-50+n; 
    n7=140; 
    n8=100+n; 
    n9=160;
    image(fondo1, n1, n2, n3, n3);
    image(fondo2, n4, n5, n3, n3);
    image(fondo3, n6, n7, n3, n3);
    image(fondo4, n8, n9, n3, n3);

    //BOTON 
    smooth(); 
    stroke (100, 154, 206);
    pushStyle();
    if ((mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0], botonLinea[1], botonLinea[2], botonLinea[3]);
    popStyle();

    //titulo: nombre del juego
    fill(255);
    textFont(fuenteNueva2);
    textSize(10);
    text ("dear sky...", width/2, height/4+50);

    // cuerpo: "start"
    fill(255);
    textFont(fuenteNueva2);
    textSize(10);
    text("start", width/2, height/2+40);
  } 

  //SEGUNDA PANTALLA (INSTRUCCIONES)
  else if (pantalla.equals("instrucciones")) {
    //variables
    c1=width/3-30; 
    c2=height/3+45; 
    c3=45; 
    c4=width/3+40; 
    c5=width/3+107; 

    //imagenes
    image(sky, 0, 0, 1000, 400);
    image (personajePerro, c1, c2, c3, c3);
    image (personajeChica, c4, c2, c3, c3);
    image (personajeChico, c5, c2, c3, c3);
    //texto
    text (pantalla, width/2, height/3-50);
    text ("Toca una tecla para avanzar a traves del", width/2, height/3-20);
    text ("cielo sin tocar las nubes antes que el contador llegué a 100", width/2, height/3-10);
    text ("¡suerte!", width/2, height/3+200);
    text ("seleccion de personaje", width/2, height/3+30);

    // BOTON start
    smooth(); 
    stroke (100, 154, 206);
    strokeCap(ROUND); 
    pushStyle();
    if ((mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0], botonLinea[1], botonLinea[2], botonLinea[3]);
    popStyle();
    text("start", width/2, height/2+40);

    //escoger personaje - PERRO
    pushStyle();
    if ((mouseX>width/3-30)&& (mouseX<width/3-30 + 45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
      tint(0, 153, 204);
      image (personajePerro, width/3-30, height/3+45, 45, 45);
    } 
    popStyle();

    // escoger personaje - CHICA
    pushStyle();
    if ((mouseX>width/3+40)&& (mouseX<width/3+40 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
      tint(0, 153, 204);
      image (personajeChica, width/3+40, height/3+45, 45, 45);
    } 
    popStyle();

    //escoger personaje - CHICO
    pushStyle();
    if ((mouseX>width/3+107)&& (mouseX<width/3+107 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
      tint(0, 153, 204);
      image (personajeChico, width/3+107, height/3+45, 45, 45);
    } 
    popStyle();
  } 

  //TERCERA PANTALLA (JUEGO)
  else if (pantalla.equals("jugando")) {
    t+=3;

    //movimiento de personaje
    if (keyPressed) {
      a=a+8;
    }

    //imagenes
    image(sky, 0, 0, 1000, 400);
    if (escogePerro) {
      image (personajePerro, width/3-120 +a, height/3+45, 45, 45);
    }
    if (escogeChico) {
      image (personajeChico, width/3-120 +a, height/3+45, 45, 45);
    }
    if (escogeChica) {
      image (personajeChica, width/3-120 +a, height/3+45, 45, 45);
    }
    //variables
    h1= height/2-220;
    h2= height/2+190;
    h3=  height/2+280;
    h4= height/2+450;
    h5= height/2+100;
    h6= height/2-200;
    h7= height/2-270;
    h8= height/2-500;
   
    image (fondo1, width/2-200, h1+t, 100, 100);
    // image (fondo4, width/2-200, height/2+100-t, 100, 100);
    // image (fondo2, width/2-120, height/2-t, 100, 100);
    image (fondo3, width/2-120, h2-t, 100, 100);
    image (fondo4, width/2-120, h3-t, 100, 100);
    //  image (fondo2, width/2-120, height/2+390-t, 100, 100);
    image (fondo1, width/2-120, h4-t, 100, 100);
    image (fondo3, width/2-30, h5-t, 100, 100);
    image (fondo2, width/2-30, h6+t, 100, 100);
    //  image (fondo4, width/2+50, height/2-130+t, 100, 100);
    image (fondo3, width/2+50, h7+t, 100, 100);
    // image (fondo1, width/2+50, height/2-390+t, 100, 100);
    image (fondo4, width/2+50, h8+t, 100, 100);


    // linea de meta
    for (int j=38; j<height; j++) {
      for (int i=0; i<height; i++) {
        if ((i+j)%2==0) {
          fill (70, 107, 139);
        } else {
          fill(0);
        }  
        noStroke();
        rect (j*10, i*10, 10, 10);
      }
    }
    //reloj
    tiempo++;
    text(tiempo, width-60, height/4-70);
    if (tiempo>=100) {
      pantalla="perder";
    }
  
  } 

  //CUARTA PANTALLA (GANAR)
  else if (pantalla.equals("ganar")) {
    image(sky, 0, 0, 1000, 400);
    text("Ganaste", width/2, height/3);
    text ("¿Quieres volver a jugar?", width/2, height/3+50);
  } 

  //QUINTA PANTALLA (PERDER Y CREDITOS)
  else if (pantalla.equals("perder")) {
    image(sky, 0, 0, 1000, 400);
    fill(255);
    text("UPS! PERDISTE", width/2, height/3);
    text ("creado por Fabiola J. Veracierta V.", width/2, height/3+30);
    text ("agradecimientos a jereciraptor por -la seleccion de personaje", width/2, height/3+70);
    text ("Legajo 91399/9", width/2, height/3+40);

    //linea que será el BOTON de instrucciones
    smooth(); 
    stroke (100, 154, 206);
    strokeCap(ROUND); 
    pushStyle();
    if ((mouseX>botonLinea[0]-15 )&& (mouseX<botonLinea[0]-15 + botonLinea[2]+30) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0]-15, botonLinea[1], botonLinea[2]+30, botonLinea[3]);
    popStyle();
    text("volver a jugar", width/2, height/2+40);
  }
}

void mousePressed() {
  //evento que cambia de inicio a instrucciones
  if (pantalla.equals("inicio") && (mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    pantalla = "instrucciones";
  } else if (pantalla.equals("instrucciones") && (mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    pantalla = "jugando";
  } else if  (pantalla.equals ("perder")&&(mouseX>botonLinea[0]-15 )&& (mouseX<botonLinea[0]-15 + botonLinea[2]+30) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    reiniciar();
  }
  //pantalla jugando
  else if (pantalla.equals ("jugando")){
    pantalla="ganar";}
    
  //escoge perro
  if ((mouseX>width/3-30)&& (mouseX<width/3-30 + 45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
    escogePerro=true;
  }
  //escoge chico
  if ((mouseX>width/3+107)&& (mouseX<width/3+107 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
    escogeChico=true;
  }
  //escoge chica
   if ((mouseX>width/3+40)&& (mouseX<width/3+40 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
    escogeChica=true;
  }
}
void reiniciar() {
  pantalla = "inicio";
  tiempo = 0;
   
}
