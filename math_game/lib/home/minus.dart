import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_game/asosiy.dart';
import 'package:math_game/home/constants.dart';
import 'package:math_game/util/my_button.dart';

class MinusPage extends StatefulWidget {
  const MinusPage({super.key});

  @override
  State<MinusPage> createState() => _MinusPageState();
}

class _MinusPageState extends State<MinusPage> {

  List<String> numberPad=[
    '7',
    '8',
    '9',
    '4',
    'DEL',
    '5',
    '6',
    '1',
    '2',
    'C',
    '3',
    '0',
    '-',
    '=',
    'Back'
  ];

  int numberA=1;
  int numberB=1;

  String userAnswer='';
  String jamiNumber='';
  int plus=1;

  void buttonTaped(String button){
    setState(() {
      if (button=='='){
        checkResult();
      } else if (button=='C'){
        userAnswer='';
      }else if(button=='DEL') {
        if (userAnswer.isNotEmpty) {
          userAnswer = userAnswer.substring(0, userAnswer.length - 1);
        }
      } else if(button=="Back"){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> AsosiyPageUz()));
      } else if(userAnswer.length<3){
        userAnswer +=button;
      }
    });
  }

  void checkResult(){
    if (userAnswer=='') {
      showDialog(
          context: context,
          builder:(context){
            return AlertDialog(
              backgroundColor:Colors.deepPurple,
              content: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Sorry try again!",
                      style: whiteTextStyle,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }else if (numberA-numberB==int.parse(userAnswer)){
      plus+=1;
      showDialog(
          context: context,
          builder:(context){
            return AlertDialog(
              backgroundColor:Colors.deepPurple,
              content: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Correct!",
                      style: whiteTextStyle,
                    ),
                    GestureDetector(
                      onTap: goToNextQuestion,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    } else{
      userAnswer='';
      showDialog(
          context: context,
          builder:(context){
            return AlertDialog(
              backgroundColor:Colors.deepPurple,
              content: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Sorry try again!",
                      style: whiteTextStyle,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }
  }

  var randomNumber=Random();

  void goToNextQuestion(){
    Navigator.of(context).pop();

    setState(() {
      userAnswer='';
    });

    numberA=randomNumber.nextInt(10);
    numberB=randomNumber.nextInt(10);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        children: [
          Container(
            height: 160,
            color: Colors.deepPurple,
            child: Center(child: Text(
              "Math => Minus",
              style: whiteTextStyle,
            ),),
          ),

          Expanded(
            child: Container(
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      numberA.toString()+ ' - ' + numberB.toString() + ' = ',
                    style: whiteTextStyle,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[400],
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                      child: Text(
                        userAnswer, style: whiteTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: GridView.builder(
                itemCount: numberPad.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
              ),
                itemBuilder: (context, index){
                return MyButton(
                    child: numberPad[index],
                    onTap: () => buttonTaped(numberPad[index]),
                );
                },
              ),
            ),
          ),
    ],
    ),
    );
  }
}
