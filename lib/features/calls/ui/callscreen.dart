import 'package:caller_app/data/const/constantvariables.dart';
import 'package:caller_app/features/calls/contract/ui/contract_screen.dart';
import 'package:caller_app/features/calls/recent/ui/recent_call_screen.dart';
import 'package:caller_app/features/credits/ui/addcredits.dart';
import 'package:caller_app/features/dashboard/ui/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
            SizedBox(height: size.height*0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>DashboardScreen()));
                }, icon: Icon(CupertinoIcons.arrow_left)),
                TextButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>AddCreditScreen()));
                    }, child: Text("BUY CREDIT",style: TextStyle(color: KConstColors.primaryColor),)),
              ],
            ),
            SizedBox(height: size.height*0.08),
            Container(
              width: double.infinity,
              height: size.height*0.08,
              margin: EdgeInsets.only(left: 24,right: 24),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1.5)
              ),
            ),
            SizedBox(height: size.height*0.03),
            Container(
              width: 600,
              height: size.height*0.5,
              //color: Colors.greenAccent,
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("1",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("2",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("ABC",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("3",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("DEF",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),
                      


                    ],
                  ),
                  SizedBox(height: size.height*0.043),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("4",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("GHI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("5",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("JKL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("6",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("MNO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: size.height*0.043),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("7",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 16,
                                child: Text("PQRS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("8",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("TUV",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("9",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 22,
                                child: Text("XYZ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),))
                          ],
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: size.height*0.043),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(

                                children: [
                                  SizedBox(height: 05,),
                                  Text("0",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 6,
                                left: 26,
                                child: Text("_",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Stack(
                          children:  [
                            Container(
                              width: 70,
                              height:70,
                              padding: EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                shape: BoxShape.circle
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.delete_left,size: 40,),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),



                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: size.height*0.03),
            Container(
              height: size.height*0.08,
              width: size.width*0.16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green
              ),
              child: Icon(CupertinoIcons.phone_fill,color: Colors.white,size: 40,),
            ),
            SizedBox(height: size.height*0.042),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>RecentCallScreen()));
                  },
                  child: Column(
                    children: [
                      Icon(CupertinoIcons.clock,size: 35,),
                      Text("Recent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>CallScreen()));
                  },
                  child: Column(
                    children: [
                      Icon(Icons.dialpad_sharp,size: 35,),
                      Text("Dial",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>ContractScreen()));
                  },
                  child: Column(
                    children: [
                      Icon(Icons.account_box_sharp,size: 35,),
                      Text("Contract",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
