import 'package:getall/view/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryPage extends StatefulWidget {
  final List<String> initialCommands;
  final List<String> initialResponses;
  final VoidCallback clearHistory;

  HistoryPage({
    required this.initialCommands,
    required this.initialResponses,
    required this.clearHistory,
  });

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late List<String> _commands;
  late List<String> _responses;

  @override
  void initState() {
    super.initState();
    _commands = List.from(widget.initialCommands);
    _responses = List.from(widget.initialResponses);
  }

  void _clearHistory() {
    widget.clearHistory();
    setState(() {
      _commands.clear();
      _responses.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _commands.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' ${_commands[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            _responses[index],
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: _clearHistory,
              child: Text('Clear History',style: TextStyle(color: Colors.black),),
              style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(color: Colors.white)
    )
  )
                  ),
            ),
            // Spacer(),
            SizedBox(
            height: 50,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                     InkWell(
                      onTap: () {
                        Get.to(()=>HomeScreen());
                      },
                       child: Container(
                        height: 25,
                        width: 25,
                        child: Icon(Icons.home_outlined,size: 35,),
                       ),
                     ),
                     SizedBox(width: 40,),
                  InkWell(
                    
                    child: Container(
                        height: 25,
                        width: 25,
                        // color: Colors.black,
                        child: Icon(Icons.history_outlined,size: 35,),
                      
                    ),
                  ),
                  SizedBox(width: 40,),
                  Container(
                      height: 25,
                      width: 25,
                      // color: Colors.black,
                      child: Icon(Icons.person_outlined,size: 35,),
                    
                  ),
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
