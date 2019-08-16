//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x;
int y;

// Add a constructor with parameters to initialize each variable.
public Segment(int x, int y) {
    this.x = x;
    this.y = y;

}
}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*

Segment s;

int foodX;
int foodY;

int up = UP;
int hasEaten = 0;
//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500,500);

s= new Segment(250,250);


frameRate(20);

dropFood();


}

void dropFood() {
  //Set the food in a new random location
foodX = ((int)random(50)*10);
foodY = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
 background(0,0,0);
 drawFood();
 drawSnake();
}

void drawFood() {
  //Draw the food
   fill(0,255,0);
  rect(foodX,foodY,10,10);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
fill(255,0,0);
rect(s.x,s.y,10,10);
drawTail();
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 
 // for(int i =0;i<;i++){
//rect(s.x,s.y,10,10);
//  }
}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if(keyCode == UP){
  up=UP;
  } 
   if(keyCode == DOWN){
  up=DOWN;
  }
   if(keyCode == LEFT){
  up= LEFT;
  }
  if(keyCode == RIGHT){
  up=RIGHT;
  }
   
   
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(up) {
  case UP:
    s.y-=10;
    break;
  case DOWN:
       s.y+=10;
    break;
  case LEFT:
  s.x-=10;
    break;
  case RIGHT:
    s.x+=10;
    break;
  }
 
}

void checkBoundaries() {
if(s.x>500){
  s.x=0;
}
 if(s.x<0){
  s.x=500;
}
if(s.y>500){
  s.y=0;
  
}
 if(s.y<0){
  s.y=500;
}
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear

}
