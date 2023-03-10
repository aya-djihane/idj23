import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
automaticallyImplyLeading: false,
        title: const Text('Home',style: TextStyle(color: Colors.black),),
        actions:const [
           Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu,color: Colors.black,size: 40,),
          )
        ],
      ),
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
          child: Column(
            children: [
           const SizedBox(height: 70,),

               Column(
                 children: const[
                   Text('Congratulations!',style: TextStyle(
                     color: Color(0xff78258B),fontSize: 30,fontWeight: FontWeight.bold,
                   ),
                   ),
                   const SizedBox(height: 20,),
                   Text('Name',style: TextStyle(
                     color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,
                   ),
                   ),
                 ],
               ),
              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 305,
                  width: 304,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.29),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Center(
                    child: Image.asset('lib/assets/home.png')
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
