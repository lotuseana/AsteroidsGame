Spaceship jet = new Spaceship();
Star[] stars = new Star[100];
public void setup() 
{
  size(400,400);
  for (int i =0; i<stars.length;i++){
    stars[i]=new Star();
  }
}
public void draw() 
{
  background (0);
  noStroke();
  jet.move();
  jet.show();
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }
}
public void keyPressed(){
   if (key == 'd') {
    jet.turn(10);
  } else if (key == 'a') {
    jet.turn(-10);
  } else if (key == 'w') {
    jet.accelerate(1);
  } else if (key == 's') {
    jet.accelerate(-1);
  } else if (key == 'r') {
    jet.hyperspace();
  }
}
