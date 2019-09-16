import java.util.Random;
float xi = 0;
float next = 0;
float y = 100;
int numOfRect = 300;
float size = width / numOfRect;
float array[] = new float [numOfRect];
boolean sorted = false;
float temp = 0;
Random rand = new Random();
 
// The statements in the setup() function 
// run once when the program begins
void setup() {
  size(640, 360);  // Size should be the first statement
  colorMode(HSB, height, height, height);
  //stroke(255);     // Set stroke color to white
  noStroke();
  //fill(0);
  noLoop();
  //background(0);   // Set the background to black
  
  y = 0;
  xi = 0;
  next = 0;
  //float size = 10;
  //float len = width / size;
  for (int i = 0; i < numOfRect; i++)
  {
    array[i] = rand.nextInt(100);
  }
}

// The statements in draw() are run until the 
// program is stopped. Each statement is run in 
// sequence and after the last line is read, the first 
// line is run again.
void draw() { 
  background(0);   // Set the background to black
  
  //for (int i = 0; i < numOfRect; i++)
  //{
  //  stroke(array[i]);
  //  rect(xi + next, y, 10, array[i]);
  //  next = next + size;
  //}  
  //rect(0, height/2, width/10,10);
  for (int i = 0; i < numOfRect; i++)
  {
    fill(array[i], height, height);
    rect(i*(width/numOfRect)+15, 20, width/numOfRect, array[i]);
  }
  
  y = y + 1; 
  if (y >= height) { 
    y = 0; 
  } 
  
  for(int i = 0; i < 1000-numOfRect; i++)
    ;
  
  sorted = true;
  for(int i = 0; i < numOfRect-1; i++)
  {
      if (array[i+1] < array[i])
      {
          temp = array[i+1];
          array[i+1] = array[i];
          array[i] = temp;
          sorted = false;
      }
  }
  if(sorted)
    noLoop();
  fill(0, height, height);
  text("bubble sort", width/2 - 15, 15);
} 

void mousePressed() {
  loop();
}
