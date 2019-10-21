void setup()
{
  size(450, 300);
  noLoop();
}
void draw()
{
  background(192);
  int sum = 0;
  for (int j = 0; j < 3; j++){
    for (int i = 0; i < 9; i++){
      Die hubba = new Die(50*i, 75 + (50 * j));
      hubba.roll();
      hubba.show();
      sum += hubba.rollDie;
    }
  }
  text("The dice add up to " + sum + ".", 225, 250);
   

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, rollDie;
 
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    rollDie = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    noFill();
    rect(myX, myY, 50, 50, 7);
    fill(0);
    if(rollDie == 1)
      ellipse(myX + 25, myY + 25, 10);
     
    if(rollDie == 2){
      ellipse(myX + 10, myY + 40, 10);
      ellipse(myX + 40, myY + 10, 10);
    }
   
    if(rollDie == 3){
      ellipse(myX + 10, myY + 40, 10);
      ellipse(myX + 40, myY + 10, 10);
      ellipse(myX + 25, myY + 25, 10);
    }
   
    if(rollDie == 4){
      ellipse(myX + 10, myY + 40, 10);
      ellipse(myX + 40, myY + 10, 10);
      ellipse(myX + 10, myY + 10, 10);
      ellipse(myX + 40, myY + 40, 10);
    }
   
    if(rollDie == 5){
      ellipse(myX + 10, myY + 40, 10);
      ellipse(myX + 40, myY + 10, 10);
      ellipse(myX + 10, myY + 10, 10);
      ellipse(myX + 40, myY + 40, 10);
      ellipse(myX + 25, myY + 25, 10);
    }
   
    if(rollDie == 6){
      ellipse(myX + 10, myY + 40, 10);
      ellipse(myX + 40, myY + 10, 10);
      ellipse(myX + 10, myY + 10, 10);
      ellipse(myX + 40, myY + 40, 10);
      ellipse(myX + 10, myY + 25, 10);
      ellipse(myX + 40, myY + 25, 10);
    }
  }
}
