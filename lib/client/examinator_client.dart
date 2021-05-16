import 'package:examinator/generated/examinator.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class Client {
  ExaminatorClient stub;

  Future<void> main(List<String> args) async {
    final channel = ClientChannel(
      '127.0.0.1',
      port: 8888,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = ExaminatorClient(channel,
        options: CallOptions(timeout: Duration(seconds: 10)));

    try {
      await getQuestion();
    } catch (err) {
      print(err);
    }
    await channel.shutdown();
  }

  Future<void> getQuestion() async {
    final question = await stub.getQuestion(Empty());

    print(question);
  }
}
