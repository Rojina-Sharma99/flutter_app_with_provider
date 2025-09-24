# Flutter App with provider

A simple Flutter application that fetches posts from an API (JSONPlaceholder) using http and displays them in a clean UI.
It uses Provider for state management, includes unit tests and widget tests, and follows a clean project structure.


##  Features

- Fetch posts from a REST API (JSONPlaceholder).
- Display post titles in a clean list view.
- View post details on a separate screen
- Retry button when API fails
- Handles loading with loading indicator making responsive UI, handle error, and success states.
- Clean architecture (models, providers, screens separated)
- Material 3 design with simple custom theme.
- Unit tests for data fetching logic
- Widget tests for UI validation


 

##  Project Structure (Clean Architecture)

lib/
├── models/                # Data models
│   └── posts.dart
│
├── providers/             # State management and API integration
│   └── posts_provider.dart
│
├── screens/               # UI screens
│   ├── home_page.dart
│   └── post_details_page.dart
│
└── main.dart              # App entry point

test/
├── posts_provider_test.dart   # Unit tests for provider
└── home_page_test.dart        # Widget tests for UI



This is a simplified clean structure:
- **Models** -> represent API data (`Posts`).
- **Providers** -> fetch data + manage loading/error states and success.
- **Screens** -> Flutter UI (Home page  & Post_details page).
- **Tests** -> unit test and widget test


##  Tech Stack


- **Flutter** (3.x) 
- **Networking Library**: [`http`](https://pub.dev/packages/http) 
- **State Management**: [`provider`](https://pub.dev/packages/provider)
- **Other Packages**: [`Flutterspinkit](https://pub.dev/packages/flutter_spinkit)

Flutter (UI framework)

Provider (state management)

http (API calls)

flutter_spinkit (loading indicators)

flutter_test (unit & widget testing)



##  How to Run the App

1. Clone the repository:
     ```bash
     git clone https://github.com/Rojina-Sharma99/flutter_app_with_provider.git
  
     cd flutter_app_with_provider


2.Install dependencies:

    flutter pub get


    
3. Run the app:

    flutter run



## Testing

This project includes both unit and widget tests.

Run all tests:

  flutter test
  (if you want to run specific then: flutter test/post_provider_test.dart   or flutter test/widget_test.dart  )

Included Tests

1. Unit Test: Tests the PostsProvider / service for fetching posts .

2. Widget Test: Ensures the HomePage shows Appbar exist and show the title.


## Notes

Data is fetched from JSONPlaceholder
After sucessfull run Post will be display on the screen in List view.
If API fails, an error message is displayed 
Retry button will be on bottom right corner to retry.





This is done by Rojina Shrama

     
