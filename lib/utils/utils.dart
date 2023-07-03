import 'package:flutter/material.dart';

class Texts {
  static const  titleText = const TextStyle(
    fontSize: 20,
    color: Colors.black87,fontWeight: FontWeight.w400,

  );
}

String extractWords(String inputString) {
  // Define a regular expression pattern to match the words
  String extractedString = extractWords(inputString);
  RegExp pattern = RegExp(r'\bLEST FORGET\b');

  // Use the firstMatch method to find the pattern in the inputString
  Match? match = pattern.firstMatch(inputString);

  // Check if a match is found and return the extracted words
  if (match != null) {
    return match.group(0)!;
  } else {
    return extractedString;
  }
}


String myrekod_url = "https://gateway.jollyground-bac91137.northeurope.azurecontainerapps.io";
String myrekod_file_url = "$myrekod_url/file/download/public";
String myrekod_posts_url = "$myrekod_url/resource/";
String myrekod_comments_url = "$myrekod_url/resource/comment";