int ball_x = 200;
int ball_y = 100;
int r = 20;
int speed_x = -2;
int speed_y = -3;
float stick_left_x = 20;
float stick_left_y = 20;
float stick_left_size = 100;
float stick_left_speed = 15;
float stick_right_x = 620;
float stick_right_y = 20;
float stick_right_size = 100;
float stick_right_speed = 15;



Ball ball = new Ball(r, ball_x, ball_y, speed_x, speed_y);
Stick stick_left = new Stick(stick_left_size, stick_left_speed, stick_left_x, stick_left_y);
Stick stick_right = new Stick(stick_right_size, stick_right_speed, stick_right_x, stick_right_y);

void setup() {
  size(640, 360);
}

void to_draw() {
  background(100); 
  ball.to_draw();
  stick_left.to_draw();
  stick_right.to_draw();
}

void change() {
  ball.change_coordinates();
  ball.check_wall();
  ball.check_stick_left(stick_left);
  stick_right.stick_right_ai(ball);
  ball.check_stick_right(stick_right);
}

void draw() {
  to_draw();
  change();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      if(stick_left.check_wall_up() == false) stick_left.move_up();
    } else if (keyCode == RIGHT) {
      if(stick_left.check_wall_down() == false) stick_left.move_down();
    } 
  } 
}
