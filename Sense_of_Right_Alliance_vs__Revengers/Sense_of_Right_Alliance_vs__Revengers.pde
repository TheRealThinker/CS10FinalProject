// Final Project
// Sam Lee and Bryn Bergsma

PImage introscreen;

PImage[] incredible = new PImage[6];

PImage[] shrek = new PImage[6];

PImage[] queen = new PImage[6];

PImage[] horse = new PImage[4];

PImage[] ron = new PImage[9];

PImage[] raccoon = new PImage[4];

int direction1;
int direction2;
int x1, y1, x2, y2;
int player1;
int player2;
int damage;
int animationCycle;

int goalX;
int goalY;
int gamescreen;






void setup() {


  size(1200, 700);


  introscreen = loadImage("introscreen.png");

  incredible[0] = loadImage("incredibleright.png");
  incredible[1] = loadImage("incredibleleft.png");
  incredible[2] = loadImage("incredibleattackright.png");
  incredible[3] = loadImage("incredibleattackleft.png");
  incredible[4] = loadImage("incredibleidleright.png");
  incredible[5] = loadImage("incredibleidleleft.png");


  shrek[0] = loadImage("shrekright.png");
  shrek[1] = loadImage("shrekleft.png");
  shrek[2] = loadImage("shrekattackright.png");
  shrek[3] = loadImage("shrekattackleft.png");
  shrek[4] = loadImage("shrekidleright.png");
  shrek[5] = loadImage("shrekidleleft.png");

  queen[0] = loadImage("queenright.png");
  queen[1] = loadImage("queenleft.png");

  queen[2] = loadImage("queenattackright.png");
  queen[3] = loadImage("queenattackleft.png");
  queen[4] = loadImage("queenidleright.png");
  queen[5] = loadImage("queenidleleft.png");

  ron[0] = loadImage("ron.png");
  ron[1] = loadImage("ronranged1right.png");
  ron[2]= loadImage("ronranged2right.png");
  ron[3]= loadImage("ronranged3right.png");
  ron[4]= loadImage("ronranged1left.png");
  ron[5]= loadImage("ronranged2left.png");
  ron[6]= loadImage("ronranged3left.png");
  ron[7]= loadImage("ronprojectileleft.png");
  ron[8]= loadImage("ronprojectileright.png");

  raccoon[0] = loadImage("raccoonright.png");
  raccoon[1] = loadImage("raccoonleft.png");
  raccoon[2] = loadImage("raccoonattackright.png");
  raccoon[3] = loadImage("raccoonattackleft.png");

  horse[0] = loadImage("horseright.png");
  horse[1] = loadImage("horseleft.png");
  horse[2] = loadImage("horseprojectileright.png");
  horse[3] = loadImage("horseprojectileleft.png");
}


void draw() {
  background(introscreen);

  imageMode(CENTER);
  textMode(CENTER);

  keyPressed();

  textFont(createFont("Arial", 30));
  if (gamescreen ==0) {

    text("welcome to...! ", 50, 450);
    text("SENSE OF RIGHT ALLIANCE VS. REVENGERS", 350, 100);
    text("click mouse to enter", 70, 600);
    text("revision version 49065.32 made by Sam and Bryn", 50, 500);
  }

  if (abs(x1-25)<80 && abs(y1-25)<80) {
    damage -=5;
  }
  if (abs(x2-25)<80 && abs(y2-25)<80) {
    damage -=5;
  }

  image(incredible[1], x1, y1);
}

void characterMovement() {
  if (direction2 ==4) {

    x2 = x2 - 15;
  }
  if (direction2 ==1) {

    y2 = y2 - 15;
  }
  if (direction2 ==3) {

    y2 = y2 + 15;
  }
  if (direction2 ==2) {

    x2 = x2 + 15;
  }
  if (direction1 ==4) {

    x1 = x1 - 15;
  }
  if (direction1 ==1) {

    y1 = y1 - 15;
  }
  if (direction1 ==3) {

    y1 = y1 + 15;
  }
  if (direction1 ==2) {

    x1 = x1 + 15;
  }
}







void keyPressed() {

  if (keyPressed) {

    if (keyCode == ENTER) {
      gamescreen = gamescreen + 1;
    }

    if (keyCode == RIGHT) {
      direction2 = 3;
      walkAnimation();
      characterMovement();
    }

    if (keyCode == 'a') {
      direction1 = 3;
      walkAnimation();
      characterMovement();
    }

    if (keyCode == LEFT) {

      direction2 = 4;
      walkAnimation();
      characterMovement();
    }
    if (keyCode == 'd') {

      direction1 = 4;
      walkAnimation();
      characterMovement();
    }

    if (keyCode == UP) {

      direction2 = 1;
      walkAnimation();
      characterMovement();
    }
    if (keyCode == 'w') {

      direction1 = 1;
      walkAnimation();
      characterMovement();
    }
    if (keyCode == DOWN) {

      direction2 = 2;
      walkAnimation();
      characterMovement();
    }
    if (keyCode == 's') {

      direction1 = 2;
      walkAnimation();
      characterMovement();
    }
  }
}

void walkAnimation() {
  ++animationCycle;

  if (animationCycle == 1) {
    rotate(50);
  }
  if (animationCycle == 2) {
    rotate(-50);
  }
  if (animationCycle == 3) {
    rotate(-50);
  }
  if (animationCycle == 4) {
    rotate(50);
  }

  if (animationCycle == 5) {
    animationCycle = 0;
  }
}