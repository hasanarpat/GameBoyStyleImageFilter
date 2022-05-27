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
    print("r is "+r);
    float g = green (img.pixels[loc]);
    print("g is "+g);
    float b = blue  (img.pixels[loc]);
    print("b is "+b);
    float sum=r+g+b;
    float alpha=sum/3;
    
    if(sum>lightestGreen){
    color c = color(155,188,15,alpha);
    img.set(x,y,c);
    }
    if(sum>lightGreen){
    color c = color(139,172,15,alpha);
    img.set(x,y,c);
    }
    if(sum>darkGreen){
    color c = color(48,98,48,alpha);
    img.set(x,y,c);
    }
    if(darkGreen>sum){
    color c = color(15,56,15,alpha);
    img.set(x,y,c);
    }
    
  }
 }
}

void draw() {
  image(img, 0, 0);
  tint(0,155,0);
  save(imgNum+".jpg");
}
