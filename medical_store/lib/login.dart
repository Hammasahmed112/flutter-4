import 'package:flutter/material.dart';
import 'package:medical_store/bottomnavigation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneController = TextEditingController();

  void _login() {
    String phoneNumber = _phoneController.text.trim();

    if (RegExp('03343082509').hasMatch(phoneNumber)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Bottomnavigation()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid mobile number.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240, left: 155),
              child: Image.asset('accets/images/Vector.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 320, left: 87),
              child: Text(
                'Quick Medical',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 400,
              ),
              child: Text(
                'Please Enter your Mobile Number to Login/Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500, left: 30, right: 30),
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2)),
                    hintText: '+91 9265614292',
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 614, left: 18),
              child: SizedBox(
                height: 46,
                width: 320,
                child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent),
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
