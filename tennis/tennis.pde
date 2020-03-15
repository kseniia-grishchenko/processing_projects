float ball_x = 200;
float ball_y = 100;
float r = 20;
float speed_x = 7;
float speed_y = -3;
float stick_left_x = 20;
float stick_left_y = 20;
float stick_left_size = 100;
float stick_left_speed = 15;
float stick_right_x = 620;
float stick_right_y = 20;
float stick_right_size = 100;
float stick_right_speed = 2;
int left_score = 0;
int right_score = 0;
int max_score = 5;
int max_speed = 5;


Ball ball;
Stick stick_left;
Stick stick_right;

void begin(){
 speed_x = random(-max_speed, max_speed);
 speed_y = random(-max_speed, max_speed);
 ball = new Ball(r, ball_x, ball_y, speed_x, speed_y);
 stick_left = new Stick(stick_left_size, stick_left_speed, stick_left_x, stick_left_y);
 stick_right = new Stick(stick_right_size, stick_right_speed, stick_right_x, stick_right_y);
}

void setup() {
  size(640, 360);
  begin();
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
  ball.check_left_lose();
  ball.check_right_lose();
}

void draw() {
  to_draw();
  change();
  check_winner();
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
 
void check_winner(){
  if(left_score >= max_score)
  print("You win!!!");
  else if(right_score >= max_score)
  print("You lose(");
}
