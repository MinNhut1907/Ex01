import 'dart:io';

Future<String> readJsonFileToStringJson(String filePath) async {
   var dir = Directory.current.path;
   if (dir.endsWith('/dart_application_1')) {
     dir = dir.replaceAll('/dart_application_1', '');
     dir = dir.replaceAll(r'\', '/');
   }
  return File('$dir/$filePath').readAsStringSync();
}