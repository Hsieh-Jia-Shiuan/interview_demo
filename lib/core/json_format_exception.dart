class JsonFormatException implements Exception {
  JsonFormatException({required this.description, required this.data});
  final String description;
  final Map<String, dynamic> data;

  factory JsonFormatException.whenFromJson(Object error, Map<String, dynamic> data) {
    return JsonFormatException(description: 'whenFromJson: $error', data: data);
  }

  @override
  String toString() {
    return '$runtimeType: $description\n'
        'Data:\n\n$data\n';
  }
}
