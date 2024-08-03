import 'package:flutter/material.dart';

///-----------------------------
/// Custom LoginScreen widget
///-----------------------------
class LoginScreenWithCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ///-----------------------------
            /// Username TextField
            ///-----------------------------
            CustomTextField(
              label: 'Username',
              icon: Icons.person,
            ),
            SizedBox(height: 16),
            ///-----------------------------
            /// Password TextField
            ///-----------------------------
            CustomTextField(
              label: 'Password',
              icon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 32),
            ///-----------------------------
            /// Login Button with gesture detection
            ///-----------------------------
            GestureDetector(
              onTap: () {
                ///-----------------------------
                /// Handle login action
                ///-----------------------------
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Login button tapped')),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText2?.color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///-----------------------------
/// Custom TextField widget
///-----------------------------
class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;

  CustomTextField({
    required this.label,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}