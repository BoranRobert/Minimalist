
MinimalistLib square = new MinimalistLib();

void setup(){
  
  size(800,800);
  background(255,255,255);
  smooth(8);
  noLoop();

}

void draw(){
  

  square.drawGrid(-3.4*100,-3.4*100,100,100,-3);
  
  
  //uncomment below to save your art
  //save("OUT/frame1.png"); 
  
}
