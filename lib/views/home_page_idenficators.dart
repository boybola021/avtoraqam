


import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class HomePageProvideItem {
  static TextEditingController controller = TextEditingController();
  static int index = 1;
  static int index2 = 1;
  static String selectedNumber = "30";
  static var maskFormatterFiz = MaskTextInputFormatter(
      mask: 'A ### AA',
      filter: { "#": RegExp(r'[0-9]'),"A": RegExp(r'[a-zA-Z]')},
      type: MaskAutoCompletionType.lazy
  );
  static var maskFormatterYur = MaskTextInputFormatter(
      mask: '### AAA',
      filter: { "#": RegExp(r'[0-9]'),"A": RegExp(r'[a-zA-Z]')},
      type: MaskAutoCompletionType.lazy
  );

}
