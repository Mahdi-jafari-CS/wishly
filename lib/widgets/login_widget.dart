import 'package:flutter/material.dart';
import 'package:test_app/utils.dart';

class LoginWidget extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: TextFormField(
            style: textStyle(16,Colors.black,FontWeight.w500),
            controller: emailcontroller,
            decoration: InputDecoration(
              hintText: 'Your Email',
              filled: true,
              fillColor: Colors.grey.shade200,
              border: InputBorder.none,
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 20,),
                Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: TextFormField(
            style: textStyle(16,Colors.black,FontWeight.w500),
            controller: passwordcontroller,
            decoration: InputDecoration(
              hintText: 'Your Password',
              filled: true,
              fillColor: Colors.grey.shade200,
              border: InputBorder.none,
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 24,),
        Container(
          width: MediaQuery.of(context).size.width * 0.6 ,
          height: 45,
          child: TextButton(onPressed: (){},
          style: TextButton.styleFrom(backgroundColor: Colors.lightBlue.shade200),
          child: Text('Login',style: textStyle(20, Colors.white, FontWeight.bold),),
          ),
          )
      ],
    );
  }
}
