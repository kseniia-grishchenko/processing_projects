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
    if(x < r || x > width - r) {
      speed_x *= -1;
    }
    
    if(y < r || y > height - r) {
      speed_y *= -1;
    }
  }
  
  void to_draw(){
    ellipse(ball.x, ball.y, 2 * ball.r, 2 * ball.r);
}
}
