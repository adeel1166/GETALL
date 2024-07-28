import 'package:getall/view/AI_Doctor.dart';
import 'package:getall/view/AboutUs.dart';
import 'package:getall/view/Chat_with_ai.dart';
import 'package:getall/view/Name_Genrator.dart';
import 'package:getall/view/Save_Earth.dart';
import 'package:getall/view/ai_mathematician.dart';
import 'package:getall/view/code.dart';
import 'package:getall/view/history_page.dart';
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
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var isLargeScreen = screenWidth > 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: isLargeScreen ? 50 : 35),
                      Center(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: isLargeScreen ? 24 : 20,
                            color: Colors.black,
                            fontFamily: 'GetVoIPGrotesque'
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              "Welcome Back to",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: isLargeScreen ? 22 : 18,
                                color: Colors.black,
                                fontFamily: 'GetVoIPGrotesque'
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              "GETALL",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: isLargeScreen ? 28 : 24,
                                color: Colors.black,
                                fontFamily: 'GetVoIPGrotesque'
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: double.infinity,
                          height: screenHeight - 200,
                          color: Colors.transparent,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  _buildRow(
                                    context,
                                    screenWidth,
                                    "Your Personel Ai Doctor",
                                    'assets/images/doctor.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            AIDoctorPage(addHistory: _addHistory),
                                      ),
                                    ),
                                    "Save Earth with Ai",
                                    'assets/images/climate-change.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SaveEarthPage(addHistory: _addHistory),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  _buildRow(
                                    context,
                                    screenWidth,
                                    "Coding with Ai",
                                    'assets/images/coding.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CodeWrite(addHistory: _addHistory),
                                      ),
                                    ),
                                    "Solve Your Math With Ai",
                                    'assets/images/math.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            AiMathematician(addHistory: _addHistory),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  _buildRow(
                                    context,
                                    screenWidth,
                                    "Ai Name Generator",
                                    'assets/images/signature.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NameGenrator(addHistory: _addHistory),
                                      ),
                                    ),
                                    "Ai Documents Writter",
                                    'assets/images/ai-file.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            AiChat(addHistory: _addHistory),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  _buildRow(
                                    context,
                                    screenWidth,
                                    "Chat with Ai",
                                    'assets/images/chatico.png',
                                    Colors.transparent,
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            AiChat(addHistory: _addHistory),
                                      ),
                                    ),
                                    
                                    "GETALL",
                                    'assets/images/Untitled_design__1_-removebg-preview.png',
                                   Colors.transparent,
                                    () => Get.to(() => AboutUsPage()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 70,
            right: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home_outlined,size: 35,),
                SizedBox(width: 40),
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
                  child: Icon(Icons.history_outlined,size: 35,),
                ),
                SizedBox(width: 40),
                Icon(Icons.person_outlined,size: 35,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    BuildContext context,
    double screenWidth,
    String text1,
    String imagePath1,
    Color color1,
    Function onTap1,
    String text2,
    String imagePath2,
    Color color2,
    Function onTap2,
  ) {
    var isLargeScreen = screenWidth > 600;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCard(context, text1, imagePath1, color1, onTap1, isLargeScreen),
          SizedBox(width: 8),
          _buildCard(context, text2, imagePath2, color2, onTap2, isLargeScreen),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context,
    String text,
    String imagePath,
    Color color,
    Function onTap,
    bool isLargeScreen,
  ) {
    return Flexible(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          height: isLargeScreen ? 250 : 200,
          width: isLargeScreen ? 300 : 250,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(245, 245, 245, 1),
            // border: Border.all(width: 0, color: Color.fromRGBO(64, 89, 82, 1)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  height: isLargeScreen ? 100 : 80,
                  width: isLargeScreen ? 100 : 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromRGBO(230, 230, 230, 1),
                  ),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: isLargeScreen ? 18 : 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'GetVoIPGrotesque',
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
