import 'package:caller_app/data/const/constantvariables.dart';
import 'package:caller_app/features/calls/ui/callscreen.dart';
import 'package:caller_app/features/credits/ui/addcredits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
              height: size.height*0.97,
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
                    padding: const EdgeInsets.only(left: 5,top: 20,bottom: 10),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,)),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            "SETTINGS",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height*0.8688,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: size.height*0.025),
                        Row(
                          children: [
                            SizedBox(width: size.width*0.03),
                            Icon(CupertinoIcons.person_solid,size: 50,),
                            TextButton(onPressed: (){}, child: Text("Account Profile",style: TextStyle(fontSize: 22,color: KConstColors.primaryColor),)),
                          ],
                        ),
                        Divider(height: 20,color: Colors.black,thickness: 1.5),

                        Row(
                          children: [
                            SizedBox(width: size.width*0.03),
                            Icon(CupertinoIcons.creditcard_fill,size: 50,),
                            TextButton(onPressed: (){}, child: Text("Buy Credit",style: TextStyle(fontSize: 22,color: KConstColors.primaryColor),)),
                          ],
                        ),
                        Divider(height: 20,color: Colors.black,thickness: 1.5),

                        Row(
                          children: [
                            SizedBox(width: size.width*0.03),
                            Icon(Icons.support_agent_sharp,size: 50,),
                            TextButton(onPressed: (){}, child: Text("Support",style: TextStyle(fontSize: 22,color: KConstColors.primaryColor),)),
                          ],
                        ),
                        Divider(height: 20,color: Colors.black,thickness: 1.5),

                        Row(
                          children: [
                            SizedBox(width: size.width*0.03),
                            Icon(Icons.exit_to_app_sharp,size: 50,),
                            TextButton(onPressed: (){}, child: Text("Account Profile",style: TextStyle(fontSize: 22,color: KConstColors.primaryColor),)),
                          ],
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
            ///Bottom Navigation Bar

          ],
        ),
      ),
    );
  }
}
