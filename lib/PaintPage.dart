import 'package:flutter/material.dart';

class PaintPage extends StatefulWidget {
  PaintPage({Key key, this.title}) :super(key: key);
  final String title;

  @override
  PaintState createState() => new PaintState();
}

class PaintState extends State<PaintPage> with TickerProviderStateMixin {
//class PaintState extends State<PaintPage> {

  AnimationController controller;
  CurvedAnimation curve;
  List<Offset> _points = <Offset>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
          child: new GestureDetector(
            child: new RotationTransition(
                turns: curve,
                child: new FlutterLogo(
                  size: 1000.0,
                )),
            onLongPress: () {
                if(controller.isCompleted){
                  controller.reverse();
                }else{
                  controller.forward();
                }
            },
          )
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: "fade",
          child: new Icon(Icons.brush),
          onPressed: () {
            controller.forward();
          }),
    );
//    return new GestureDetector(
//      onPanUpdate: (DragUpdateDetails details) {
//        setState(() {
//          RenderBox referenceBox = context.findRenderObject();
//          Offset localPosition =
//          referenceBox.globalToLocal(details.globalPosition);
//          _points = new List.from(_points)
//            ..add(localPosition);
//        });
//      },
//      onPanEnd: (DragEndDetails details) => _points.add(null),
//      child: new CustomPaint(painter: new SignaturePainter(_points)),
//
//    );
  }
}

class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);

  final List<Offset> points;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = new Paint()
      ..color = Colors.yellow
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  bool shouldRepaint(SignaturePainter other) => other.points != points;
}