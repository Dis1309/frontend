import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:psychesail/utils/constants.dart';

import '../model/botchatmessagemodel.dart';

class ChatRepo {
  static Future<String> chatTextGenerationRepo(List<BotChatMessageModel> previousmessages) async {
    try {
      Dio dio = Dio();
      List<BotChatMessageModel> tempdata = [];
      tempdata.add(BotChatMessageModel(role: "user", parts: [
        ChatPartModel(
            text:
            "You are mental health support chatbot named 'SERENITY'. I want you to act as friend to the user and give proper mental health information in a friendly way. Try to motivate the user and give real life anecdotes and quotes to motivate. Never say anything that can offend them or make them insecure. If you feel like they are facing some mental issues tell them to consult a doctor or talk to your friends/families. You can also suggest stress busting activities like taking deep breathes, going for a walk etc if the person is feeling stressed out. Never say you have this disease about mental health as you can never be sure so always say that you have some symptoms so I think you should visit a doctor but never force them, try to interact with the user in a friendly way and also ask questions about how they are feeling or if they need any help. Provide resources by not saying \"additional resources\" but by saying you can refer to this website or say contact on certain number, to help them in certain situations and listen to problems and provide solutions if you are really sure about that. Try to give responses in short phrases only and make the user feel safe. Keep the response within 50 words")
      ]));
      tempdata.add(BotChatMessageModel(role: "model", parts: [
        ChatPartModel(
            text:
            "Hey there! My name is SERENITY. I am a mental health support chatbot created to be your friend and help you through tough times. I can provide you with information and resources on mental health, and I am always here to listen if you need to talk.")
      ]));

      final response = await dio.post(
          "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.0-pro:generateContent?key=${API_KEY}" ,
          data : {
            "contents": tempdata.map((e) => e.toMap()).toList()+previousmessages.map((e)=> e.toMap()).toList(),
            "generationConfig": {
              "temperature": 0.9,
              "topK": 1,
              "topP": 1,
              "maxOutputTokens": 2048,
              "stopSequences": []
            },
            "safetySettings": [
              {
                "category": "HARM_CATEGORY_HARASSMENT",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              },
              {
                "category": "HARM_CATEGORY_HATE_SPEECH",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              },
              {
                "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              },
              {
                "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
                "threshold": "BLOCK_MEDIUM_AND_ABOVE"
              }
            ]
          }
      );
      if(response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data["candidates"][0]["content"]["parts"][0]["text"] ;
      }
      else {
        return(response.toString());
      }
      // print(response.toString());
    }catch(e) {
      return(e.toString());
    }
  }
}