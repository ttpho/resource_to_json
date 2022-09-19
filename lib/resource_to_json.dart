import 'dart:convert';

import 'package:xml/xml.dart';

Map<String, String> _fromAndroidXmlString(final String xmlString) {
  final document = XmlDocument.parse(xmlString);
  final stringElemnets = document.findAllElements('string');
  final Map<String, String> map = {};
  for (final element in stringElemnets) {
    final attributes = element.attributes;
    final textFirstChild = element.firstChild?.text ?? "";
    if (attributes.isNotEmpty && textFirstChild.isNotEmpty) {
      map[attributes.first.value] = textFirstChild;
    }
  }

  return map;
}

Map<String, String> _fromLocalizableString(final String localizableString) {
  final Map<String, String> map = {};
  localizableString
      .split("\n")
      .where((element) => element.contains("=") && element.endsWith(";"))
      .forEach((line) {
    final list = line.split("=").map((e) => e.trim()).toList();
    if (list.length == 2) {
      final String leftString = list.first;
      final String key = leftString.substring(1, leftString.length - 1);
      final String rightString = list.last;
      final String value = rightString.substring(1, rightString.length - 2);
      map[key] = value;
    }
  });

  return map;
}

Map<String, String> fromAndroidXmlString(final String xmlString) {
  try {
    return _fromAndroidXmlString(xmlString);
  } catch (e) {
    rethrow;
  }
}

Map<String, String> fromLocalizableString(final String xmlString) {
  try {
    return _fromLocalizableString(xmlString);
  } catch (e) {
    rethrow;
  }
}

String toJsonStringWithFormat(final Map<String, String> map) =>
    JsonEncoder.withIndent('  ').convert(map);
