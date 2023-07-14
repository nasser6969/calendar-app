import 'package:calendar_app/ui/task_create_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:intl/intl.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<String> hours = [
    "9AM",
    "10AM",
    "11AM",
    "12AM",
    "1PM",
    "2PM",
    "3PM",
    "4PM",
    "5PM",
    "6PM",
    "7PM",
    "8PM",
    "9PM"
  ];

  List<String> weekdays = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];

  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffff9eb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff213546),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TaskCreateScreen(),
                          ),
                        );
                      },
                      color: const Color(0xff309398),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Add Task',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Productive Day, Nasser',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'April, 2020',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff213546),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: weekdays.length,
                      itemBuilder: (context, index) {
                        return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              weekdays[index],
                              style: TextStyle(
                                  color: DateFormat('EEE')
                                              .format(DateTime.now()) ==
                                          weekdays[index]
                                      ? Colors.red
                                      : Colors.grey[500]),
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: weekdays.length,
                      itemBuilder: (context, index) {
                        return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              DateFormat('d').format(DateTime(date.year,
                                      date.month, date.day - date.weekday % 7)
                                  .add(Duration(days: index))),
                              style: TextStyle(
                                  color: DateFormat('EEE')
                                              .format(DateTime.now()) ==
                                          weekdays[index]
                                      ? Colors.red
                                      : const Color(0xff213546),
                                  fontWeight: FontWeight.bold),
                            ));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 600,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 600,
                      width: 80,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: hours.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Text(
                              hours[index],
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Dash(
                            length: 250,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 280,
                          decoration: BoxDecoration(
                            color: const Color(0xffffe4c7),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Project Research',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff213546),
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Discuss with colleagues about future plan',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Dash(
                            length: 250,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 280,
                          decoration: BoxDecoration(
                            color: const Color(0xffd4e4fe),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Medical App',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff213546),
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Add medicine tab',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 100,
                          width: 280,
                          decoration: BoxDecoration(
                            color: const Color(0xfffed4d6),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Going to the GYM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff213546),
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'take pre workout and do cardio',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
