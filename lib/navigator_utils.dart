import 'package:flutter/material.dart';

// EMPUJAR
Future pushToPage(BuildContext context, Widget widget) async {
  await Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));
}

// PUSH REPLACEMENT > EMPUJAR Y REEMPLAZAR
Future pushAndReplaceToPage(BuildContext context, Widget widget) async {
  await Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => widget));
}

// POP ALL AND PUSH > ELIMINAR Y EMPUJAR
Future popAndPush(BuildContext context, Widget widget) async {
  await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (BuildContext context) => widget),
      ModalRoute.withName('/'));
}

Future pushToPageNamed(BuildContext context, String name) async {
  await Navigator.of(context).pushNamed(name);
}
