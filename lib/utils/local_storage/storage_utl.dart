
import 'package:get_storage/get_storage.dart';

class TStorage {
  static final TStorage _instance = TStorage._internal();

  factory TStorage() {
    return _instance;
  }

  TStorage._internal();

  final _storage = GetStorage();

  //Generic Way to save data

  Future<void> saveDat<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Generic way to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //Remove all data in storage
  Future<void> removeAllData() async {
    await _storage.erase();
  }
    
}
