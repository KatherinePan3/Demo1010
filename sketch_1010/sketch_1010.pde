Grid g;
Buttons b1;
Buttons b2;
Buttons b3;
shapeA A1;
shapeB B1;
shapeC C1;
Patterns p1;
boolean pieceInHand = false;

int cols = 10;
int rows = 10;

void setup() {
  size(350,350);
  
  g = new Grid(10,10);
  b1 = new Buttons(155,250,50,20);
  b2 = new Buttons(80,250,50,20);
  b3 = new Buttons(230,250,50,20);
  p1 = new Patterns(90,270);
  p1.makePattern(1);
  
  A1 = new shapeA(90,275);
  B1 = new shapeB(240,275);
  C1 = new shapeC(160,275);
}


  
void draw() {
  background(255); 
  g.display();
  b1.display();
  b2.display();
  b3.display();
  //if(b1.isover()&&mousePressed){
  //  grid[2][3].changecolor();
  //}
  p1.display();
  A1.display();
  B1.display();
  C1.display();
  A1.dragShape();
  B1.dragShape();
  C1.dragShape();
 
}

  void mousePressed(){
    if (!pieceInHand){
      if (mouseX<155){
      A1.toggleFollow();
    }else if(mouseX<230){
      B1.toggleFollow(); 
    }else{
      C1.toggleFollow();
    }
    pieceInHand=true;
    }
   //if (pieceInHand && g.validLocation() 
  }

