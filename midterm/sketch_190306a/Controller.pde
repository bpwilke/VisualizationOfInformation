class Controller
{
  private View1 myView1;
  private View2 myView2;
  private Model myModel;
  
  public Controller()
  {
     myView1 = new View1(this);
     myView2 = new View2(this);
     myModel = new Model(this);
     
  
     PApplet.runSketch(new String[]{"My view 1"}, myView1);
     PApplet.runSketch(new String[]{"My view 2"}, myView2);
     

  }
  
  
}
