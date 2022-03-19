import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';
import 'package:tiktok_clone/views/widgets/text_input.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Tiktok Clone',
          style: TextStyle(
            fontSize: 35,
            color: buttonColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Text(
          'Login',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          width: MediaQuery.of(context)
              .size
              .width, // ถ้าใช้ padding จะขยับทั้งหน้า อันนี้น่าจะช่วยล็อคหน้า
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInput(
            controller: _emailController,
            labelText: 'Email',
            icon: Icons.email,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInput(
            controller: _passwordController,
            labelText: 'Password',
            icon: Icons.lock,
            isObscure: true,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          //ตีกรอบขนาดปุ่ม
          width: MediaQuery.of(context).size.width - 40,
          height: 50,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: InkWell(
            //ตอบสนองเหมือนปุ่มกด
            onTap: () => authController.loginUser(
              _emailController.text, 
              _passwordController.text,
            ),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
              style: TextStyle(fontSize: 20),
            ),
            InkWell(
              onTap: () {
                print('navigationg user');
              },
              child: Text(
                'Register',
                style: TextStyle(fontSize: 20,color: buttonColor),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
