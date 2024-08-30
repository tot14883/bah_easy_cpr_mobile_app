import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseConsumerState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T> with RestorationMixin<T>, WidgetsBindingObserver {
  CompositeSubscription get compositeSubscription => CompositeSubscription();

  Logger get log => Logger(T.toString());

  @override
  void initState() {
    super.initState();
    log.info('initState');
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    compositeSubscription.dispose();
    log.info('dispose');
    super.dispose();
  }

  @override
  String? get restorationId => T.toString();

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    // TODO(richard): override from child class.
  }
}
