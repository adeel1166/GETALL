import 'package:flutter/material.dart';
import '../ViewModel/generative_ai_service.dart';

class AIDoctorPage extends StatefulWidget {
  final Function(String, String) addHistory;

  AIDoctorPage({required this.addHistory});

  @override
  _AIDoctorPageState createState() => _AIDoctorPageState();
}

class _AIDoctorPageState extends State<AIDoctorPage> with TickerProviderStateMixin {
  final TextEditingController _symptomsController = TextEditingController();
  List<String> _commands = [];
  List<String> _responses = [];
  bool _isLoading = false;
  late GenerativeAiService generativeAiService;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    const apiKey = 'AIzaSyC7W-GxJPnQLsUiUqMjlpMGyioane1Md-8'; 
    generativeAiService = GenerativeAiService(apiKey: apiKey);
  }

  Future<void> _getDiagnosis() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final command = _symptomsController.text;
      final response = await generativeAiService.generateDiagnosis(command);

      setState(() {
        _commands.insert(0, command); 
        _responses.insert(0, ''); 

        _symptomsController.clear(); 
        _isLoading = false;
      });

      _listKey.currentState?.insertItem(0);

      for (String line in response!.split('\n')) {
        await Future.delayed(Duration(milliseconds: 100)); 
        setState(() {
          _responses[0] += line + '\n';
        });
      }

      widget.addHistory(command, response);
    } catch (e) {
      print('Failed to get diagnosis: $e');
      setState(() {
        _commands.insert(0, _symptomsController.text); 
        _responses.insert(0, 'Failed to get diagnosis'); 
        _symptomsController.clear();
        _isLoading = false;
      });

      _listKey.currentState?.insertItem(0);

      widget.addHistory(_symptomsController.text, 'Failed to get diagnosis');
    }
  }

  Widget _buildItem(BuildContext context, int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Column(
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        title: Text('AI Doctor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AnimatedList(
                key: _listKey,
                reverse: true, 
                initialItemCount: _commands.length,
                itemBuilder: (context, index, animation) {
                  return _buildItem(context, index, animation);
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _symptomsController,
                    decoration: InputDecoration(
                      labelText: 'Enter your symptoms',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _getDiagnosis,
                  child: _isLoading ? CircularProgressIndicator() : Icon(Icons.send,color: Colors.black,),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
