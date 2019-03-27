void setup() {
  size(700, 800);
  background(255);
 
}

void draw(){
  //color fills
  noStroke();
  fill(255,252,85); // yellow
  rect(0,450,60,100);
  rect(535,780,145,20);
  
  fill(83,124,217); //blue
  rect(0,0,60,150);
  
  fill(0); // black
  rect(0,150,60,40);
  
  fill(255,0,40); // red
  rect(680,250,20,200);
  rect(0,600,60,60);
  rect(350,780,35,20);
  
  
  
  

  stroke(0); // bring stroke back, set to black
  //horizontal lines
  strokeWeight(14);
  line(0,250,700,250);
  line(0,450,700,450);
  line(0,550,700,550);
  
  // vertical lines
  strokeWeight(12);
  line(60,0,60,800);
  line(180,0,180,800);
  line(535,0,535,800);
  line(620,0,620,800);
  line(680,0,680,800);
  
  //crossing mid lines
  strokeWeight(8);
  line(180,13,535,13);
  strokeWeight(12);
  line(180,175,535,175);
  line(60,500,620,500);
  line(180,780,680,780);
  
  
  

}
