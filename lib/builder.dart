library exported_elements.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/generator.dart';

Builder exportedElementsLibraryBuilder(BuilderOptions options) =>
    LibraryBuilder(
      ExportedElementsGenerator(options),
      formatOutput: (txt) => txt.substring(txt.indexOf('[')),
      generatedExtension: '.export.json',
      header: '',
    );
