import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: l(),
    );
  }
}

class l extends StatefulWidget {

  @override
  _l createState() => _l();
  
}

class _l extends State<l> {
  String myText = "mmdok";
  bool obscureText = true;

  
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

Future<void> mmd() async{

  final url = Uri.parse('http://mmdok29.000webhostapp.com/loginapi.php');
final response = await http.post(url, body: {
  'username': "mohammad",
  'password': "2911",
});

  // دریافت پاسخ موفقیت‌آمیز بود
  final data = jsonDecode(response.body);
  setState(() {
   myText = "ridam to flitter" + data ;
  });
 
}

@override
Widget build(BuildContext context) {
return Scaffold(
	
backgroundColor: Color(0xffffffff),
body:Align(
alignment:Alignment.centerLeft,
child:Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children: [
Text( "myText",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:22,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 70),
child:Text( myText,
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffa29b9b),
),
),
),
TextField(
controller:usernameController,
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
keyboardType: TextInputType.emailAddress,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
focusedBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Email",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff7c7878),
),
hintText:"Enter EmailAddress",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x00ffffff),
isDense:false,
contentPadding:EdgeInsets.all(0),
),
),
Padding(
padding:EdgeInsets.symmetric(vertical: 16,horizontal:0),
child:TextField(
controller:passwordController,
obscureText:obscureText,
textAlign:TextAlign.start,
maxLines:1,
keyboardType : TextInputType.number,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
focusedBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Password",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff7c7878),
),
hintText:"Enter Password",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x00ffffff),
isDense:false,
contentPadding:EdgeInsets.all(0),
suffixIcon: IconButton(
  icon: Icon(
    obscureText ? Icons.visibility : Icons.visibility_off,
    color: Color(0xff7b7c82),
    size: 24,
  ),
  onPressed: () {
    setState(() {
      obscureText = !obscureText;
    });
  },
),

),
),
),
Align(
alignment:Alignment.centerLeft,
child:Text(
"Forgot Password?",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
Padding(
padding:EdgeInsets.symmetric(vertical: 50,horizontal:0),
child:MaterialButton(
onPressed:(){
	mmd();
},
color:Color(0xff3a57e8),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
),
padding:EdgeInsets.all(16),
child:Text("Login", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:50,
minWidth:MediaQuery.of(context).size.width,
),
),
],),),),),
)
;}
}




