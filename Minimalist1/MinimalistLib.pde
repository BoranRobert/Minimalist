class MinimalistLib{
  
  
  void drawA1(float x,float y,float w,float h){
  
    float cx,cy; //center square
    int df; //offset step
    int skip; //skip drawing some squares
    int depth; //max nr. of squares to draw
    int distf; //offset distance
    
    cx=width/2-w/2;
    cy=height/2-h/2;

      strokeWeight(1);
      stroke(0,0,0);

      depth=15; //initialize depth
      distf=3; //initialize offset distance
      df=0; //initialize offset step
      skip=int(random(0,depth+1)); //randomize skip step
      for(int i=0;i<=depth;i++){
        df=df+distf;
        if(i==skip){
        }else{
        fill(random(180,255),random(180,255),random(180,255));
        rect(x+cx+df,y+cy+df,w-(2*df),h-(2*df));
        }
      }
      
      //draw a triangle artifact
      noStroke();
      fill(255,0,0,50);
      
      triangle(x+cx,y+cy,x+cx,y+cy+h,x+cx+w,y+cy);
      
  }
  
  void drawA2(float x,float y,float w,float h){
  
    float cx,cy; //center square
    int df; //offset step
    int skip; //skip drawing some squares
    int depth; //max nr. of squares to draw
    int distf; //offset distance
    int choice; //choose the triangle artifact position
    
    cx=width/2-w/2;
    cy=height/2-h/2;

      strokeWeight(1);
      stroke(0,0,0);
      fill(255,255,255);
      
      depth=15; //initialize depth
      distf=3; //initialize offset distance
      df=0; //initialize offset step
      skip=int(random(0,depth+1)); //randomize skip step
      for(int i=0;i<=depth;i++){
        df=df+distf;
        if(i==skip){
        }else{
        rect(x+cx+df,y+cy+df,w-(2*df),h-(2*df));
        }
      }
      
      //draw a triangle artifact
      noStroke();
      fill(0,0,0,40);
      
      choice=int(random(1,5));
      
      switch(choice){
        case 1:
          triangle(x+cx+w,y+cy,x+cx+(w/2),y+cy+(h/2),x+cx+w,y+cy+h);
          break;
        case 2:
          triangle(x+cx,y+cy+h,x+cx+(w/2),y+cy+(h/2),x+cx+w,y+cy+h);
          break;
        case 3:
          triangle(x+cx,y+cy,x+cx+(w/2),y+cy+(h/2),x+cx,y+cy+h);
          break;
        case 4:
          triangle(x+cx,y+cy,x+cx+(w/2),y+cy+(h/2),x+cx+w,y+cy);
          break;
      }
      
  }
  
  void drawRandom(float x,float y,float w,float h){
  
    int choice;
    
      choice=int(random(1,3));
      switch(choice){
        case 1:
          drawA1(x,y,w,h);
          break;
        case 2:
          drawA2(x,y,w,h);
          break;
      }
  }
  
  void drawGrid(float x,float y,float w,float h,float f){
    
    for(int i=0;i<=7;i++){
      for(int j=0;j<=7;j++){
        drawRandom(x+(i*(w+f)),y+(j*(h+f)),w,h);
      }
    }
  }
  

}
