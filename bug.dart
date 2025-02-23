```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error: $e');
    // Re-throw the exception to be handled by a higher level
    rethrow;
  }
}
```