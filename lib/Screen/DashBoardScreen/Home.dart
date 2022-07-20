import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Styles/colors.dart';
import 'package:inform_her/Styles/font_size.dart';

import 'Activity.dart';
import 'EmailFQA.dart';
import 'Question.dart';
import 'catergories.dart';
import 'exper_question.dart';
import 'expert_answersection.dart';


class HomeDashboardScreen extends StatefulWidget {
  const HomeDashboardScreen({Key? key}) : super(key: key);

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(

            children: [
              buildMeunItems(context),
            ],
          ),
        ),



      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              color: const Color(0xffDDDBFF),
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap : () {
                              openDrawer();
                            },
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment : Alignment.center,
                              child: Text(
                                "InformHer",
                                style: GoogleFonts.workSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff7772D3)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Activities() ));
                            },
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(

                        children:  [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("24/7",
                              style: GoogleFonts.workSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff7772D3)),

                            ),

                          ),
                          const SizedBox(height: 19,),
                          Text("Help Center",
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),
                          ),
                          const SizedBox(height: 20,),
                          const Image(image: AssetImage("assets/images/people.png"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Tell us how we can help",
                      style: GoogleFonts.workSans(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff7772D3)),
                    ),
                    const SizedBox(height: 4,),
                    Text("Expertise are standing by to help \n you make informed decision",
                      style: GoogleFonts.workSans(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff7772D3)),

                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 380,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const QuestionScreen()));
                        },
                        child: ListTile(
                          tileColor: const Color(0xffFFFFFF).withOpacity(0.9),


                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),

                          ),
                          leading:  const Image(image: AssetImage("assets/images/layer.png")),
                          title:  Text(
                            "FAQS",
                            style: GoogleFonts.workSans(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),

                          ),
                          subtitle:
                          Text('Find Intelligent answers instantly',
                            style: GoogleFonts.workSans(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),
                          ),


                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 380,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>EmailQuestion() ));
                        },
                        child: ListTile(
                          tileColor: const Color(0xffFFFFFF).withOpacity(0.9),


                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),

                          ),
                          leading:  const Image(image: AssetImage("assets/images/layer.png")),
                          title:  Text(
                            "Email",
                            style: GoogleFonts.workSans(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),

                          ),
                          subtitle:
                          Text('Get solutions beamed to your inbox',
                            style: GoogleFonts.workSans(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),
                          ),

                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openDrawer() {
    drawerKey.currentState!.openDrawer();
  }
}


Widget buildMeunItems(BuildContext context) => Container(
  margin: const EdgeInsets.all(20),
  alignment: Alignment.topLeft,
  padding: const EdgeInsets.only(top: 50),


  child:   Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text("InformHer",
           style: GoogleFonts.workSans(fontSize: AppSize.drawerHeader, color: AppColor.textInputColor, fontWeight: FontWeight.bold),

         ),
         IconButton(onPressed: () {
           Navigator.of(context).pop();
         },
             icon: Icon(Icons.cancel_outlined, color: AppColor.textInputColor,)
         )
       ],
     ),
      const SizedBox(height: 70,),


      GestureDetector(

        onTap: (){},

        child: Text("About Me",
          style: GoogleFonts.workSans(fontSize: AppSize.drawerFontSize, color: AppColor.textInputColor, fontWeight: FontWeight.bold),
        ),

      ),

      const SizedBox(height: 70,),

      GestureDetector(

        onTap: (){},

        child: Text("Health Center Near you",
          style: GoogleFonts.workSans(fontSize: AppSize.drawerFontSize, color: AppColor.textInputColor, fontWeight: FontWeight.bold),
        ),

      ),

      const SizedBox(height: 70,),

      GestureDetector(

        onTap: (){},

        child: Text("Join Support Group",
          style: GoogleFonts.workSans(fontSize: AppSize.drawerFontSize, color: AppColor.textInputColor, fontWeight: FontWeight.bold),
        ),

      ),



      const SizedBox(height: 70,),

      GestureDetector(

        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CarteogriesPage()));
        },

        child: Text("Choose Category",
          style: GoogleFonts.workSans(fontSize: AppSize.drawerFontSize, color: AppColor.textInputColor, fontWeight: FontWeight.bold),
        ),

      ),

      const SizedBox(height: 290,),

      ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(
              const Color(0xff7772D3)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const  EmailQuestion () ));

        },
        child: Container(
          child: Row(
            children: const [
              Icon(Icons.support),
              Text("Contact Support")
            ],
          ),
        ),
      )

    ],

  ),
);
