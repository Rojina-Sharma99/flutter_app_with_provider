import 'package:assessment_app/providers/posts_provider.dart';
import 'package:flutter_test/flutter_test.dart';

// A unit test to verify that PostsProvider fetches data correctly from the API and post is not empty.
void main() {
  test('PostsProvider should fetches data correctly', () async {
    //Arrange
    final provider = PostsProvider();
    provider.data = []; // start with empty list

    // Make sure we start with an empty state
    expect(provider.data, isEmpty);
    expect(provider.isLoading, true);

    // Act by calling actual api
    await provider.getDataFromApi();

    // Assert
    expect(
      provider.data.isNotEmpty,
      true,
      reason: "Data list shouldnot be empty after fetch",
    ); // this will check data was filled
    expect(
      provider.error,
      '',
      reason: "Error should remain empty on success",
    ); // this will check no error
    expect(
      provider.isLoading,
      false,
      reason: 'Loading should be set to false after fetch completes',
    ); // check loading finished and show the data
  });
}
