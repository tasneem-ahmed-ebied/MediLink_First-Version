import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

import '../core/utils.dart';
import '../model/onbourding_page_model.dart';

class OnbourdingPagesController {
  final BuildContext context;
  late StreamController<int> _streamControllerNextPage;
  late Sink<int> sinkNextPage;
  late Stream<int> streamNextPage;
  late OnbourdingPageModel onbourdingPageModel;
  int index = 0;

  OnbourdingPagesController({required this.context}) {
    onbourdingPageModel = Utils.listOnbourdingPages[index];
  }

  void nextPage() {
    if (index < Utils.listOnbourdingPages.length - 1) {
      index++;
      sinkNextPage.add(index);
      onbourdingPageModel = Utils.listOnbourdingPages[index];
    } else {
      Navigator.pushNamed(context, RoutesNames.loginUsers);
    }
  }

  void skipPage() {
    Navigator.pushNamed(context, RoutesNames.loginUsers);
  }

  void initStream() {
    _streamControllerNextPage = StreamController<int>.broadcast();
    sinkNextPage = _streamControllerNextPage.sink;
    streamNextPage = _streamControllerNextPage.stream;
  }

  void disposeStream() {
    _streamControllerNextPage.close();
    sinkNextPage.close();
  }
}
