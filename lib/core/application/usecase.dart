import 'dart:async';

import 'package:bah_easy_cpr/core/error/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class UseCase<P, R> {
  // ignore: unused_field
  Ref? _ref;

  set ref(Ref ref) {
    _ref = ref;
  }

  Logger? _logger;
  Logger get logger {
    if (_logger != null) {
      return _logger!;
    }
    _logger = Logger(runtimeType.toString());
    return _logger!;
  }

  @protected
  Future<R> exec(P request);

  Future<Result<R, Failure>> execute(P request) async {
    try {
      final result = await exec(request);
      return Success(result);
    } catch (e) {
      return Error(
        Failure(
          message: e.toString(),
          code: 500,
        ),
      );
    }
  }
}
