// @dart=2.9
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

mixin Mensagem {
  void showMensagem(String msg, context, {int duration, int gravity}) {
    Toast.show(msg, context,
        duration: duration ?? Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
        backgroundColor: Colors.orangeAccent);
  }
}
