// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/profile/profilepage.dart';

class CompleteProfileModelPage extends ChangeNotifier {
  int _progressStep = 1;
  int get progressStep => _progressStep;
  incresestep() {
    if (progressStep < 7) {
      _progressStep++;
      notifyListeners();
    } else {
      Get.to(() => ProfilePage());
    }
  }

  resetstaps() {
    _progressStep = 1;
    notifyListeners();
  }

  decresestep() {
    if (progressStep > 1) {
      print('vinat $progressStep');
      _progressStep--;
      notifyListeners();
    } else if (progressStep == 1) {
      Get.back();
    }
    print('vinat $progressStep');
  }

  String? _selectgender;
  String? get selectgender => _selectgender;
  toggleselectgender(value) {
    print('vinay $value');
  }
}
