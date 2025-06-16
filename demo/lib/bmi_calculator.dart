import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}
class _BMICalculatorPageState extends State<BMICalculatorPage> {
  bool isMale = true;
  double height = 183;
  int weight = 74;
  int age = 30;

 double calculateBMI() {
    double heightInMeters = height / 100; // Convert cm to meters
    return weight / (heightInMeters * heightInMeters);
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text('BMI Calculator',
          style: TextStyle(
            color: kActiveCardColor
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration:isMale 
                              ? kTileSelectedBorderDecoration 
                              : kTileBorderDecoration,
                            child: const Column(
                              children: [Icon(
                                Icons.male,
                                size:50,
                                color: kActiveCardColor,
                                ), Text(
                                "Male",
                                style: TextStyle(fontSize: 24,color: kActiveCardColor),
                                )],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: !isMale 
                              ? kTileSelectedBorderDecoration 
                              : kTileBorderDecoration,
                            child: const Column(
                              children: [Icon(
                                Icons.female,
                                size: 50,
                                color: kActiveCardColor,
                                ), Text(
                                  "Female",
                                style: TextStyle(fontSize: 24,color: kActiveCardColor),
                              )],
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    color: kTileColor,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(
                            
                            color: kActiveCardColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toStringAsFixed(2),
                              style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: kActiveCardColor
                              ),
                            ),
                            const Text(
                              "cm",
                              style: TextStyle
                                (fontSize: 20, color: kActiveCardColor),
                              ),
                          ],
                        ),
                        Slider(
                          min: 80,
                          max: 200,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                          thumbColor: kBottomContainerColor,
                          activeColor: kActiveCardColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                  color: kActiveCardColor,
                                ),
                                ),
                              Text(
                                "$weight",
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: kActiveCardColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kBackgroundColor,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 25)
                                        weight--;
                                      });
                                    },
                                    child: Icon(Icons.remove,color: kActiveCardColor,),
                                  ),
                                  SizedBox(width: 10),
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kBackgroundColor,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (weight < 250)
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add,color: kActiveCardColor,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text("Age",
                                style:const TextStyle(
                                  color: kActiveCardColor
                                ),
                        
                              ),
                              Text(
                                "$age",
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: kActiveCardColor
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kBackgroundColor,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (age > 10)
                                        age--;
                                      });
                                    },
                                    child: Icon(Icons.remove,color: kActiveCardColor,),
                                  ),
                                  SizedBox(width:20),
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kBackgroundColor,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (age < 110)
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add,color: kActiveCardColor,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kBottomContainerColor,
                      shape: RoundedRectangleBorder(),
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    onPressed: () {
                      final bmi = calculateBMI();
                      String result;
                      if (bmi < 18.5) {
                        result = "Underweight";
                      } else if (bmi < 24.9) {
                        result = "Normal weight";
                      } else if (bmi < 29.9) {
                        result = "Overweight";
                      } else {
                        result = "Obesity";
                      }
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Your BMI"),
                          content: Text("Your BMI is ${bmi.toStringAsFixed(2)}\nYou are classified as $result."),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("OK"),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('Calculate BMI', style:TextStyle(fontSize:20,color: kActiveCardColor),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
