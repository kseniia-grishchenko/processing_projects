class Stick{
  float size;
  float speed;
  float x;
  float y;
  
  Stick(float stick_size, float stick_speed, float xx, float yy){
    size = stick_size;
    speed = stick_speed;
    x = xx;
    y = yy;
  }
  
  void move_up(){
    y -= speed;
  }
  
  void move_down(){
    y += speed;
  }
  
  void to_draw(){
    line(x, y, x, y + size);
  }
  
 
  
  
}
