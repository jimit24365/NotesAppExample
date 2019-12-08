import 'package:flutter/material.dart';
import 'package:note_keeper/screens/NoteList.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Note Keeper",
    home: NoteList(),
    theme: ThemeData(primarySwatch: Colors.deepPurple),
  ));
  /*print("Main function started");
  printFileResult();
  print("Main methos ends");*/
}

printFileResult() {
  Future<String> fileContent = downloadAFile();
  fileContent.then((result) {
    print("Downloaded File Result->$fileContent");
  });
}

downloadAFile() {
  Future<String> fileContent = Future.delayed(Duration(seconds: 6), () {
    return "Seceret File content";
  });
  return fileContent;
}
