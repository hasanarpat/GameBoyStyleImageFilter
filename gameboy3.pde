PImage img;
float darkestGreen =  0; //15+56+15;
//{15.0,56.0,15.0};
  float darkGreen = 190; //48+98+48;
//{48.0,98.0,48.0};
  float lightGreen = 2*190; //139+272+15;
//{139.0,172.0,15.0};
  float lightestGreen=3*190;//155+18+15;
//{155.0,188.0,15.0};
int imgNum=0;
void setup() {

  size(720,720);
  img = loadImage("Your Image");
  img.resize(720,720);
  img.loadPixels();
  for (int x = 0; x < img.width; x++) {
  for (int y = 0; y < img.height; y++ ) {
    // Calculate the 1D pixel location
    int loc = x + y*img.width;
    // Get the R,G,B values from image


    float r = red   (img.pixels[loc]);
    if(r<15){
  r=15;
  }
    if(r>15){
  if(r-15>48-r){
    r=48;
    }
  else{
  r=15;
  }
  }
  if(r>48){
    if(r-48>139-r){
      r=139;
      }
    else {
    r=48;
    }
    }
  if(r>139){
    if(r-139>155-r){
      r=139;
      }
    else {
    r=155;
    }
  }
    float g = green (img.pixels[loc]);
    if(g<56){
  g=56;
  }
    if(g>56){
  if(g-56>98-g){
    g=98;
    }
  else {
  g=56;
  }
  }
  if(g>98){
    if(g-98>172-g){
      g=172;
      }
    else {
    g=98;
    }
    }
  if(g>172){
    if(g-172>188-g){
      g=188;
      }
    else{
    g=172;
    }
  }
    float b = blue  (img.pixels[loc]);
    if(b<15){
  b=15;
  }
    if(b>15){
  if(b-15>48-b){
    b=48;
    }
  else{
  b=15;
  }
  
  }

    color c =color(r,g,b);
    img.set(x,y,c);
    
  }
 }
}

void draw() {
  image(img, 0, 0);
  //tint(0,155,0);
  save(imgNum+".jpg");
}
