import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}
class _BMICalculatorPageState extends State<BMICalculatorPage> {
  bool isMale = true;
  int height = 183;
  int weight = 74;
  int age = 30;

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
                      const SizedBox(width: 5),
                      Expanded(
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
                              "183",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: kActiveCardColor
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle
                                (fontSize: 20, color: kActiveCardColor),
                              ),
                          ],
                        ),
                        Slider(
                          min: 80,
                          max: 200,
                          value: 180,
                          onChanged: (value) {},
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
                                "74",
                                style: TextStyle(
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
                                    onPressed: () {},
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
                                    onPressed: () {},
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
                                style: TextStyle(
                                  color: kActiveCardColor
                                ),
                        
                              ),
                              Text(
                                "74",
                                style: TextStyle(
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
                                    onPressed: () {},
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
                                    onPressed: () {},
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
                    onPressed: () {},
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
