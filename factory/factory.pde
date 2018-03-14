// Example of the Factory Design Pattern

import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

ArrayList<BaseShape> shapes;


void setup() {
  size(1024,720);
  
   shapes = new ArrayList<BaseShape>();

   BaseShape shape1 = shapeFactory( "Triangle",      "200, 200, 400, 300, 300, 400"   );
   BaseShape shape2 = shapeFactory( "Quadrilateral", "38, 31, 86, 20, 69, 63, 30, 76" );
   BaseShape shape3 = shapeFactory( "Ellipse",       "600, 600, 150, 150"             );

   shape1.fillColor = color(255,255,0);
   shape2.fillColor = color(255,0,255);
   shape3.fillColor = color(0,255,255);

   shapes.add( shape1 );
   shapes.add( shape2 );
   shapes.add( shape3 );
}

void draw() {
  for( BaseShape shape : shapes ) {
    shape.draw(); 
  }
}
