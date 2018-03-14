import java.util.ArrayList;



BaseShape shapeFactory( String ShapeName, String str_args ) {

  ArrayList<Float> args = new ArrayList<Float>();

  // Convert String of arguments to ArrayList<Float>
  List<String> str_list = new ArrayList<String>(Arrays.asList(str_args.split(",")));
  for( String item : str_list ) {
    args.add( Float.valueOf( item ) );
  }

  BaseShape shape;

  switch( ShapeName ) {
    case "Triangle":
      shape = new Triangle(args);
      break;
    case "Ellipse":
      shape = new Ellipse(args);
      break;
    case "Quadrilateral":
      shape = new Quadrilateral(args);
      break;
    default:
      throw new IllegalArgumentException("Invalid ShapeName: " + ShapeName);
  }
  return shape;
}
