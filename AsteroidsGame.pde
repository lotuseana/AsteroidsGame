Spaceship jet = new Spaceship();
Star[] stars = new Star[150];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
boolean fired = false;
public void setup() 
{
  frameRate(100);
  size(500,500);
  for (int i =0; i<stars.length;i++){
    stars[i]= new Star();
  }
  for (int i =0; i<10;i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background (0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }
  for (int i =0; i<rocks.size();i++){
   for (int j=0; j<16; j++){
     for (int k=0; k<11; k++){
       float d= dist(jet.getX(k), jet.getY(k), rocks.get(i).getX(j),rocks.get(i).getY(j));
       if (d<=1){
         fired = true;
       }
     }
   }
   rocks.get(i).show();
   rocks.get(i).move();
   if (fired ==true){
     rocks.remove(i);
   } 
   fired = false;
  }
if (jet.getOpac() >= 20){
  jet.move();
  jet.show();
}  
jet.slow();
movement();
}

public void movement(){
   if (key == 'd') {
    jet.turn(4);
  } else if (key == 'a') {
    jet.turn(-4);
  } else if (key == 'w') {
    jet.accelerate(0.1);
  } else if (key == 's') {
    jet.deccelerate(0.05);
  } else if (key == 'r'){
    jet.fade();
  }
}

public void keyReleased(){
  if (key=='r'){
    jet.hyperspace();
  }
  key = 'p';
}
