import 'package:caller_app/data/const/constantvariables.dart';
import 'package:flutter/material.dart';

class AccountProfileScreen extends StatefulWidget {
  const AccountProfileScreen({super.key});

  @override
  State<AccountProfileScreen> createState() => _AccountProfileScreenState();
}

class _AccountProfileScreenState extends State<AccountProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height*1,
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(left: 4,right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height*0.04),
            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.keyboard_backspace_sharp,size: 35,)),
            SizedBox(height: size.height*0.04),
            Stack(
              children:  [
                Container(
                  height: 120,
                  width: size.width*1,

                  padding: EdgeInsets.only(left: 40,right: 0,top: 14,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: double.infinity,
                        color: Colors.pink.withOpacity(0.4),
                        child: Row(
                          children: [
                            SizedBox(width: size.width*0.35,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Jhon Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                Text("jhonson@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white)),
                                Text("*1 777 888 991",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 0,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height*0.14),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Credits",style: TextStyle(color: Colors.brown,fontSize: 18),),
                      Text("120",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Minutes",style: TextStyle(color: Colors.brown,fontSize: 18),),
                      Text("12:00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    color: KConstColors.primaryColor,
                    child: Text("Top Up",
                        style: TextStyle(
                            color: Colors.white,

                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: size.height*0.14),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text("About",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              height: size.height*0.12,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.2),
                border : Border.all(color: Colors.black)
              ),
            )
          ],
        ),
      ),
    );
  }
}
