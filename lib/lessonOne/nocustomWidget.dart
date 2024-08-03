import 'package:flutter/material.dart';
///-----------------------------
/// LoginScreen widget without custom widget
///-----------------------------
class LoginScreenNoCustom extends StatelessWidget {
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
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            ///-----------------------------
            /// Password TextField
            ///-----------------------------
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
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