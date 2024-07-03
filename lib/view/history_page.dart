import 'package:chat_byte/view/Home.dart';
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
      appBar: AppBar(
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
            ),
            // Spacer(),
            SizedBox(
            height: 50,
            width: 300,
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
                      child: Image.asset('assets/images/home.png'),
                     ),
                   ),
                InkWell(
                  
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
          ],
        ),
      ),
    );
  }
}
