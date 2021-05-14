import 'dart:async';

/// {@template}
/// [Class]
/// {@endTemplate}

class Dictionary {
  int id;
  String key;
  String description;

  Dictionary({this.id, this.key, this.description});

  factory Dictionary.toObject(Map<String, dynamic> data) => Dictionary(
    /// This will be used to conver JSON objects that are comming
    /// from querying the database and converting it into [Dictionary] object

    id: data['id'],
    key: data['key'],
    description: data['description'],

    /// Since sqllite doesn't have boolean type for true/false
    /// we will use 0 to denote that it is false
    /// and 1 for true
    done: data['is_done'] == 0 ? false : true,
  );
}