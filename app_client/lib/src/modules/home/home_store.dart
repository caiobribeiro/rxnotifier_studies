import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomeStore {
  ValueNotifier<int> counter = RxNotifier<int>(0);

  void incrementCounter() {
    counter.value++;
  }
}
