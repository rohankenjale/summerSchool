import 'package:flutter/material.dart';

class signUp extends StatefulWidget{
  @override
  State<signUp> createState() => _signUpState();
}

Widget SignButton(){
  return Center(
    child: Container(width:200,
      height :40,
      child: ElevatedButton(onPressed: (){}, child: Text('Sign up',
        style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20
        ),
      )),
    ),
  );
}
Widget CustomTextField(String label, double width){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 30),
        child: Text('$label', style:TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
        )),
      ),
      SizedBox(height: 5),
      Center(
        child: Container(
          height: 56,
          width:width,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Color.fromRGBO(43, 52, 103,1),
          blurRadius:6,
          offset: Offset(0,2))]),
          child: TextField(style: TextStyle(fontSize: 18),
          decoration: InputDecoration(border: InputBorder.none),),
        ),
      )
    ],
  );
}
Widget Email(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 30),
        child: Text('Email', style:TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
        )),
      ),
      SizedBox(height: 5),
      Center(
        child: Container(
          height: 56,
          width:300,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Color.fromRGBO(43, 52, 103,1),
                  blurRadius:6,
                  offset: Offset(0,2))]),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10),
              prefixIcon: Icon(Icons.email),
                border: InputBorder.none),),
        ),
      )
    ],
  );
}
Widget Pass(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 30),
        child: Text('Password', style:TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
        )),
      ),
      SizedBox(height: 5),
      Center(
        child: Container(
          height: 56,
          width:360,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Color.fromRGBO(43, 52, 103,1),
                  blurRadius:6,
                  offset: Offset(0,2))]),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10),
              prefixIcon: Icon(Icons.person)
            ),),
        ),
      )
    ],
  );
}
class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    print('build method called');
 return Scaffold(
   appBar: AppBar(title: Text('Sign up')),
   body: Stack(
     children: [
       Container(
         height: double.infinity,
         width: double.infinity,
         child:
           SingleChildScrollView(
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   padding: EdgeInsets.all(50),
                   width: double.infinity,
                   child: Column(
                     children: [
                       Text('New Account'),
                       Text('Sign Up and get started'),
                       Email(),
                       Row(
                         children: [
                           CustomTextField("First Name", 143),
                           CustomTextField("Last Name", 143),
                         ],
                       ),
                       CustomTextField("Meta-Mask Id", 360),
                       CustomTextField('Roll', 360),
                       Pass(),
                       SignButton()
                     ],
                   ),
                 )
               ],
             )
           )
       )
     ],
   )
 );
  }
}