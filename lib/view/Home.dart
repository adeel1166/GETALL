import 'package:chat_byte/view/AI_Doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
          children: [
            SizedBox(height: 35,),
            Positioned.fill(top: 0,child: 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Home",style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black
                ),)
              ],
            )),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("Welcome Back to",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("Chat Byte",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            // SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: InkWell(
                onTap: () {
                Get.to(()=>AIDoctorPage());
                },
                child: Container(
                  width: double.infinity,
                  height: 630,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [Column(
                      children: [
                         SizedBox(height: 15,),
                         Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Image.asset('assets/images/Your Personel AI DOCTOR.png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                        
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Image.asset('assets/images/Your Personel AI DOCTOR (1).png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                        
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/chat.png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("Chat with AI",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/Matching.png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("AI Name Generator",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                        SizedBox(height: 15,),
// 2                        
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/genrate image.png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("AI Image Generator",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/writedocument.png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("AI Document Writer",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
// 3                        
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/Matching (2).png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("AI Image Matching",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/Matching (1).png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("AI Doc Matching",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
// 4                        
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset('assets/images/scan image.png',),
                                        SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("AI Image Scaner",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Flexible(
                                child: InkWell(
                                  child: Container(
                                    height: 200,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black)
                                                            
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 150,child: Image.asset('assets/images/logo.png',fit: BoxFit.fill,)),
                                          ],
                                        ),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Text("About Us",style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 18,
                                           color: Colors.black
                                         ),)
                                        ],
                                        ),
                                        ]
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                    ],
                  ),
                ),
              ),
            )
          ],
          ),
          Positioned(bottom: 0,
          left: 50,
          right: 50,
          child: SizedBox(
            height: 50,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   Container(
                    height: 25,
                    width: 25,
                    // color: Colors.black,
                    child: Image.asset('assets/images/home.png'),
                  
                ),
                Container(
                    height: 25,
                    width: 25,
                    // color: Colors.black,
                    child: Image.asset('assets/images/history.png'),
                  
                ),
                Container(
                    height: 25,
                    width: 25,
                    // color: Colors.black,
                    child: Image.asset('assets/images/profile.png'),
                  
                ),
              ],
            ),
          )
          )
        ],
      ),
    );
  }
}