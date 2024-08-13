import 'package:get_storage/get_storage.dart';

class ULocalStorage{
  static final ULocalStorage _instance = ULocalStorage._internal();

  factory ULocalStorage(){
    return _instance;
  }
  ULocalStorage._internal();

  final _storage = GetStorage();

  /// Generic Method to Save Data
  Future<void> saveData<T>(String key, T value)async{
    await _storage.write(key, value);
  }
  /// Generic Method to Read Data
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }
  /// Generic Method to Remove Data
  Future<void> removeData(String key)async{
    await _storage.remove(key);
  }
  /// Clear all in storage
  Future<void> clearAll()async{
    await _storage.erase();
  }
}