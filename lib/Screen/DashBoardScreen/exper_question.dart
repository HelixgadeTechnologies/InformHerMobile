import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Styles/colors.dart';
import '../../Styles/font_size.dart';
import 'Activity.dart';
import 'Question.dart';
import 'expert_answersection.dart';

class ExpertQuestionPage extends StatefulWidget {
  const ExpertQuestionPage({Key? key}) : super(key: key);

  @override
  State<ExpertQuestionPage> createState() => _ExpertQuestionPageState();
}

class _ExpertQuestionPageState extends State<ExpertQuestionPage> {

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

      body: Column(
        children: [
          Container(
            height: 330,
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
                              "105",
                              style: GoogleFonts.workSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff7772D3)),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(

                      children:  [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Questions",
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),

                          ),

                        ),
                        const SizedBox(height: 19,),
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Help inform a young girl",
                    style: GoogleFonts.workSans(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff7772D3)),
                  ),
                  const SizedBox(height: 4,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Clear the curiosity of the young   minds ",
                        style: GoogleFonts.workSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff7772D3)),

                      ),
                      Text("and help   them to make  informed  ",
                        style: GoogleFonts.workSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff7772D3)),

                      ),
                      Text("decisions regarding their body",
                        style: GoogleFonts.workSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff7772D3)),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 360,
                        child: TextField(
                          onChanged: (value) {
                            // Method For Searching
                          },
                          decoration: const InputDecoration(
                            hintText: "Search Data",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(7.0)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpertAnswerSection()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 100,
                            width: 335,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.topContainerColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "What are the causes of yeast infection??",
                                  style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Image(
                                    image: AssetImage(
                                      "assets/images/tools.png",
                                    )),
                                const SizedBox(height: 15,),
                                Text("Tap to answer",
                                  style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 100,
                          width: 335,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.topContainerColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Can you get pregnant after having sex only once?",
                                style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Image(
                                  image: AssetImage(
                                    "assets/images/tools.png",
                                  )),
                              Text("Tap to answer",
                                style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpertAnswerSection()));

                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 100,
                          width: 335,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.topContainerColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "What causes the virginal odor?",
                                style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                              const Image(
                                  image: AssetImage(
                                    "assets/images/tools.png",
                                  )),
                              Text("Tap to answer",
                                style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                              ),


                            ],

                          ),

                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 12, top: 13),
                          child: ElevatedButton(

                              style: ButtonStyle(

                                backgroundColor:
                                MaterialStateProperty.all<Color>(

                                    const Color(0xff7772D3)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(4),
                                    )),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Activities()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 17, left: 100, right: 100, bottom: 17),
                                child: Text("Submit"

                                ),
                              )
                          ),
                        ),
                      )

                    ],

                  )

                ],
              ),
            ),
          )
        ],
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

        onTap: (){},

        child: Text("Change Category",
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => const QuestionScreen() ));

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
