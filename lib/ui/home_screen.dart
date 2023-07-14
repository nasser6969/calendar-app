import 'package:calendar_app/ui/calendar_screen.dart';
import 'package:calendar_app/ui/widgets/projects.dart';
import 'package:calendar_app/ui/widgets/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffff9eb),
      body: Column(
        children: [
          Container(
            height: 225,
            decoration: const BoxDecoration(
              color: Color(0xfff9be7c),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset('assets/images/menu_icon.svg'),
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child:
                            SvgPicture.asset('assets/images/search_icon.svg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/user1.png'),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nasser Atlak',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Tasks',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff213546)),
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff309398),
                  ),
                  height: 55,
                  width: 55,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CalendarScreen()));
                    },
                    icon: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tasks(
                title: 'To Do',
                subTitle: '7 Tasks Now, 1 Started',
                icon: Icon(Icons.alarm, size: 30, color: Colors.white),
                color: Color(0xffe46471),
              ),
              Tasks(
                title: 'In Progress',
                subTitle: '3 Tasks Now, 2 Started',
                icon: Icon(Icons.more_time_rounded,
                    size: 30, color: Colors.white),
                color: Color(0xfff9be7c),
              ),
              Tasks(
                title: 'Done',
                subTitle: '4 Tasks Now, 9 Started',
                icon: Icon(
                  Icons.done_all,
                  size: 30,
                  color: Colors.white,
                ),
                color: Color(0xff6487e4),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Active Projects',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2a3a48)),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              padding: const EdgeInsets.all(15),
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: const [
                Projects(
                  title: 'Calendar App',
                  color: Color(0xff309398),
                  progress: 25,
                  subTitle: '3 Hours Left',
                ),
                Projects(
                  title: 'Exam Study',
                  color: Color(0xffe46471),
                  progress: 65,
                  subTitle: '12 Hour Left',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
