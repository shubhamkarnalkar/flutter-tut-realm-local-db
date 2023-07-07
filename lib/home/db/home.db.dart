import 'package:realm/realm.dart';
part 'home.db.g.dart';

@RealmModel()
class _HomeDb {
  late String id;
  late String note;
}
