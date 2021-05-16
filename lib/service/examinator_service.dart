import 'package:examinator/generated/examinator.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';

class ExaminatorService extends ExaminatorServiceBase {
  @override
  Future<Question> getQuestion(ServiceCall call, Empty request) {
    throw UnimplementedError();
  }
}
