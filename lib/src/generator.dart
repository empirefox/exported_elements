import 'dart:convert';

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class ExportedElementsGenerator extends Generator {
  final BuilderOptions options;

  ExportedElementsGenerator(this.options);

  @override
  String generate(LibraryReader library, BuildStep buildStep) {
    final names = library.element.exportNamespace.definedNames.keys.toList();
    names.sort();
    return JsonEncoder.withIndent('\t').convert(names);
  }
}
