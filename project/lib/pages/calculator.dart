import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  List<String> Listnum = [
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '*',
    '0',
    '.',
    '=',
    '/'
  ];
  var calculate = "";
  void Cal(String digit) {
    if (digit == "=") {
      Expression expression = Expression.parse(calculate);
      final evaluaor = ExpressionEvaluator();
      var r = evaluaor.eval(expression, {});
      setState(() {
        calculate = r.toString();
      });
    } else {
      setState(() {
        calculate = calculate + digit;
      });
    }
  }

  Mybutton(String number) {
    return MaterialButton(
      shape: CircleBorder(side: BorderSide()),
      color: Colors.black,
      elevation: 20,
      onPressed: () {
        Cal(number);
      },
      child: Text(
        number,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATOR"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.grey,
              border: Border.all(width: 5, color: Colors.black)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            calculate,
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    color: Colors.red,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    onPressed: () {
                      setState(() {
                        calculate = "";
                      });
                    },
                    child: Text(
                      "CLEAR",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 360,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.5,
                        crossAxisCount: 4,
                        mainAxisSpacing: 15),
                    itemCount: Listnum.length,
                    itemBuilder: (context, index) {
                      return Mybutton(Listnum[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
