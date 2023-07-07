// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.db.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class HomeDb extends _HomeDb with RealmEntity, RealmObjectBase, RealmObject {
  HomeDb(
    String id,
    String note,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'note', note);
  }

  HomeDb._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get note => RealmObjectBase.get<String>(this, 'note') as String;
  @override
  set note(String value) => RealmObjectBase.set(this, 'note', value);

  @override
  Stream<RealmObjectChanges<HomeDb>> get changes =>
      RealmObjectBase.getChanges<HomeDb>(this);

  @override
  HomeDb freeze() => RealmObjectBase.freezeObject<HomeDb>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(HomeDb._);
    return const SchemaObject(ObjectType.realmObject, HomeDb, 'HomeDb', [
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('note', RealmPropertyType.string),
    ]);
  }
}
