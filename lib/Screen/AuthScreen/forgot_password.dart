import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Provider/AuthProvider/user_authentication.dart';
import '../../Styles/colors.dart';
import '../../Styles/font_size.dart';
import 'login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: isLoading == false
            ? Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rest Password",
                            style: GoogleFonts.workSans(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: AppColor.textInputColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Enter your Email",
                            style: GoogleFonts.workSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: AppColor.textInputColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 17, color: Color(0xff7772D3)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    controller: emailController,
                                    style: const TextStyle(
                                        color: Color(0xff7772D3)),
                                    keyboardType: TextInputType.name,
                                    onSaved: (value) {},
                                    textInputAction: TextInputAction.done,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: AppColor.backgroundColor,
                                      border: InputBorder.none,
                                      hintText: 'Email ',
                                      helperStyle: GoogleFonts.roboto(
                                          fontSize: AppSize.textFiledFont,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                      hintStyle: TextStyle(
                                        fontSize: AppSize.textFiledFont,
                                        color: Colors.grey,
                                      ),
                                      contentPadding: const EdgeInsets.all(20),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          AuthClass()
                                              .resetPassword(
                                                  email: emailController.text
                                                      .trim())
                                              .then((value) => {
                                                    if (value == "Email sent")
                                                      {
                                                        setState(() {
                                                          isLoading = false;
                                                        }),
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const LoginPage()))
                                                      }
                                                    else
                                                      {
                                                        setState(() {
                                                          isLoading = false;
                                                        }),
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                                SnackBar(
                                                                    content: Text(
                                                                        value)))
                                                      }
                                                  });
                                        },
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
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 17,
                                              left: 125,
                                              right: 123,
                                              bottom: 17),
                                          child: Center(
                                            child: Text(
                                              "Continue",
                                              style: GoogleFonts.workSans(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800,
                                                  color:
                                                      const Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const LoginPage()));
                                  },
                                  child: Text(
                                    " Remember account? Sign In",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: AppColor.textInputColor),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
    ;
  }
}
