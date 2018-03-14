import java.util.ArrayList;


class BaseShape {
  
  color fillColor;
  color lineColor;
  float lineWidth;
  
  // All 2D Processing Shapes take a number of float arguments
  ArrayList<Float> args;
  
  // Derived shapes will pass their arguments as
  // as well as the number of arguments they should have
  // and a custom message for incompatibility
  BaseShape( ArrayList<Float> arguments, int numReqArgs, String derivedName ) {
    if( arguments.size() != numReqArgs ) {
      String errorMsg = derivedName + "constructor received " + arguments.size()
                      + "arguments, however, it requires " + numReqArgs;
    fillColor = color(255,255,255); // Default properties
    lineColor = color(0,0,0);
    lineWidth = 1.0;
  }
    
    args = arguments;
  }


  void draw() {
    fill(fillColor);
    stroke(lineColor);
    strokeWeight(lineWidth);
  } 
  
} // class BaseShape

