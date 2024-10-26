import 'package:flutter/material.dart';
import 'package:penyuluhan_narkoba_app/beranda/beranda_page.dart';
import 'package:penyuluhan_narkoba_app/util/text_input_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isShowPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode? _autovalidateMode;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 250, 243, 1),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 25),
          child: Form(
            key: _formKey,
            autovalidateMode: _autovalidateMode,
            child: Column(
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    child: Image.asset(
                      "assets/images/login-img.jpg",
                      // height: 300,
                      // width: MediaQuery.of(context).size.width,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextInputView(
                          controller: _emailController,
                          name: "Alamat Email",
                          placeholder: "Alamat email anda",
                          suffixImage: const Icon(Icons.person),
                          keyboardType: TextInputType.emailAddress,
                          validator: (text) {
                            const String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(text!)) {
                              return 'Please insert a valid email';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        TextInputView(
                          controller: _passwordController,
                          name: 'Kata Sandi',
                          placeholder: 'Kata sandi anda',
                          suffixImage:
                              !_isShowPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                          suffixTapped: () {
                            setState(() {
                              _isShowPassword = !_isShowPassword;
                            });
                          },
                          isSecureText: !_isShowPassword,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BerandaPage()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Avenir', color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
