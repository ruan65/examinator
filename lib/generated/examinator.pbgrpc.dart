///
//  Generated code. Do not modify.
//  source: examinator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'examinator.pb.dart' as $0;
export 'examinator.pb.dart';

class ExaminatorClient extends $grpc.Client {
  static final _$getQuestion = $grpc.ClientMethod<$0.Empty, $0.Question>(
      '/Examinator/getQuestion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Question.fromBuffer(value));

  ExaminatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Question> getQuestion($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQuestion, request, options: options);
  }
}

abstract class ExaminatorServiceBase extends $grpc.Service {
  $core.String get $name => 'Examinator';

  ExaminatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Question>(
        'getQuestion',
        getQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Question value) => value.writeToBuffer()));
  }

  $async.Future<$0.Question> getQuestion_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getQuestion(call, await request);
  }

  $async.Future<$0.Question> getQuestion(
      $grpc.ServiceCall call, $0.Empty request);
}
