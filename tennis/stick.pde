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
  
  boolean check_wall_up(){
    if(y < 0)
      return true;
    else return false;
  }
  
  boolean check_wall_down(){
    if(y > height - size)
      return true;
    else return false;
  }
  
  void stick_right_ai(Ball ball){
    if(y + size/2 < ball.y) move_down();
    if(y + size/2 > ball.y) move_up();
  }
}
