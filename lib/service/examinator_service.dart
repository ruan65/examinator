import 'dart:math';
import 'package:grpc/grpc.dart' as grpc;
import 'package:examinator/core/db_driver.dart';
import 'package:examinator/generated/examinator.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';

class ExaminatorService extends ExaminatorServiceBase {
  @override
  Future<Question> getQuestion(ServiceCall call, Empty request) async {
    final index = Random().nextInt(questionsDb.length);
    return questionsDb[index];
  }
}

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([ExaminatorService()]);
    await server.serve(port: 8888);
    print('Examinator server listening on port: ${server.port}');
  }
}
