import 'dart:async';
import 'package:ambar/models/dictionary_model.dart';
import 'package:ambar/database/database.dart';

/// {@template}
/// [Class]
/// {@endTemplate}

class DictionaryDao {
  final databaseProvider = DatabaseProvider().database;

  // Future<List<Dictionary>> get() {
  //   List<Map<String, dynamic>> result;
  //   result = databaseProvider.query(dictionaryTABLE);
  //   List<Dictionary> dictionaries = result.isNotEmpty
  //       ? result.map((item) => Dictionary.toObject(item)).toList()
  //       : [];
  //   return dictionaries;
  // }
}