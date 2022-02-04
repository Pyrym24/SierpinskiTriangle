  int z = 0;
  int g = 200;
public void setup(){
  background(0);
  size(300,300);
  
}
public void serpinski(int x, int y,int len){
  if(len<10){
  triangle(x,y,x-len,y,x-len/2,y-len);
}else{
  len = len/2;
  serpinski(x,y,len);
  serpinski(x+len/2,y-len,len);
  serpinski(x+len,y,len);
}
}
public void draw(){
  background(0);
  serpinski(0,300,g);
}
public void mouseDragged(){
  stroke(0+z,0,0+z);
  z+=2;
  if(pmouseX>150){
    g++;
  }
  if(pmouseX<150){
    g--;
  }
}
