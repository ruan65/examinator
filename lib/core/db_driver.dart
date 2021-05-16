import 'dart:io';
import 'dart:convert';

import 'package:examinator/generated/examinator.pb.dart';

final List<Question> questionsDb = _readDb();

List<Question> _readDb() {
  final jsonString = File('data/questions_db.json').readAsStringSync();
  final List db = jsonDecode(jsonString);

  return db.map((entry) => Question()
    ..id = entry['id']
    ..text = entry['text']);
}

void main() {
  _readDb();
}
