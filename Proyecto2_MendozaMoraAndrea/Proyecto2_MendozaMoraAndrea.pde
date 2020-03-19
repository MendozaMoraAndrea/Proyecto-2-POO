import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
Box2DProcessing box2d;
ArrayList<Boundary> boundaries;
ArrayList<CustomShape> polygons;
pantalla p;
int pant = 0;

void setup(){
  
  size(640,360);
  smooth();
  p = new pantalla();

}

void draw(){
  
  switch(pant){
    
    case 0:    
    p.inicio();   
    break;
    
    case 1:    
    p.menu();    
    break;
    
    case 2:    
    p.crear();   
    break;
    
    case 3:    
    p.reset();    
    break;
    
  }
  
}
