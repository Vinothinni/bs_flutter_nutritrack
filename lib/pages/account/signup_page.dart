import 'package:bs_flutter_nutritrack/pages/account/login_page.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // bool _passwordVisible = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
        children: [
      Opacity(
        opacity: 0.65, // Set opacity value between 0.0 to 1.0
        child: Image.network(
          "https://media.istockphoto.com/id/1457433817/photo/group-of-healthy-food-for-flexitarian-diet.jpg?b=1&s=170667a&w=0&k=20&c=RKgGJW8aIINIPpisynZ2x6UWFiMZ0afmEN32gmbYvVI=",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7), // set your desired background color here
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 45.0, vertical: 150.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                     
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                           
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        // validator: (input) {},
                        decoration: InputDecoration(
                          labelText: 'Fullname',
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 25, color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        // validator: (input) {},
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          contentPadding: EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 25, color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        // validator: (input) {},
                        obscureText: !_obscureText,
                        maxLength: 10,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          contentPadding: EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 25, color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            foregroundColor: Colors.black,
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Already have an account? Log in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    ])
  );
  }
}
