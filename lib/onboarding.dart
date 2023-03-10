import 'package:flutter/material.dart';
import 'package:idj23/login_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {

    PageController controller = PageController();
     int lastPage =0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffCC81DB).withOpacity(.5),
              const Color(0xff9E92E2).withOpacity(.5)
            ],
          )),
          child: Stack(
            children: [
              PageView(
                onPageChanged:(value) {
                  print('${value}');
                  setState(() {
                     lastPage =value;
                  });
                },
                controller: controller,
                children: [
                  FirstScreen(), SecondScreen(), ThirdScreen()
                ]
              ),
              Positioned(
                bottom: 29,right: 20,
                child: InkWell(
                  onTap:()=>  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen(),)),
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: const Color(0xff78258B).withOpacity(.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child:  Text('skip',style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 20),)),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffCC81DB).withOpacity(.5),
          const Color(0xff9E92E2).withOpacity(.5)
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 167, right: 30, left: 30),
        child: Column(
          children: [
            Image.asset('lib/assets/1.png'),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Hello !',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Scroll to enjoy',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 34),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffCC81DB).withOpacity(.5),
          const Color(0xff9E92E2).withOpacity(.5)
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 167),
        child: Column(
          children: [
            Image.asset('lib/assets/2.png'),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'scroll again !',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'just do It',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 34),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffCC81DB).withOpacity(.5),
          const Color(0xff9E92E2).withOpacity(.5)
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 167, right: 30, left: 30),
        child: Column(
          children: [
            Image.asset('lib/assets/3.png'),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'click on next ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
                child: Text(
              ' great job',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 34),
            ))
          ],
        ),
      ),
    );
  }
}
