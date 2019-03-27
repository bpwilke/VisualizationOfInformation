PImage img;
int verticalBarPos = 0;

void settings()
{
  img = loadImage("mars.jpg");
  int canvasHeight = img.height;
  int canvasWidth = img.width;
  
  size(img.width,img.height);
}

int[][] myKernel1 = {
  {0,-1,0},
  {-1,6,-1},
  {0,-1,0}
};

int[][] myKernel2 = {
  {0,1,0},
  {1,-2,1},
  {0,1,0}
};


void setup()
{
   
  PImage convolutedImage = createImage(img.width, img.height, RGB);
  
  for (int y = 1; y < img.height-1; y++) {   
    for (int x = 1; x < img.width-1; x++) {  
      float red = 0; 
      float green = 0; 
      float blue = 0; 
      
      if(y % 3 == 0)
      {
        for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
          int pos = (y + ky)*img.width + (x + kx);
          float valR = red(img.pixels[pos]);
          float valG = green(img.pixels[pos]);
          float valB = blue(img.pixels[pos]);
          red += myKernel1[ky+1][kx+1] * valR;
          green += myKernel1[ky+1][kx+1] * valG;
          blue += myKernel1[ky+1][kx+1] * valB;
        }
      }
      
      }
      else
      {
      
      for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
          int pos = (y + ky)*img.width + (x + kx);
          float valR = red(img.pixels[pos]);
          float valG = green(img.pixels[pos]);
          float valB = blue(img.pixels[pos]);
          red += myKernel2[ky+1][kx+1] * valR;
          green += myKernel2[ky+1][kx+1] * valG;
          blue += myKernel2[ky+1][kx+1] * valB;
        }
      }
      
      convolutedImage.pixels[y*img.width + x] = color(red, green, blue);
      }
    }
  }
  convolutedImage.updatePixels();
  image(convolutedImage, 0, 0);  
}



void draw()
{

  loadPixels();
 
  if(verticalBarPos < img.height - 6)
  {
      
  for(int i = verticalBarPos * img.width; i < img.width * verticalBarPos * 1.01; i++)
  {
   float r = red(pixels[i]);
   float b = blue(pixels[i]);
   float g = green(pixels[i]);
   
    r = 255 - r;
    b = 255 - b;
    g = 255 - g;
    
   pixels[i] = color(r,g,b); 
  
  }
  
  }
  
    
   updatePixels();
  

  //stroke(100,100,100);
  //rect(0, verticalBarPos, img.width, 1); 
  
  
  
  verticalBarPos += 1;

  println(verticalBarPos);



}
