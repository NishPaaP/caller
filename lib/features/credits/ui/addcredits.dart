import 'package:caller_app/data/const/constantvariables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCreditScreen extends StatefulWidget {
  const AddCreditScreen({super.key});

  @override
  State<AddCreditScreen> createState() => _AddCreditScreenState();
}

class _AddCreditScreenState extends State<AddCreditScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Top Up",style: TextStyle(
          color: Colors.white
        ),
        ),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,)
        ),
        centerTitle: true,
        backgroundColor: KConstColors.primaryColor,
      ),
      body: Container(
        width: double.infinity,
        height: size.height*1,
        padding: EdgeInsets.only(left: 18,right: 18),
        child: Column(
          children: [
            SizedBox(height: size.height*0.06),
            Container(
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Buy Credit : ",style: TextStyle(fontSize: 20)),
                  Text("120",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: size.height*0.1),
            Container(
              width: double.infinity,
              height: size.height*0.075,
              padding: EdgeInsets.only(left: 14,right: 14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 28,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/PayPal_2023_Logo.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(CupertinoIcons.right_chevron,size: 30,),
                    ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: size.height*0.02),
            Container(
              width: double.infinity,
              height: size.height*0.075,
              padding: EdgeInsets.only(left: 14,right: 14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/visa-card-logo.png"),fit: BoxFit.fill)
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(CupertinoIcons.right_chevron,size: 30,),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: size.height*0.02),
            Container(
              width: double.infinity,
              height: size.height*0.075,
              padding: EdgeInsets.only(left: 14,right: 14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/mastercard-logo.png"),fit: BoxFit.fill)
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(CupertinoIcons.right_chevron,size: 30,),
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
}
