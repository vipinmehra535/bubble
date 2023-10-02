import 'dart:convert';

import 'package:bubble/secerts.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  Future<String> isArtPromptAPI(String prompt) async {
    try {
      final respone = await http.post(
          Uri.parse('https://api.openai.com/v1/chat/completions'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $openAiAPIKey',
          },
          body: jsonEncode({
            "model": "gpt-3.5-turbo",
            "messages": [
            
              {
                "role": "user",
                "content": "Hello!",
              }
            ]
          }));
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> chatGPTAPI(String prompt) async {
    return 'CHATGPT';
  }

  Future<String> dallEAPI(String prompt) async {
    return 'DALL-E';
  }
}
