import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
              backgroundColor: Colors.white,
        title: Text('About Us',style: TextStyle(fontFamily:'GetVoIPGrotesque' ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About GETALL',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,fontFamily: 'GetVoIPGrotesque'),
            ),
            SizedBox(height: 16),
            Text(
              'GETALL is your companion app developed by Bytewiz Soft. It integrates cutting-edge technology to bring you closer to artificial intelligence in a user-friendly manner.',
              style: TextStyle(fontSize: 16,fontFamily: 'GetVoIPGrotesque'),
            ),
            SizedBox(height: 16),
            Text(
              'Key Features:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'GetVoIPGrotesque'),
            ),
            SizedBox(height: 8),
            Text(
              '- Approach your personal AI doctor and AI scientist to discuss topics like climate change, global warming, and more.',
              style: TextStyle(fontSize: 16,fontFamily: 'GetVoIPGrotesque'),
            ),
            Text(
              '- Write code and generate documents effortlessly.',
              style: TextStyle(fontSize: 16,fontFamily: 'GetVoIPGrotesque'),
            ),
            Text(
              '- Match documents and generate names with AI assistance.',
              style: TextStyle(fontSize: 16,fontFamily: 'GetVoIPGrotesque'),
            ),
            SizedBox(height: 16),
            Text(
              'Developed by GETALL',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,fontFamily: 'GetVoIPGrotesque'),
            ),
            SizedBox(height: 8),
            Text(
              'Powered by Google Gemini Developer',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,fontFamily: 'GetVoIPGrotesque'),
            ),
          ],
        ),
      ),
    );
  }
}
