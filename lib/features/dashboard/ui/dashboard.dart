import 'package:caller_app/data/const/constantvariables.dart';
import 'package:caller_app/features/calls/ui/callscreen.dart';
import 'package:caller_app/features/credits/ui/addcredits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height*1,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: size.height*0.03),
            Container(
              height: size.height*0.89,
              width: double.infinity,
              decoration: BoxDecoration(
                color: KConstColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35,top: 20,bottom: 10),
                    child: Text(
                      "Chats",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height*0.80829,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: size.height*0.015),
                        Container(
                          height: size.height*0.06,
                          padding: EdgeInsets.only(left: 40,right: 40),
                          child: TextFormField(
                            style: TextStyle(fontSize: 14),
                            controller: _searchController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Icon(CupertinoIcons.search),
                              border: outlineInputBorder(),
                              hintText: "Search",
                              errorBorder: outlineInputBorder(),
                              focusedBorder: outlineInputBorder(),
                              disabledBorder: outlineInputBorder(),
                              enabledBorder: outlineInputBorder(),
                              focusedErrorBorder: outlineInputBorder(),
                            ),
                          ),
                        ),

                        Stack(
                          children:  [
                          Container(
                            height: size.height*0.733,
                            width: double.infinity,
                            // color: Colors.greenAccent,
                            child: ListView.separated(
                                itemBuilder: (_,index){
                                  return ListTile(
                                    title: Text("Name"),
                                    subtitle: Text("Hi, Jhon"),
                                    leading: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: KConstColors.primaryColor.withOpacity(0.7),
                                    ),
                                  );
                                },
                                separatorBuilder: (_,index)=>SizedBox(height: size.height*0.005,),
                                itemCount: 30,
                            ),
                          ),
                            Positioned(
                              bottom: 30,
                              right: 25,
                              child: GestureDetector(
                                onTap: (){},
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: KConstColors.primaryColor,
                                  child: Icon(
                                      CupertinoIcons.add,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ),
                            )
                          ]
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ///Bottom Navigation Bar
            Container(
              width: double.infinity,
              height: size.height*0.08,
              padding: EdgeInsets.only(left: 25,right: 25,top: 10),
              decoration: BoxDecoration(
                  color: KConstColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.bubble_left_bubble_right_fill,
                        color: Colors.white,
                          size: 30,
                        ),
                        Text(
                            "Chats",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>CallScreen()));
                    },
                    child: Column(
                      children: [
                        Icon(
                            CupertinoIcons.phone_fill,
                        color: Colors.white,
                          size: 30,
                        ),
                        Text(
                            "Calls",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_)=>AddCreditScreen())
                       );
                    },
                    child: Column(
                      children: [
                        Icon(
                            CupertinoIcons.cart_fill,
                        color: Colors.white,
                          size: 30,
                        ),
                        Text(
                            "Buy Credit",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Column(
                      children: [
                        Icon(
                            Icons.settings,
                        color: Colors.white,
                          size: 30,
                        ),
                        Text(
                            "Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
            color: Colors.black,
            width: 2
        )
    );
  }
}
