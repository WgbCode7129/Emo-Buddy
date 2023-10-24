import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({Key? key}) : super(key: key);

  @override
  DonutChartState createState() => DonutChartState();
}

const textStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 20,
  height: 2,
);

const chartTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 15,
  height: 2,
);

class DonutChartState extends State<DonutChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "This Month's Progress",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                  fontSize: 40,
                  height: 2,
                ),
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: Stack(
                  children: [
                    PieChart(
                      PieChartData(
                        startDegreeOffset: 250,
                        sectionsSpace: 0,
                        centerSpaceRadius: 100,
                        sections: [
                          PieChartSectionData(
                            value: 65,
                            title: 'Happy',
                            titleStyle: chartTextStyle,
                            color: Colors.yellow.shade700,
                            radius: 40,
                            showTitle: true,
                          ),
                          PieChartSectionData(
                            value: 15,
                            title: 'Angry',
                            titleStyle: chartTextStyle,
                            color: Colors.red.shade700,
                            radius: 40,
                            showTitle: true,
                          ),
                          PieChartSectionData(
                            value: 10,
                            title: 'Sad',
                            titleStyle: chartTextStyle,
                            color: Colors.blue.shade900,
                            radius: 40,
                            showTitle: true,
                          ),
                        ],
                      ),
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade800,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0,
                                  offset: const Offset(3.0, 3.0),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                "Monthly \n Progress",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black54),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset('assets/images/happyBar.png'),
                      ),
                      const Text(
                        'Happiness 60%',
                        style: textStyle,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset('assets/images/sadBar.png'),
                      ),
                      const Text(
                        'Sadness 10%',
                        style: textStyle,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset('assets/images/angryBar.png'),
                      ),
                      const Text(
                        'Angry 30%',
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black54),
                child: const Text(
                  "It's truly heartening to hear that you've experienced moments of contentment and greater emotional control. Progress often comes in small steps and moments of clarity.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 20,
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Mood Tracker"),
      ),
    );
  }
}
