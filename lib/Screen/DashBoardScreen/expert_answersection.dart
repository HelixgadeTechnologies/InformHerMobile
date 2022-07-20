import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Styles/font_size.dart';

import '../../Styles/colors.dart';
import 'Home.dart';

class ExpertAnswerSection extends StatefulWidget {
  const ExpertAnswerSection({Key? key}) : super(key: key);

  @override
  State<ExpertAnswerSection> createState() => _ExpertAnswerSectionState();
}

class _ExpertAnswerSectionState extends State<ExpertAnswerSection> {


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
                                  "What are the  causes of \n yeast infection",
                                  style: GoogleFonts.workSans(
                                      fontSize: 15,
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
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email Address ',
                            helperStyle:  GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffC4C4C4)),
                            hintStyle: const TextStyle(color: Color(0xffC4C4C4),),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),

                            ),
                            contentPadding: const EdgeInsets.all(20),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff9F9C9C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(18)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff9F9C9C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(18)
                            ),
                          ),


                          minLines: 6,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                        ),
                      ),

                    ],
                  ),
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
                          onPressed: ()  {



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

              ),
            ),
          )
        ],
      ),
    );
  }
}
