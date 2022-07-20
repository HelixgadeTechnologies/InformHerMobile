import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/colors.dart';
import '../../Styles/font_size.dart';
import 'Activity.dart';
import 'Home.dart';
import 'exper_question.dart';
import 'expert_answersection.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  Future<void> showInformationDialog(BuildContext context) async {



    return await showDialog(context: context,
        builder: (context){
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Ask your question",
               style: GoogleFonts.poppins(fontSize: 20, color: AppColor.textInputColor),
             ),
           GestureDetector(
             onTap: () {
               Navigator.of(context).pop();

             },
             child: IconButton(onPressed: () {
               Navigator.of(context).pop();

             }, icon: const Padding(
               padding: EdgeInsets.only(left: 20, bottom: 40),
               child: Icon(Icons.cancel),
             )
             ),
           )
          ],
        ),
        content: TextFormField(


          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter your questions here',
            hintStyle:  TextStyle(
              fontSize: AppSize.textFiledFont,
              color: Colors.grey,
            ),
          ),
          minLines: 6,
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
        actions: [
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
            Navigator.of(context).pop();
          },
              child: const Center(child: Text("Ask",

              ))
          )
        ],
      );
        });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
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
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDashboardScreen()));
                          },

                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "FAQ",
                              style: GoogleFonts.workSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff7772D3)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Image(
                                  image: AssetImage("assets/images/group.png")),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Questions? we’ve \n got instant answers",
                                  style: GoogleFonts.workSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff7772D3)),
                                ),
                              )
                            ],
                          ),
                        )
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ExpertQuestionPage()));

                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 112,
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
                            "What are the causes of yeast infection?",
                            style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text("Dr Chinye answered",
                            style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Image(
                              image: AssetImage(
                            "assets/images/tools.png",
                          )),
                          Text("See Answer",
                            style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {


                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 119,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.topContainerColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 2),
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
                            height: 8,
                          ),
                          Text("Dr Ebi answered",
                            style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Image(
                              image: AssetImage(
                                "assets/images/tools.png",
                              )),
                          Text("See Answer",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ExpertAnswerSection()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 117,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.topContainerColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 2),
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
                          Text("Virgnalcare answered",
                            style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                              image: AssetImage(
                                "assets/images/tools.png",
                              )),
                          Text("See Answer",
                            style: GoogleFonts.poppins(fontSize: AppSize.fqaTextSize, fontWeight: FontWeight.w700, color: AppColor.textInputColor),
                          ),


                        ],

                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
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
                          onPressed: () async {

                            await showInformationDialog(context);

                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 17, left: 100, right: 100, bottom: 17),
                            child: Text("Ask my question"

                            ),
                          )
                      ),
                    ),
                  )

                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}
