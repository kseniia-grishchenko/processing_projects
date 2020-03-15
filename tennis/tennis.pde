int ball_x = 200;
int ball_y = 100;
int r = 10;
int speed_x = -2;
int speed_y = -3;
float stick_x = 20;
float stick_y = 20;
float stick_size = 50;
float stick_speed = 5;



Ball ball = new Ball(r, ball_x, ball_y, speed_x, speed_y);
Stick stick_left = new Stick(stick_size, stick_speed, stick_x, stick_y);

void setup() {
  size(640, 360);
}

void to_draw() {
  background(100); 
  ball.to_draw();
  stick_left.to_draw();
}

void change() {
  ball.change_coordinates();
  ball.check_wall();
}

void draw() {
  to_draw();
  change();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      stick_left.move_up();
    } else if (keyCode == RIGHT) {
      stick_left.move_down();
    } 
  } 
}
