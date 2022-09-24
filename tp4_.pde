//llamar class
MaquinaDePeluches inicio;
Peluches objetoPeluche;
Peluches objetoPeluche2;

void setup () {
  size ( 400, 400);
  inicio = new MaquinaDePeluches(50, 50, 100, 100);
  objetoPeluche= new Peluches (50, 50, 50, 50);
  objetoPeluche2= new Peluches (50, 50, 100, 100);
}

void draw() {
  //llamar método
  inicio.display();
  objetoPeluche.p();
  objetoPeluche2.p();
}
