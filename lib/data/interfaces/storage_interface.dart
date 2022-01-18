abstract class IStorageInterface {
  /// Writes a [value] object in the cell's memory and the
  /// its location is the record in the [key] that is passed.
  Future<void> write(String key, dynamic value);

  /// Read the files from the phone's memory that are
  /// stored in the key [key];
  T? read<T>(String key, {T Function(Map<String, dynamic>)? construct});

  T? readRaw<T>(String key);

  void remove(String key);

  /// Starts the cell phone Storage and pulls the stored files
  /// in the keys to RAM memory. In this way, the write function
  /// does not need to be asynchronous as the data is loaded before
  /// even from the application start
  Future<IStorageInterface> init();
}
