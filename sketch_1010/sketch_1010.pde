Grid g;
Buttons btn1;
Buttons btn2;
Buttons btn3;
Shapes  a1;
Shapes  b1;
Shapes  c1;
Shapes s1 = null;
ArrayList<Shapes> GO;
boolean pieceInHand = false;
int regen = 3;

int cols = 10;
int rows = 10;

void setup() {
    size(350,350);
  
    g = new Grid(10,10);
    btn1 = new Buttons(155,250,50,20);
    btn2 = new Buttons(80,250,50,20);
    btn3 = new Buttons(230,250,50,20);
  
    // randomly generating shapes
  
    int n = (int) (Math.random()*3);
    if (n==0){
         a1 = new shapeA(90,275);
    }else if (n==1){
         a1 = new shapeB(90,275);
    }else{
         a1 = new shapeC(90,275);
    }
  
    n = (int) (Math.random()*3);
    if (n==0){
         b1 = new shapeA(160,275);
    }else if (n==1){
         b1 = new shapeB(160,275);
    }else{
         b1 = new shapeC(160,275);
    }
    
    n = (int) (Math.random()*3);
    if (n==0){
         c1 = new shapeA(240,275);
    }else if (n==1){
         c1 = new shapeB(240,275);
    }else{
         c1 = new shapeC(240,275);
    }
    //a1 = new shapeA(90,275);
    //b1 = new shapeB(160,275);
    //c1 = new shapeC(240,275);
}


  
void draw() {
    background(255); 
    g.display();
    btn1.display();
    btn2.display();
    btn3.display();
  //if(b1.isover()&&mousePressed){
  //  grid[2][3].changecolor();
  //}
  
    if (a1.visible){
        a1.display();
    }
    if (b1.visible){
        b1.display();
    }
    if (c1.visible){
        c1.display();
    }
  
    a1.dragShape();
    b1.dragShape();
    c1.dragShape();
    // no need
    //g.changeCellColor();
    
    if (regen==0){
            int n = (int) (Math.random()*3);
        if (n==0){
             a1 = new shapeA(90,275);
        }else if (n==1){
             a1 = new shapeB(90,275);
        }else{
             a1 = new shapeC(90,275);
        }
      
        n = (int) (Math.random()*3);
        if (n==0){
             b1 = new shapeA(160,275);
        }else if (n==1){
             b1 = new shapeB(160,275);
        }else{
             b1 = new shapeC(160,275);
        }
        
        n = (int) (Math.random()*3);
        if (n==0){
             c1 = new shapeA(240,275);
        }else if (n==1){
             c1 = new shapeB(240,275);
        }else{
             c1 = new shapeC(240,275);
        }
            regen=3;
    }
    //mousePressed();
    //println(mouseX + ", " + mouseY);
    println(g.validX(mouseX) + ", " + g.validY(mouseY));
    println("g.gAry (0,0) value " + g.gAry[0][0]);
  
    //println((int)(Math.random()*3));
   //if ( s1 != null) {
   //    println("s1.length= " + s1.sAry.length ); 
   //    println("a1 =" + a1.sAry.length);  
   //    println(s1);
   // }
   g.clearg();
   if(EndGame()){
   
     noCursor();
   }
}


   int num=0;

//void mouseClicked(){
  //   println( g.convertY(mouseY));
     
  //}


  private void checkIfAShapeIsSelected () {
      if ( a1.visible  && a1.contains(mouseX, mouseY)) {
          a1.setFollowMouse(true);
          s1 = a1;
          println("\n=========================\nsetting s1 to a1\n  s1 = " + s1 + ", a1 = " + a1 +  "\n=========================\n"); 
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );              
      }
      else if ( b1.visible && b1.contains(mouseX, mouseY) ){
          b1.setFollowMouse(true);
          s1=b1;
          println("\n=========================\nsetting s1 to b1\n  s1 = " + s1 + ", b1 = " + b1 +  "\n=========================\n");
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );          
      }
      else if ( c1.visible && c1.contains (mouseX, mouseY) )  {
          c1.setFollowMouse(true);
          s1=c1;
          println("\n=========================\nsetting s1 to c1\n  s1 = " + s1 + ", c1 = " + c1 +  "\n=========================\n");
          pieceInHand = true;
          println("set pieceInHand to " + pieceInHand );              
      }  
  }  


  void mousePressed() {
    if(!EndGame()){
      if (!pieceInHand) 
      {     
          
        
          //if (mouseX<110) { //<>//
          //    a1.setFollowMouse(true);
          //    s1 = a1;
          //    println("\n=========================\nsetting s1 to a1\n  s1 = " + s1 + ", a1 = " + a1 +  "\n=========================\n");
              
          //} else if (mouseX<150) {
          //    b1.setFollowMouse(true);
          //    s1=b1;
          //    println("\n=========================\nsetting s1 to b1\n  s1 = " + s1 + ", b1 = " + b1 +  "\n=========================\n");
          //} else {
          //    c1.setFollowMouse(true);
          //    s1=c1;
          //    println("\n=========================\nsetting s1 to c1\n  s1 = " + s1 + ", c1 = " + c1 +  "\n=========================\n");              
          //}       
          //pieceInHand = true;
          //println("set pieceInHand to " + pieceInHand );
          checkIfAShapeIsSelected();          
      }} 
      //else if (pieceInHand && g.validLocation(g.validX(mouseX), g.validY(mouseY))) {
      //    println("\n================================\n=  about to update the array with the shape. s1 =" + s1 + "\n===========================\n");
      //    g.dropShape(s1.sAry, g.validX(mouseX), g.validY(mouseY)); // want to make dropShape a boolean
      //    s1.visible=false;
      //    s1.setFollowMouse(false);
      //    pieceInHand = false;
      //} else if (pieceInHand){
      //    println("switch off shape to follow the mouse" );          
      //    s1.setFollowMouse(false);
      //    //s1 = null;
      //    pieceInHand = false;
      //}
  }
  
  
  void mouseReleased() {
      if ( pieceInHand ) {          
          pieceInHand = false;
          println("set pieceInHand to "  + pieceInHand);
          println("switch off shape to follow the mouse" );
          s1.setFollowMouse(false);
          
          if ( g.validLocation(g.validY(mouseY), g.validX(mouseX))) {
              println("\n================================\n=  about to update the array with the shape. s1 =" + s1 + "\n===========================\n");
              if ( g.dropShape(s1.sAry, g.validY(mouseY), g.validX(mouseX)) ){ // want to make dropShape a boolean
                    s1.visible=false;
                    s1 = null;
                    regen-=1;
              }
          } else {                        
              s1.setFollowMouse(false);              
          }          
      }}
      
boolean EndGame(){
   int num1=0;
   int num2=0;
   if(a1.visible){
     num1++;
     if(g.GameOver(a1.sAry)){
       num2++;}}
   if(b1.visible){
     num1++;
     if(g.GameOver(b1.sAry)){
       num2++;}}
   if(c1.visible){
     num1++;
     if(g.GameOver(c1.sAry)){
       num2++;}}
   if(num1==num2){
     println("true");
     return true;
     
   }
   println("false");
   return false;
   
  }  
  
