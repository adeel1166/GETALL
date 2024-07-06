import 'package:chat_byte/view/AI_Doctor.dart';
import 'package:chat_byte/view/AboutUs.dart';
import 'package:chat_byte/view/Chat_with_ai.dart';
import 'package:chat_byte/view/Name_Genrator.dart';
import 'package:chat_byte/view/Save_Earth.dart';
import 'package:chat_byte/view/history_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final List<String> _commands = [];

  final List<String> _responses = [];

  void _addHistory(String command, String response) {
    setState(() {
      _commands.insert(0, command);
      _responses.insert(0, response);
    });
  }
  void _clearHistory() {
    setState(() {
      _commands.clear();
      _responses.clear();
    });
  }


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
                                 onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AIDoctorPage(addHistory: _addHistory),
                  ),
                );
              },
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
                                onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => SaveEarthPage(addHistory: _addHistory),
                                    ),
                                     );
                                    },
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
                                onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => AiChat(addHistory: _addHistory),
                                    ),
                                     );
                                    },
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
                                  onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => AiChat(addHistory: _addHistory),
                                    ),
                                     );
                                    },
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
                                        Text("AI Code Writer",style: TextStyle(
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
                                 onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => AiChat(addHistory: _addHistory),
                                    ),
                                     );
                                    },
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
                            SizedBox(width: 8,),
                            Flexible(
                              child: InkWell(
                                 onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => AiChat(addHistory: _addHistory),
                                    ),
                                     );
                                    },
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
                                onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => NameGenrator(addHistory: _addHistory),
                                    ),
                                     );
                                    },
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




                            SizedBox(width: 8,),
                            Flexible(
                              child: InkWell(
                                onTap: () {
                                  Get.to(()=>AboutUsPage());
                                },
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
                      ),
              // 4                        
                      
                    ],
                  )
                  ],
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
                    child: Image.asset('assets/images/home.png'),
                  
                ),
                InkWell(
                  onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(
                      initialCommands: _commands,
                      initialResponses: _responses,
                      clearHistory: _clearHistory,
                    ),
                  ),
                );
              },
                  child: Container(
                      height: 25,
                      width: 25,
                      // color: Colors.black,
                      child: Image.asset('assets/images/history.png'),
                    
                  ),
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