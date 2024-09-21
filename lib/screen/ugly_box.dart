import 'package:flutter/material.dart';

class UglyBox extends StatelessWidget {
  const UglyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            height: 500,
            color: Colors.brown.shade700,
            child: Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color:Color.fromRGBO(32, 48, 49, 5),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5),
          
                  offset: Offset(10, 10),
                ),
                ]
                ),
                child:Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Container(
                        width: 250,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 250,
                        height: 80,
                      color: Colors.black,
                      // child: Image.asset(
                      //       'res/pngegg.png',
                      //       fit: BoxFit.cover), 
                          ),
                    
                      ),
                    Center(
                      child: Container(
                        width: 250,
                        height: 80,
                        color: Colors.green,
                      ),
                    )
                  ],
                )
                ),              
              ),
            ),
          );
  }
}