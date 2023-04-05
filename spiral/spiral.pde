int iterations = 100;
int multiplier = 0;
float radius = width/2;
float look = 1.5;
float densityX = 0;
float densityY = 0;
float red = 0.0;
float green = 0.0;
float blue = 0.0;
int seconds = 0;

void setup(){
fullScreen();
noStroke();
noCursor();
}
void draw(){
  background(red,green,blue);
  if (frameCount % 60 == 0){seconds += 1;}
  if (seconds == 120){seconds = 0;}
  if (seconds < 30){
    densityX += 0.05; densityY += 0.05;
  }
  else if (seconds > 30 && seconds < 60){
  fill(random(255), random(255), random(255));
  }
  else if (seconds > 60 && seconds < 120){
   densityX -= 0.05; densityY -= 0.05;
  }
  if (minute() % 2 == 0){
        for (int i = 1; i<=iterations; i++){
          square((width/2-radius/2)+sin(i/look)*(multiplier+(i*densityX-0.02)),(height/2-radius/2)+cos(i/look)*(multiplier-(i*densityY-0.02)),radius);
        }
      }
  if (minute() % 2 == 1){
        for (int i = 1; i<=iterations; i++){
          circle((width/2)+sin(i/look)*(multiplier+(i*densityX-0.02)),(height/2)+cos(i/look)*(multiplier-(i*densityY-0.02)),radius);
        }
  }
  if (frameCount % 7200 == 0){
  iterations = int(random(80)) + 20;
  look = random(3) + 1.0;
  red = random(80);
  green = random(80);
  blue = random(80);
  }
}
