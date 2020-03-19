class pantalla{  
  pantalla(){
  }
  
void inicio(){
  pushMatrix();
   background(25,100,50);
   fill(238,40,24);
  textSize(80);
  text("Be your own Picasso",150,100);
  frameRate(10);
  fill(255,255,134);
  textSize(60);
  text("Presiona E para comenzar el juego", 350,600); 
  popMatrix();
  
  if(key == 'e' || key == 'E'){
    pant = 1;
  }
  
}
  
void menu(){
  pushMatrix();
  fill(37,40,80);
  textSize(100);
  text("En este juego podras crear una pintura", height/2,400);
  textSize(20);
  text("Solo presiona el mouse y apareceran figuras", height/2,500);
    textSize(20);
  text("Usa tu imaginacion, presiona E para empezar", height/2,650); 
  popMatrix();
  
    if(key == 'e' || key == 'E'){
    pant = 2;
  }
  
}

void crear(){ 
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -20);
 
  polygons = new ArrayList<CustomShape>();
  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(width/4,height-5,width/2-50,10,0));
  boundaries.add(new Boundary(3*width/4,height-50,width/2-50,10,0));
  boundaries.add(new Boundary(width-5,height/2,10,height,0));
  boundaries.add(new Boundary(5,height/2,10,height,0));  
  
  background(25,100,50);
  box2d.step();
  for (Boundary wall: boundaries) {
    wall.display();
  }
  for (CustomShape cs: polygons) {
    cs.display();
  }
  for (int i = polygons.size()-1; i >= 0; i--) {
    CustomShape cs = polygons.get(i);
    if (cs.done()) {
      polygons.remove(i);
    }
  }
  
  if (mousePressed == true) {
    CustomShape cs = new CustomShape(mouseX,mouseY);
  polygons.add(cs);
  }
   
  textSize(30);
  text("presiona A para acabar el juego" );
if(key == 'a' || key == 'A'){
    pant = 3;
  
}

void reset(){
  pushMatrix();
  background(76,81,109);
  textSize(25);  
  fill(255,193,34);
  text("Eres un artista, sigue usando el juego para divertirte",700,700);
  textSize(70);
  text("JUEGO TERMINADO :( ", 400,100);
  textSize(30);
  text("Presiona A para reiniciar", 100,50);  
  popMatrix();
  
  if(key == 'e' || key == 'E'){
    pant = 0;
  
      
  }  
}
  
}
