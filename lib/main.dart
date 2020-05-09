import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'global.dart';

void main() => Global.init().then((e) {
      runApp(MyApp());
    });
