# Flutter App with provider

This is a Flutter project built as part of the **Junior Flutter Developer Technical Assessment**.  
The app demonstrates API integration using http, state management with Provider, and basic testing.

---

##  Features

- Fetch posts from a public API (JSONPlaceholder).
- Display post titles in a clean list view.
- Tap a post to see more details (title + body + userID).
- Handles loading with loading indicator making responsive UI, handle error, and success states.
- Clean and beginner-friendly code structure.
- Material 3 design with simple custom theme.

---

##  Project Structure (Clean Architecture)

lib/
├── models/ # Data models
│ └── posts.dart
│
├── providers/ # State management and API Interigation
│ └── posts_provider.dart
│
├── screens/ # UI screens
│ ├── home_page.dart
│ └── posts_details_page.dart
│
└── main.dart # App entry point

This is a simplified clean structure:
- **Models** → represent API data (`Posts`).
- **Providers** → fetch data + manage loading/error states and success.
- **Screens** → Flutter UI (Home & Details).


##  Tech Stack

- **Flutter** (3.x)
- **Networking Library**: [`http`](https://pub.dev/packages/http)
- **State Management**: [`provider`](https://pub.dev/packages/provider)
- **Other Packages**: [`Flutterspinkit](https://pub.dev/packages/flutter_spinkit)

##  How to Run the App

1. Clone the repository:
   ```bash
   git clone https://github.com/
   cd ....


2.Install dependencies:

    flutter pub get


    
3. Run the app:

    flutter run



## Testing

This project includes both unit and widget tests.

Run all tests:

  flutter test

Included Tests

1. Unit Test: Tests the PostsProvider / service for fetching posts.

2. Widget Test: Ensures the HomePage shows posts list after fetching.


## Notes

Data is fetched from JSONPlaceholder
After sucessfull run Post will be display on the screen in List view.
If API fails, an error message is displayed 

This is done by Rojina Shrama

     
