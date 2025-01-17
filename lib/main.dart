
import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() => runApp(MaterialApp(
  title: 'Runwith',
  theme: ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: "NanumGothic",
  ),
  home: MyApp(),
));


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 150, 255, 220),
    ),
        home: Scaffold(
        body:ListView(
          children:[
        Container(
          width: screenWidth,
          height: screenHeight,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.18, -0.98),
                      end: Alignment(0.48, 1.98),
                      colors: [Colors.black.withOpacity(0), Colors.black],
                    ),
                  ),
                ),
              ),
              Positioned(

                left: screenWidth/2 - 124,
                top: 276,
                child: SizedBox(
                  width: 248,
                  height: 248,
                  child: Image.asset("assets/image_1.png"),
                ),
              ),
              Positioned(
                left: screenWidth/2 - 138,
                top: 261,
                child: SizedBox(
                  width: 276,
                  height: 44,
                  child: Image.asset("assets/runwith_high_resolution_logo_transparent_12.png"),
                ),
              ),
              Positioned(
                left: screenWidth/2 - 143.5,
                top: 655,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Main())
                    );
                    print("버튼 클릭");
                  },
                  child: SizedBox(
                    width: 287,
                    height: 51,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 287,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(43),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 61,
                          top: 13,
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: Image.asset("assets/image_2.png"),
                          ),
                        ),
                        Positioned(
                          left: 61,
                          top: 14,
                          child: SizedBox(
                            width: 194,
                            height: 24,
                            child: Text(
                              'Google로 로그인',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Istok Web',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    )
        )
    );
  }
}