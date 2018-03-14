import java.util.ArrayList;

class Triangle extends BaseShape {
  
  
  Triangle( ArrayList<Float> args ) {
    super(args,6,"Triangle");
  }
  
  void draw() {
    super.draw();
    triangle( super.args.get(0),
              super.args.get(1),
              super.args.get(2),
              super.args.get(3),
              super.args.get(4),
              super.args.get(5) );
  }
  
} // class Triangle
