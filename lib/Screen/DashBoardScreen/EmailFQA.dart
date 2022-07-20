import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Activity.dart';

class EmailQuestion extends StatefulWidget {
  const EmailQuestion({Key? key}) : super(key: key);

  @override
  State<EmailQuestion> createState() => _EmailQuestionState();
}

class _EmailQuestionState extends State<EmailQuestion> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              color: const Color(0xffDDDBFF),
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Text(
                            "Email",
                            style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff7772D3)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
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
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26, right: 26),
                        child: Container(
                          width: 335,
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.white70, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration:  const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter text',
                              labelText: 'Select a doctor',
                              prefixIcon: Icon(Icons.arrow_drop_down),

                            ),

                            controller: new TextEditingController(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email Question ',
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
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff7772D3)),
                          shape:
                          MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          )),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Activities()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 17, left: 100, right: 100, bottom: 17),
                          child: Text(
                            "Ask my question",
                            style: GoogleFonts.workSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xffFFFFFF)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
