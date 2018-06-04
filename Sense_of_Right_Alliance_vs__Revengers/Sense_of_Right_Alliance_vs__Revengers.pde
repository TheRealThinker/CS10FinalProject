// Final Project
// Sam Lee and Bryn Bergsma

PImage[] introscreen = new PImage[3];

PImage[] incredible = new PImage[6];

PImage[] shrek = new PImage[6];

PImage[] queen = new PImage[6];

PImage[] horse = new PImage[4];

PImage[] ron = new PImage[9];

PImage[] raccoon = new PImage[4];
int direction;
int x, y;
int player1;
int player2;
int damage;
int goalX;
int goalY;

void setup() {
  size(1800, 700);
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
  raccoon[3] = loadImage("raccooattackleft.png");
  
  horse[0] = loadImage("horseright.png");
  horse[1] = loadImage("horseleft.png");
  horse[2] = loadImage("horseprojectileright.png");
  horse[3] = loadImage("horseprojectileleft.png");
  
}

void draw() {
image(horse[2], 100, 100);

if(direction ==4){
 
        x = x-15;
      
}
  if(direction ==1){
    
     y = y -15;
      

  
}
if(direction ==3){
   y = y+15;
       
}
if(direction ==2){
   x = x + 15;
       
}


    if (keyPressed) {



     
      if (keyCode == RIGHT || key == 'd' || key =='D' ) {
       direction = 3;
      }

      if (keyCode == LEFT || key == 'a' || key =='A' ) {
       
        direction = 4;
        
      }

      if (keyCode == UP || key == 'w' || key =='W' ) {
       
        direction = 1;
      }

      if (keyCode == DOWN || key == 's' || key =='S' ) {
       
        direction = 2;
      }
   if (abs(x-goalX-25)<80 && abs(y-goalY-25)<80) {
     damage -=5;}
}}