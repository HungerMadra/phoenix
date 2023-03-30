import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// change the class name from RegisterForm to RegisterScreen
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

// change the class name from _RegisterFormState to _RegisterScreenState
class _RegisterScreenState extends State<RegisterScreen> {
  // create a global key for the form
  final _formKey = GlobalKey<FormState>();

  // create variables to store the user input
  String fullName = '';
  String alterEgo = '';
  String phone = '';
  String email = '';
  String password = '';

  // create a method to validate and submit the form
  void _submitForm() {
    // check if the form is valid
    if (_formKey.currentState!.validate()) {
      // save the user input
      _formKey.currentState!.save();
      // print the user input for debugging purposes
      print('Full name: $fullName');
      print('Alter ego: $alterEgo');
      print('Phone: $phone');
      print('Email: $email');
      print('Password: $password');
      // add your logic here to send the user input to your backend service or database

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
    child: Form(
    key: _formKey,
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'Rella',
    style:GoogleFonts.pacifico(fontSize: 60, color: Colors.deepOrange[400]),
    ),
    SizedBox(height: 16.0),
    TextFormField(
    decoration:
    InputDecoration(labelText: 'Full name', border: OutlineInputBorder()),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your full name';
    }
    return null;
    },
    onSaved: (value) {
    setState(() {
    fullName = value ?? '';
    });
    },
    ),
    SizedBox(height: 8.0),
    TextFormField(
    decoration:
    InputDecoration(labelText: 'Alter ego', border: OutlineInputBorder()),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your alter ego';
    }
    return null;
    },
    onSaved: (value) {
    setState(() {
    alterEgo = value ?? '';
    });
    },
    ),
    SizedBox(height: 8.0),
    TextFormField(
    decoration:
    InputDecoration(labelText: 'Phone', border: OutlineInputBorder()),
    validator:
    (value) { // you can use a package like phone_number to validate phone numbers more accurately
    if (value == null || value.isEmpty) {
    return 'Please enter your phone number';
    }
    return null;
    },
    onSaved:
    (value) {
    setState(() {
    phone = value ?? '';
    });
    },
    ),
    SizedBox(height :8.0),
    TextFormField(
    decoration :InputDecoration(labelText :'Email', border :OutlineInputBorder()),
    validator :(value){ // you can use a package like email_validator to validate emails more accurately
    if(value ==null || value.isEmpty){
    return'Please enter your email address';
    }
    return null;
    },
    onSaved :(value){
    setState((){
    email = value ?? '';
    });
    },
    ),
    SizedBox(height :8.0),
    TextFormField(
    decoration :InputDecoration(labelText :'Password', border :OutlineInputBorder()),
    obscureText :true,
    validator :(value){
    if(value ==null || value.isEmpty){
    return'Please enter your password';
    }
    return null;
    },onSaved :(value){
    setState((){
    password = value ?? '';
    });
    },
    ),
    SizedBox(height :16.0),

// register button

                ElevatedButton.icon(

                  onPressed:

                      () {

// validate and save the form

                    if (_formKey.currentState!.validate()) {

                      _formKey.currentState!.save();

// add your logic here to send the data to API or database

                      print('Full name:$fullName');

                      print('Alter ego:$alterEgo');

                      print('Email:$email');

                      print('Password:$password');

                    }

                  },

                  icon:

                  Icon(Icons.arrow_forward_ios,

                    color:

                    Colors.green.shade800,

                  ),

                  label:

                  Text('Register'),

                  style:ElevatedButton.styleFrom(

                    primary:

                    Colors.black,

                    onPrimary:

                    Colors.deepOrange[400],

                    shadowColor:

                    Colors.green[400],

                    elevation:

                    0.0,

                    shape:

                    RoundedRectangleBorder(

                      borderRadius:

                      BorderRadius.circular(12.0),

                      side:

                      BorderSide(

                        width:

                        1.0,

                        color:

                        Colors.deepOrange.shade400,

                      ),

                    ),

                  ),

                ),

              ],

            ),

          ),

        )

    ),
    ),
    );

  }

}