import 'package:flutter/material.dart';
import 'package:idj23/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                child: Image.asset('lib/assets/4.png'),
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
              const Text(
                'Please, Log In.',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 34),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, bottom: 20, top: 20),
                child: Container(
                  height: 68,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.9),
                    borderRadius: BorderRadius.circular(37),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff78258B).withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(2, 3), // changes position of shadow
                      ),

                    ],
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.only(left: 20.0,right: 20,top: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),

                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
              //   child: Container(
              //     height: 68,
              //     decoration: BoxDecoration(
              //       color: Colors.white.withOpacity(.9),
              //       borderRadius: BorderRadius.circular(37),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Color(0xff78258B).withOpacity(0.3),
              //           spreadRadius: 2,
              //           blurRadius: 5,
              //           offset: Offset(2, 3), // changes position of shadow
              //         ),
              //       ],
              //     ),
              //     child:const Padding(
              //       padding:  EdgeInsets.only(left: 20.0,right: 20,top: 5),
              //       child: TextField(
              //         decoration: InputDecoration(
              //             hintText: 'Last name',
              //             border: OutlineInputBorder(
              //                 borderSide: BorderSide.none
              //             ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // this is the Login Button
              GestureDetector(
                onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home(),)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40, top: 10),
                  child: Container(
                    height: 68,
                    decoration: BoxDecoration(
                      color: const Color(0xff78258B).withOpacity(.8),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff78258B).withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(2, 3),
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Continue ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:20 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                [
                  Text('----------------    ',style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 20),),
                  Text('or',style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 20),),
                  Text('     ----------------',style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 20),),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40, bottom: 0, top: 0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.5),
                    borderRadius: BorderRadius.circular(37),

                  ),
                  child: const Center(
                    child: Text(
                      'Create an Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
