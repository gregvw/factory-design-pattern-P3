import java.util.ArrayList;

class Ellipse extends BaseShape {
  
  Ellipse( ArrayList<Float> args ) {
    super(args,4,"Ellipse");
  }
  
  void draw() {
    super.draw();
    ellipse( super.args.get(0),
             super.args.get(1),
             super.args.get(2),
             super.args.get(3) );
  }
  
} // class Ellipse
