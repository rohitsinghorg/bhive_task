import 'dart:convert' as convert;
import 'dart:developer';
import 'package:bhive_task/data/interfaces/storage_interface.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService implements IStorageInterface {
  late GetStorage _box;

  @override
  Future<StorageService> init() async {
    _box = GetStorage();
    // function to reset the storage: await _box.write(taskKey, []);

    // Write here all the provider keys that will use this service
    // await _box.writeIfNull(appName, []);
    return this;
  }

  // read current key returns whatever is in it
  @override
  T? read<T>(String key, {T Function(Map<String, dynamic>)? construct}) {
    String? value = _box.read(key);

    if (value == null) return null;

    if (construct == null) return convert.jsonDecode(value);
    Map<String, dynamic> json = convert.jsonDecode(value);
    return construct(json);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    return await _box.write(key, convert.jsonEncode(value));
  }

  @override
  T? readRaw<T>(String key) {
    return _box.read(key);
  }

  @override
  void remove(String key) {
    _box.remove(key);
  }
}
