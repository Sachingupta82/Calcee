import 'package:flutter/material.dart';
import 'package:flutter_button/flutter_button.dart';
import 'package:practice_app1/sellection.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Calcee',
    home: firstapp()));
}

class firstapp extends StatefulWidget {
  const firstapp({super.key});

  @override
  State<firstapp> createState() => _firstappState();
}

class _firstappState extends State<firstapp> {
  int firstnum=0;
  int secondnum=0;
  String history=" ";
  String result=" ";
  String operation=" ";
  String finaldisplay=" ";

  void buttonOnClick(String btnval) {
  if (btnval == 'AC') {
    firstnum = 0;
    secondnum = 0;
    result = ' ';
    finaldisplay = ' ';
    history = ' ';
  } else if (btnval == '+' ||
      btnval == '-' ||
      btnval == '÷' ||
      btnval == '%'||btnval == 'x' || btnval == 'cancel' ) {
    firstnum = int.parse(finaldisplay);
    result = '';
    operation = btnval;
  } else if (btnval == 'equal') {
    secondnum = int.parse(finaldisplay);
    if (operation == '+') {
      result = (firstnum + secondnum).toString();
      history =
          firstnum.toString() + operation.toString() + secondnum.toString();
    }
    if (operation == '-') {
      result = (firstnum - secondnum).toString();
      history =
          firstnum.toString() + operation.toString() + secondnum.toString();
    }
    if (btnval == 'cancel') {
    finaldisplay = ' ';
  }
    if (operation == 'x') {
      result = (firstnum * secondnum).toString();
      history =
          firstnum.toString() + operation.toString() + secondnum.toString();
    }
    if (operation == '÷') {
      result = (firstnum / secondnum).toString();
      history =
          firstnum.toString() + operation.toString() + secondnum.toString();
    }
    if (operation == '%') {
      result = (firstnum % secondnum).toString();
      history =
          firstnum.toString() + operation.toString() + secondnum.toString();
    }
  } else {
    result = int.parse(finaldisplay + btnval).toString();
  }

  setState(() {
    finaldisplay = result;
  });
}

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 54, 244),
        title: const Center(child: Text('Calcee')),
      ),
      body: Column(children: [
        Container(
          height: size.height * 0.34,
          width: size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Text(history,style: TextStyle(fontSize: 40,color: Colors.grey),)),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(finaldisplay,style:  const TextStyle(fontSize: 55),))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Button3D(
                  
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('AC');
              },
              child: const Text(
                "AC",
                style: TextStyle(fontSize: 28),
              ),
            )),
            Container(
                child: Button3D(
                    style:  const StyleOf3dButton(
                      backColor: Colors.black,
                      topColor: Color.fromARGB(255, 221, 218, 224),
                    ),
                    height: size.height * 0.1,
                    width: size.width * 0.2,
                    onPressed: () {
                      buttonOnClick('cancel');
                    },
                    child:  const Icon(
                      Icons.cancel,
                      size: 32,
                    ))),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('%');
              },
              child:  const Text(
                "%",
                style: TextStyle(fontSize: 30),
              ),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('÷');
              },
              child:  const Text(
                "÷",
                style: TextStyle(fontSize: 35),
              ),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('7');
              },
              child:  const Text("7",style: TextStyle(fontSize: 25),),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('8');
              },
              child:  const Text("8",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('9',);
              },
              child:  const Text("9",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('x');
              },
              child:  const Text(
                "X",
                style: TextStyle(fontSize: 30),
              ),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('4',);
              },
              child:  const Text("4",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('5',);
              },
              child:   const Text("5",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('6');
              },
              child: const Text("6",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('-');
              },
              child: const Text(
                "-",
                style: TextStyle(fontSize: 60),
              ),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('1',);
              },
              child: const Text("1",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style:  const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('2',);
              },
              child:  const Text("2",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('3',);
              },
              child: const Text("3",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('+');
              },
              child: const Text(
                "+",
                style: TextStyle(fontSize: 30),
              ),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 246, 112, 110),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> selector()));
                
              },
              child: const Icon(Icons.change_circle_outlined,size: 38,)
            )),
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('0');
              },
              child: const Text("0",style: TextStyle(fontSize: 25)),
            )),
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 152, 54, 244),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('.');
              },
              child: const Text(
                ".",
                style: TextStyle(fontSize: 45),
              ),
            )),
            Container(
                child: Button3D(
              style: const StyleOf3dButton(
                backColor: Colors.black,
                topColor: Color.fromARGB(255, 221, 218, 224),
              ),
              height: size.height * 0.1,
              width: size.width * 0.2,
              onPressed: () {
                buttonOnClick('equal');
              },
              child: const Text(
                "=",
                style: TextStyle(fontSize: 30),
              ),
            ))
          ],
        ),
      ]),
    );
  }
}
