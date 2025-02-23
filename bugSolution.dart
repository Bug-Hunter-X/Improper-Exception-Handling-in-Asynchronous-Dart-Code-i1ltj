```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Process the data
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle the JSON decoding error
        // For example, you could display an error message to the user or retry the request
      }
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request or JSON decoding
    print('Error: $e');
    // Re-throw the exception to be handled by a higher level
    rethrow;
  }
}
```