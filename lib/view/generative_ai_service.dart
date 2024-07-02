import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:io';

class GenerativeAiService {
  final String apiKey;

  GenerativeAiService({required this.apiKey});

  Future<String?> generateDiagnosis(String symptoms) async {
    final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
    final content = [Content.text(symptoms)];
    final response = await model.generateContent(content);
    return response.text;
  }

  generateImage(String command) {}
}
