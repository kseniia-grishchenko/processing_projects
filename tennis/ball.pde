class Ball {
  float r;
  float x;
  float y;
  float speed_x;
  float speed_y;
  
  Ball(float rr, float xx, float yy, float speed_xx, float speed_yy) {
    r = rr;
    x = xx;
    y = yy;
    speed_x = speed_xx;
    speed_y = speed_yy;
  }
  
  void change_coordinates() {
    x += speed_x;
    y += speed_y;
  }
  
  void check_wall() {
     if(y < r || y > height - r) {
      speed_y *= -1;
    }
  }
  
  void to_draw(){
    ellipse(x, y, 2 * r, 2 * r);
}
  
  void check_stick_left(Stick stick){
    if(y > stick.y && y < stick.y + stick.size)
      if(x > stick.x + r + speed_x && x <= stick.x + r)
      speed_x *= -1.05;
  }
    
  void check_stick_right(Stick stick){
    if(y > stick.y && y < stick.y + stick.size)
      if(x < stick.x - r + speed_x && x >= stick.x - r)
      speed_x *= -1;
  }
  
  void check_left_lose(){
    if(x < 0){
      begin();
      right_score++;
    }
  }
  
  void check_right_lose(){
    if(x > width){
      begin();
      left_score++;
    }
  }
  

}
