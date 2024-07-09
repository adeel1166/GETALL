import 'package:chat_byte/view/AI_Doctor.dart';
import 'package:chat_byte/view/AboutUs.dart';
import 'package:chat_byte/view/Chat_with_ai.dart';
import 'package:chat_byte/view/Name_Genrator.dart';
import 'package:chat_byte/view/Save_Earth.dart';
import 'package:chat_byte/view/code.dart';
import 'package:chat_byte/view/history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(31, 247, 121, 121),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/doctor.png',)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Your Personel Ai Doctor",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
//save earth                                    
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 115, 241, 147),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/climate-change.png',)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Save Earth with Ai",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
                            
                            SizedBox(width: 8,),
                            Flexible(
                              child: InkWell(
                                  onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => CodeWrite(addHistory: _addHistory),
                                    ),
                                     );
                                    },
//ai code                                    
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(31, 247, 121, 121),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/coding.png',)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Coding with Ai",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
//math                                    
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 115, 241, 147),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/math.png',)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Solve Your Math With Ai",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
                                  builder: (context) => NameGenrator(addHistory: _addHistory),
                                    ),
                                     );
                                    },
//name gen                                    
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(31, 247, 121, 121),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/signature.png',fit: BoxFit.cover,)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Ai Name Generator",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
//ai document                                    
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 115, 241, 147),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/ai-file.png',)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Ai Documents Writter",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
                                  builder: (context) => AiChat(addHistory: _addHistory),
                                    ),
                                     );
                                    },
//chat ai                                    
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(31, 247, 121, 121),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/chatico.png',)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("Chat with Ai",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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
//about us                                
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 115, 241, 147),
                                    border: Border.all(width: 1,color: Colors.white)
                                                          
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: SizedBox(height: 80,width: 80,child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,)),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text("About Us",style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,),
                                        ),
                                      )
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