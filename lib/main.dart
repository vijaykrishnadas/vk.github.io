import 'dart:js';

import 'package:blog_webapp/menu_page.dart';
import 'package:blog_webapp/responsive_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VK Blog',
      theme: ThemeData(
      fontFamily: 'GoogleFonts.roboto()',
      textTheme: TextTheme(

      ),
      primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
       body: Scrollbar(
         child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                ResponsiveWidget(
                  mobile: Container(
                    color: Color.fromARGB(10, 255, 255, 240),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WebIcon(),
                              MaterialButton(child: Icon(Icons.menu), onPressed: (){
                                Navigator.of(context).push(_createRoute());
                              },minWidth: 0,)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.grey,),
                          )
                        ],
                      ),
                    ),
                  ),
                  desktop:Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WebIcon(),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,0,16,0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          MaterialButton(onPressed: (){},child: Text("Home",style: GoogleFonts.poppins(color: Color.fromARGB(255,143, 87, 65))),minWidth: 0.0,),
                                          MaterialButton(onPressed: (){},child: Text("Category",style: GoogleFonts.poppins(color: Color.fromARGB(255,143, 87, 65))),minWidth: 0.0,),
                                          MaterialButton(onPressed: (){},child: Text("About Us",style: GoogleFonts.poppins(color: Color.fromARGB(255,143, 87, 65))),minWidth: 0.0,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SocialIcon(FontAwesomeIcons.facebook),
                                      SocialIcon(FontAwesomeIcons.twitter),
                                      SocialIcon(FontAwesomeIcons.instagram),
                                    ],
                                  ),
                                ],
                     ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.grey,),
                              )
                            ],
                          ),
                        ),
                  ),
                ),
                ResponsiveWidget(
                  mobile: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 12,),
                        HeroText("Recently Added", 22),
                        SizedBox(height: 12,),
                        Expanded(
                          child: Container(
                              child: Image.asset('image/22.jpg')),
                        ),
                        BodyText("Technology / 4 min read",12),
                        HeroText2("The Future Of Intelligent Search",18),
                        BodyText("By Vijay K / Aug 5, 2020",10),
                        Padding(
                          padding: const EdgeInsets.only(left: 22,right: 22),
                          child: BodyText("Lorem m Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum",12),
                        ),
                        SizedBox(height: 20,),
                        ButtonText("Read More"),
                      ],
                    ),
                  ),
                  desktop: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Container(child: HeroText("Recently Added", 22),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BodyText("Technology / 4 min read",12),
                                  HeroText2("The Future Of Intelligent Search",18),
                                  BodyText("By Vijay K / Aug 5, 2020",10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22),
                                    child: BodyText("Lorem m Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum Lorem Ipsum Lorem Ipsum",12),
                                  ),
                                  SizedBox(height: 40,),
                                 ButtonText("Read More"),
                                ],
                              ),
                            ),
                           Expanded(
                              child: Container(
                                  child: Image.asset('image/22.jpg')),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ),
                SectionDivider(),
                HeroText("Featured Articles", 22),
                ResponsiveWidget(
                  mobile: Column(
                    children: [
                      VxSwipe(),
                    ],
                  ),
                  desktop: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Row(
                        children: [
                          Expanded(child: ScrollCard()),
                          Expanded(child: ScrollCard()),
                          Expanded(child: ScrollCard()),
                        ],
                      )
                    ),
                  ),
                ),
                SectionDivider(),
                ResponsiveWidget(
                  desktop: Column(
                    children: [
                      HeroText("List Of Articles", 22),
                      SizedBox(height: 20,),
                      ArticleList(),
                      ArticleList(),
                      ArticleList(),
                      ArticleList(),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        padding: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  color: Color.fromARGB(255,143, 87, 65),
                                  width: 0.5
                              ),
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BodyText("Copyright @Site Name",12),
                          ],
                        ),
                      ),
                    ],
                  ),
                  mobile: Column(
                    children: [
                      HeroText("List Of Articles", 22),
                      SizedBox(height: 20,),
                      ArticleList2(),
                      ArticleList2(),
                      ArticleList2(),
                      ArticleList2(),
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        padding: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  color: Color.fromARGB(255,143, 87, 65),
                                  width: 0.5
                              ),
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BodyText("Copyright @Site Name",12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
       ),
    ),
  );
}

  Route _createRoute(){
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => MenuPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child){
          return ScaleTransition(
              alignment: Alignment.topRight,
              scale: animation,
              child: child,
          );
        }
    );
  }

  Widget WebIcon() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                    child: Row(
                      children: [
                        MaterialButton(child: Icon(Icons.image,color: Color.fromARGB(255,143, 87, 65)),
                        onPressed: (){},
                          minWidth: 0,
                        ),
                        MaterialButton(
                          onPressed: (){},child: Text("VKBlog",style: GoogleFonts.poppins(color: Color.fromARGB(255,143, 87, 65))),minWidth: 0,),
                      ],
                    ),
                  ),
    );
  }
}

Widget SocialIcon(icon) {
  return Container(
    child: MaterialButton(
      minWidth: 0,
      onPressed: (){},
        child: FaIcon(icon,color: Color.fromARGB(255,143, 87, 65),),
    ),
  );
}

Widget HeroText(String text, double size){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style: GoogleFonts.cinzel(fontSize: size),textAlign: TextAlign.center,),
  );
}

Widget HeroText2(String text, double size){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style: GoogleFonts.capriola(fontSize: size),textAlign: TextAlign.center,),
  );
}

Widget BodyText(String text, double size){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style: GoogleFonts.poppins(fontSize: size),),
  );
}

MaterialButton ButtonIcon(icon){
  return MaterialButton(onPressed: (){},
  child: Icon(icon),);
}
MaterialButton ButtonText(text){
  return MaterialButton(
    color: Color.fromARGB(200,143, 87, 65),
    onPressed: (){},
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style: GoogleFonts.roboto(color: Colors.white,),),
  ),);
}

Widget ScrollCard(){
  return Card(
    child: InkWell(
      onTap: (){},
      splashColor: Colors.brown,
      child: Column(
        children: [
          Container(height:250,child: Image.asset('image/22.jpg')),
          BodyText("Technology / 4 min read",12),
          HeroText2("The Future Of Intelligent Search",16),
          BodyText("By Vijay K / Aug 5, 2020",10),
        ],
      ),
    ),
  );
}

Widget SectionDivider(){
  return Container(
    margin: const EdgeInsets.only(top:24,bottom: 24),
    color: Colors.grey,
    width: 200,
    height: 1,
  );
}

Widget ArticleList(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      splashColor: Colors.brown,
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BodyText("Article 1", 12),
            BodyText("Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", 12),
            BodyText("(20/02/2020)", 10)
          ],
        ),
      ),
    ),
  );
}

Widget ArticleList2(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      splashColor: Colors.brown,
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BodyText("Article 1", 12),
            Expanded(child: BodyText("Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", 12)),
            BodyText("(20/02/2020)", 10)
          ],
        ),
      ),
    ),
  );
}
Widget VxSwipe(){
  return VxSwiper.builder(
    itemCount: 3,
    height: 400,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    itemBuilder: (context, index) {
      return ScrollCard();
    },
  );
}
