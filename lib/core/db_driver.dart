import 'dart:io';
import 'dart:convert';

// final List<Question> questionsDb = _readDb();

//List<Question>
_readDb() {
  final jsonString = File('data/questions_db.json').readAsStringSync();
  print(jsonString);
}

void main() {
  _readDb();
}
