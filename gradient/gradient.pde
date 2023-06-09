enum Color{
WHITE,
YELLOW,
MAGENTA,
RED,
GREEN,
BLUE,
PURPLE,
BROWN,
ORANGE
}

float red = 0.0;
float green = 0.0;
float blue = 0.0;
float dur = 4.0;
int arrIndex = -1;
int textIndex;
boolean anim = false;
boolean showText = false;
Color futureCol;
ArrayList<Color> colorArr = new ArrayList<Color>();
String[] texts = {"CARPE DIEM", "ENJOY YOUR LIFE"};

void colors(){
colorArr.clear();
for (int cls = 0; cls <= int(random(9)); cls++){colorArr.add(Color.values()[int(random(9))]);}
}

void setup(){
fullScreen();
noCursor();
colors();
textSize(height/6);
textAlign(CENTER);
futureCol = colorArr.get(0);
}

void draw(){
if (frameCount % (60*dur) == 0){
  arrIndex += 1;
  if (arrIndex == colorArr.size()){arrIndex = 0;}
  futureCol = colorArr.get(arrIndex);
}
if (frameCount % 900 == 0){
 anim = !anim; 
 colors();
 arrIndex = -1;
}
if (frameCount % 1800 == 0){
 showText = !showText;
}
if (frameCount % 3600 == 0){
dur = random(1.0) + 4.0;
textIndex = int(random(texts.length));
}
    if (futureCol == Color.WHITE){
      if (anim == true){
        red += (1.0 - red) / (frameRate * dur);
        green += (1.0 - green) / (frameRate * dur);
        blue += (1.0 - blue) / (frameRate * dur);
      } else {red = 1.0; green = 1.0; blue = 1.0;}
    }
    else if (futureCol == Color.YELLOW){
      if (anim == true){
      red += (1.0 - red) / (frameRate * dur);
      green += (1.0 - green) / (frameRate * dur);
      blue += (0.0 - blue) / (frameRate * dur);
      } else {red = 1.0; green = 1.0; blue = 0.0;}
    }
    else if (futureCol == Color.MAGENTA){
      if (anim == true){
        red += (1.0 - red) / (frameRate * dur);
        green += (0.0 - green) / (frameRate * dur);
        blue += (1.0 - blue) / (frameRate * dur);
      } else {red = 1.0; green = 0.0; blue = 1.0;}
    }
    else if (futureCol == Color.RED){
      if (anim == true){
      red += (1.0 - red) / (frameRate * dur);
      green += (0.0 - green) / (frameRate * dur);
      blue += (0.0 - blue) / (frameRate * dur);
      } else {red = 1.0; green = 0.0; blue = 0.0;}
    }
    else if (futureCol == Color.GREEN){
      if (anim == true){
      red += (0.0 - red) / (frameRate * dur);
      green += (1.0 - green) / (frameRate * dur);
      blue += (0.0 - blue) / (frameRate * dur);        
      } else {red = 0.0; green = 1.0; blue = 0.0;}
    }
    else if (futureCol == Color.BLUE){
      if (anim == true){
      red += (0.0 - red) / (frameRate * dur);
      green += (0.0 - green) / (frameRate * dur);
      blue += (1.0 - blue) / (frameRate * dur);        
      } else {red = 0.0; green = 0.0; blue = 1.0;}
    }
    else if (futureCol == Color.PURPLE){
      if (anim == true){
      red += (0.2 - red) / (frameRate * dur);
      green += (0.0 - green) / (frameRate * dur);
      blue += (0.5 - blue) / (frameRate * dur);        
      } else {red = 0.2; green = 0.0; blue = 0.5;}
    }
    else if (futureCol == Color.BROWN){
      if (anim == true){
      red += (0.3 - red) / (frameRate * dur);
      green += (0.2 - green) / (frameRate * dur);
      blue += (0.1 - blue) / (frameRate * dur);        
      } else {red = 0.3; green = 0.2; blue = 0.1;}
    }
    else if (futureCol == Color.ORANGE){
      if (anim == true){
      red += (1.0 - red) / (frameRate * dur);
      green += (0.45 - green) / (frameRate * dur);
      blue += (0.0 - blue) / (frameRate * dur);        
      } else {red = 1.0; green = 0.45; blue = 0.0;}
    }
      background(red*255.0,green*255.0,blue*255.0);
      if (showText == true){
      text(texts[textIndex],width/2,height/2);
      }

}

 
