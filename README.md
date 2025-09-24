# Flutter App with provider

A simple Flutter application that fetches posts from an API (JSONPlaceholder) using http and displays them in a clean UI.
It uses Provider for state management, includes unit tests and widget tests, and follows a clean project structure.


##  Features

- Fetch posts from a REST API (JSONPlaceholder).
- Display post titles in a clean list view.
- Pull to refresh: Refresh the screen instantly with a smooth pull-down gesture.
- A sleek, modern scrollbar for better navigation through long lists and content.
- Hold one selected post to see splash effect before navigating inside post.
- View post details on a separate screen with favourite and share icon.
- Tap the favorite button to mark an item: the icon turns red for quick visual feedback.
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

First step is running [flutter doctor ] that will show  the health of our Flutter environment, which SDKs and tools are installed and whether anything is missing. If everything is good then move to run and test the app.



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
Post list can be refreshed , scrollable and can be add to favourite
If API fails, an error message is displayed 
Retry button wi##ScreenShots






This is done by Rojina Shrama

     
