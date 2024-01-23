import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.only(
            top:  MediaQuery.of(context).size.height*0.1,
            left: MediaQuery.of(context).size.width*0.03,
            right:MediaQuery.of(context).size.width*0.03
        ),
        child: Expanded(
          child:SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Registration From",
                    style:TextStyle(
                      fontSize: 30,
                      color:Colors.deepPurple,
                      fontWeight: FontWeight.bold
                    )

                    )
                  ],
                ),

                SizedBox(height:MediaQuery.of(context).size.height*0.02),
                Text("Name"),
                SizedBox(height:MediaQuery.of(context).size.height*0.01),
                TextField(
                  decoration: InputDecoration(border:OutlineInputBorder()),
                ),

                SizedBox(height:MediaQuery.of(context).size.height*0.02),

                Text("Email"),
                SizedBox(height:MediaQuery.of(context).size.height*0.01),
                TextField(
                  decoration: InputDecoration(border:OutlineInputBorder()),
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height:MediaQuery.of(context).size.height*0.02),

                Text("Phone"),
                SizedBox(height:MediaQuery.of(context).size.height*0.01),
                TextField(
                  decoration: InputDecoration(border:OutlineInputBorder()),
                  keyboardType: TextInputType.phone,
                ),

                SizedBox(height:MediaQuery.of(context).size.height*0.02),

                Text("Password"),
                SizedBox(height:MediaQuery.of(context).size.height*0.01),
                TextField(
                  decoration: InputDecoration(border:OutlineInputBorder()),
                  obscureText: true,
                ),

                SizedBox(height:MediaQuery.of(context).size.height*0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Submit"))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
