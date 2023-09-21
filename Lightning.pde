    int startX = ((int)(Math.random()*200)+50);
  int startY = -20;
  int endX = 0;
  int endY = 0;
    int startX2 = 0;
  int startY2 = 0;
  int endX2 = 0;
  int endY2 = 0;
    int startX3 = 0;
  int startY3 = 0;
  int endX3 = 0;
  int endY3 = 0;
    float stw1 = 20;
    float stw2 = 0;
  
void setup(){
  size(300,300);
  strokeWeight(stw1);
  background (0,0,0);
  frameRate(120);
}
void draw(){
  stroke(255,255,255);
    endX = startX + ((int)(Math.random()*40) - 20);
    endY = startY + ((int)(Math.random()*30));
    stw2 = stw1;
    purple(startX, startY, endX, endY,20);
    stroke(255,255,255);
    strokeWeight(stw1);
    line (startX, startY, endX, endY);
    if (stw1 >= 1){
    stw1 -= 1;
    strokeWeight(stw1);}
    if ((Math.random()< 0.2) && (endY>10) && (endY<290)){
      branch();
    }
    startX = endX;
    startY = endY;
}
void mousePressed(){
  background (0,0,0);
  reset(); 
}
void reset(){
    startX = ((int)(Math.random()*200)+50);
    startY = -20;
    endX = 0;
    endY = 0;
    stw1=20;
}
void branch(){
  stroke (255,255,255,255);
  startX2 = endX;
  startY2 = endY;
  for (int i= 0; i<30; i++){
     strokeWeight(2);
    if(endX < startX){
  endX2 = startX2 + ((int)(Math.random()*20)-15);
  endY2 = startY2 + ((int)(Math.random()*10));
    } else{
   endX2 = startX2 + ((int)(Math.random()*20)-5);
   endY2 = startY2 + ((int)(Math.random()*10));}
  stw2 = 2;
  purple(startX2, startY2, endX2, endY2,2);
  stroke (255,255,255,255);
  line (startX2, startY2, endX2, endY2);
  if ((Math.random()< 0.1)){
      branch2();
    }
  startX2 = endX2;
  startY2 = endY2;
  }
}
void branch2(){
  startX3 = endX2;
  startY3 = endY2;
  strokeWeight(0.5);
  stroke(187, 149, 219);
  for (int i= 0; i<10; i++){
    if(endX2 < startX2){
  endX3 = startX3 + ((int)(Math.random()*20)-15);
  endY3 = startY3 + ((int)(Math.random()*20)-5);
    } else{
   endX3 = startX3 + ((int)(Math.random()*20)-5);
   endY3 = startY3 + ((int)(Math.random()*20)-5);}
  line (startX3, startY3, endX3, endY3);
  startX3 = endX3;
  startY3 = endY3;
  }
}

void purple (int stx, int sty, int enx, int eny, int wid){
  int o = 255;
  int stx2 = stx;
  int sty2 = sty;
  int enx2 = enx;
  int eny2 = eny;
  strokeWeight(1);
  for (int c = 0; c<wid; c++){
    stroke (186, 110, 219, o);
    line (stx+stw2/2,sty+stw2/2,enx+stw2/2,eny+stw2/2);
    line (stx2-stw2/2,sty2+stw2/2,enx2-stw2/2,eny2+stw2/2);
    o = o - 20;
    stx++;
    sty++;
    enx++;
    eny++;
    stx2--;
    sty2++;
    enx2--;
    eny2++;
  }
}





