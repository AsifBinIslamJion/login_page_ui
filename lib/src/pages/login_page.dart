import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_upload/src/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 220, 222),
      appBar: AppBar(
        title: Center(
          child: Text('Login page', style: TextStyle(fontSize: 30)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'User Name',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),

                Obx(
                  () => TextField(
                    obscureText: loginController.passwordview.value,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: loginController.changeViewPassword,
                        icon: loginController.passwordview()
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 150, 163, 172),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
