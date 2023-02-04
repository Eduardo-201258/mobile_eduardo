import 'package:flutter/material.dart';
import 'package:onboarding/pages/login.dart';
import 'package:onboarding/screens/onBoarding/componets/content_onboarding.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) { 

    return Scaffold(
      body: Column(
        children: [
          Expanded(child:  PageView.builder(
            controller: _controller,
            itemCount: contents.length,
            onPageChanged: (int index){
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, i){
            return SingleChildScrollView(
              child: Padding(padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 150)),
                  Image.asset(contents[i].img, height: 250,),
                  SizedBox(height: 10,),
                  Text(
                    contents[i].text,
                    style : TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 102, 6, 132)
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    contents[i].description,
                    style : TextStyle(
                      color: Color.fromARGB(255, 79, 73, 73),
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                  
              ),),
            );
          }),
          ),
           Container(
              child: 
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      contents.length, (index) => buildPage(index, context))
              ),
            ),
            Container( 
              height: 55,
              width: double.infinity,
              margin: EdgeInsets.only(top: 170, bottom: 40, left:40 , right: 40),
              child: MaterialButton(
                onPressed: () async {
                  if (currentIndex == contents.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Login()),
                    );
                  }
                  _controller.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                color: currentIndex == contents.length -1 
                ?Color.fromARGB(255, 86, 113, 13)
                :Color.fromARGB(255, 255, 255, 255),
                
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: currentIndex == contents.length -1
                  ? Color.fromARGB(255, 86, 113, 13)
                  : Color.fromARGB(255, 78, 79, 78)
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  currentIndex == contents.length - 1
                      ? "Continuar"
                      : "Siguiente",
                      style: currentIndex == contents.length - 1
                      ? TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                      : TextStyle(color: Color.fromARGB(255, 80, 80, 80)),
                ),
              ),
            )
        ],
      ),
    );
  }

  Container buildPage(int index, BuildContext context) {
    return Container(
      height: 6,
      width: currentIndex == index ? 30 : 20,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            currentIndex == index ? Color.fromARGB(255, 247, 76, 64) : Color.fromARGB(255, 201, 209, 201).withOpacity(0.4),
      ),
    );
  }
}