import java.util.ArrayList;

class Quadrilateral extends BaseShape {
  
  Quadrilateral( ArrayList<Float> args ) {
    super(args,8,"Quadrilateral");
  }
  
  void draw() {
    super.draw();
    quad( super.args.get(0),
          super.args.get(1),
          super.args.get(2),
          super.args.get(3),
          super.args.get(4),
          super.args.get(5),
          super.args.get(6),
          super.args.get(7) );
  }
  
} // class Quadrilateral
