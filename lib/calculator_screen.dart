/*
import 'package:flutter/material.dart';
import 'package:rtj_app/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Perform Simple Calculations ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(right: 28),
              alignment: Alignment.centerRight,
              child: Text(
                userInput.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "AC", onPress: () {}),
                CustomButton(btnText: "+/-", onPress: () {}),
                CustomButton(btnText: "DEL", onPress: () {}),
                CustomButton(
                    btnText: "/", onPress: () {}, btnColor: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "%", onPress: () {}),
                CustomButton(btnText: "0", onPress: () {}),
                CustomButton(btnText: ".", onPress: () {}),
                CustomButton(btnText: "x", onPress: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                    btnText: "7",
                    onPress: () {
                      setState(() {
                        userInput += "7";
                        // print(userInput.toString());
                      });
                    }),
                CustomButton(
                    btnText: "8",
                    onPress: () {

                      setState(() {
                        userInput += "8";
                      });
                    }),
                CustomButton(btnText: "9", onPress: () {
                  setState(() {
                    userInput+='9';
                  });
                }),
                CustomButton(btnText: "+", onPress: () {
                  setState(() {
                    userInput+='+';
                  });
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "4", onPress: () {
                  setState(() {
                    userInput+='4';
                  });
                }),
                CustomButton(btnText: "5", onPress: () {
                  setState(() {
                    userInput+='5';
                  });
                }),
                CustomButton(btnText: "6", onPress: () {
                  setState(() {
                    userInput+='6';
                  });
                }),
                CustomButton(btnText: "-", onPress: () {
                  setState(() {
                    userInput+='-';
                  });
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "1", onPress: () {

                }),
                CustomButton(btnText: "2", onPress: () {

                }),
                CustomButton(btnText: "3", onPress: () {

                }),
                CustomButton(btnText: "=", onPress: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

import 'custom_button.dart';

///Chat gpt code
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Perform Simple Calculations ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(right: 28),
              alignment: Alignment.centerRight,
              child: Text(
                userInput.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "AC", onPress: clearInput),
                CustomButton(btnText: "+/-", onPress: toggleSign),
                CustomButton(btnText: "DEL", onPress: deleteLast),
                CustomButton(
                    btnText: "/",
                    onPress: () {
                      addOperator('/');
                    },
                    btnColor: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "%", onPress: () {}),
                CustomButton(btnText: "0", onPress: () {
                  appendDigit('0');
                }),
                CustomButton(btnText: ".", onPress: () {
                  addDecimal();
                }),
                CustomButton(
                    btnText: "x",
                    onPress: () {
                      addOperator('*');
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "7", onPress: () {
                  appendDigit('7');
                }),
                CustomButton(btnText: "8", onPress: () {
                  appendDigit('8');
                }),
                CustomButton(btnText: "9", onPress: () {
                  appendDigit('9');
                }),
                CustomButton(
                    btnText: "+",
                    onPress: () {
                      addOperator('+');
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "4", onPress: () {
                  appendDigit('4');
                }),
                CustomButton(btnText: "5", onPress: () {
                  appendDigit('5');
                }),
                CustomButton(btnText: "6", onPress: () {
                  appendDigit('6');
                }),
                CustomButton(
                    btnText: "-",
                    onPress: () {
                      addOperator('-');
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(btnText: "1", onPress: () {
                  appendDigit('1');
                }),
                CustomButton(btnText: "2", onPress: () {
                  appendDigit('2');
                }),
                CustomButton(btnText: "3", onPress: () {
                  appendDigit('3');
                }),
                CustomButton(btnText: "=", onPress: (){}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void clearInput() {
    setState(() {
      userInput = '';
    });
  }

  void toggleSign() {
    setState(() {
      if (userInput.isNotEmpty && userInput[0] == '-') {
        userInput = userInput.substring(1);
        print(userInput);
      } else {
        userInput = '-' + userInput;
      }
    });
  }

  void deleteLast() {
    setState(() {
      if (userInput.isNotEmpty) {
        userInput = userInput.substring(0, userInput.length - 1);
      }
    });
  }

  void appendDigit(String digit) {
    setState(() {
      userInput += digit;
    });
  }

  void addDecimal() {
    if (!userInput.contains('.')) {
      setState(() {
        userInput += '.';
      });
    }
  }

  void addOperator(String operator) {
    if (userInput.isNotEmpty && isOperator(userInput[userInput.length - 1])) {
      // Replace the last operator with the new one
      setState(() {
        userInput = userInput.substring(0, userInput.length - 1) + operator;
      });
    } else {
      setState(() {
        userInput += operator;
      });
    }
  }

  bool isOperator(String char) {
    return char == '+' || char == '-' || char == '*' || char == '/';
  }


}



