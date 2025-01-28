import 'package:flutter/material.dart';

void main(){
  runApp(AppStart());
}


class AppStart extends StatefulWidget {
  const AppStart({super.key});
  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Asad Practice App",
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.abc_sharp, color: Colors.white,)
          ],
          leading: Icon(Icons.arrow_back_ios, color: Colors.white,),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Text("ID Card",
          style: TextStyle(color: Colors.white),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Demo University", style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                      ),),
                      Image.asset('lib/assets/logo.png', height: 70, width: 70,)],
                  ),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.40,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Asad Khan",style: TextStyle(color: Colors.white, fontSize: 22),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                padding: EdgeInsets.all(7.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Text("Student"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Added here
                                children: [
                                  Text("My School Name",style: TextStyle(color: Colors.white, fontSize: 12, ),),
                                  Text("Demo University",style: TextStyle(color: Colors.white, fontSize: 20),),
                                  SizedBox(height: 20,),
                                  Text("Subject",style: TextStyle(color: Colors.white, fontSize: 12, ),),
                                  Text("Flutter",style: TextStyle(color: Colors.white, fontSize: 20),),
                                  SizedBox(height: 20,),
                                  Text("My School Name",style: TextStyle(color: Colors.white, fontSize: 12, ),),
                                  Text("Demo University",style: TextStyle(color: Colors.white, fontSize: 20),),
                                ],),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('lib/assets/photo.jpeg', height: 140, width: 140,)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//I am using in above exmple
// 1. Material App
// 2. Scaffold
// 3. Container
// 4. Column
// 5. Row
// 6. Padding
// 7. Image.assets
// 8. AppBar