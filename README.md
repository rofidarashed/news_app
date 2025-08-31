# ⚡ FlashNews: A Modern News App

[![Flutter Version](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

**FlashNews** is a sleek, modern, and minimalist news application built with Flutter. It provides a seamless and engaging experience for users to catch up on the latest headlines and stories from around the globe, sorted by category. The app is designed with a focus on clean UI and smooth performance.

## 📸 Screenshots

<img src="https://github.com/user-attachments/assets/ca94026e-5f47-4cbe-b5b4-d2dafba87320" width="300">
<img src="https://github.com/user-attachments/assets/11250e88-67be-4665-8c48-1f58e34513b1" width="300">
<img src="https://github.com/user-attachments/assets/13f4a7f8-8e24-4e54-b9dc-d8a58bf3f7ce" width="300">
<img src="https://github.com/user-attachments/assets/d5b34b29-864a-473d-95e4-11d600048449" width="300">

## 🎥 Demo Video

<video src="https://github.com/user-attachments/assets/13c613b9-9c00-40a1-88af-d14016893438" width="300" autoplay loop muted></video>

## ✨ Features

FlashNews comes packed with features designed for a great news-reading experience:

*   **Top Headlines:** Instantly view the most important breaking news from around the world on the home screen.
*   **Categorized News:** Effortlessly browse articles from a wide range of categories like Business, Technology, Sports, Health, and more.
*   **Dynamic Content:** The news feed is always up-to-date, fetching the latest articles from a live news API.
*   **Performant Scrolling:** Built using Flutter's `CustomScrollView` and `Slivers` to ensure a buttery-smooth scrolling experience, even with long lists of news articles.
*   **Clean & Minimalist UI:** A user-friendly interface that prioritizes content and readability, making it easy to focus on the news that matters.
*   **Responsive Design:** A consistent and beautiful experience across a wide range of devices and screen sizes.

## 🛠️ Technology Stack & Architecture

This project leverages a modern stack to deliver a high-quality mobile application.

*   **Framework:** Flutter
*   **Language:** Dart
*   **Architecture:** The app follows a simple, feature-first widget structure. The UI is decoupled into logical components (`pages` and `widgets`) for better organization and reusability.
*   **API Integration:** Fetches data from a public news API (e.g., NewsAPI.org) using an HTTP client to handle network requests.
*   **State Management:** Utilizes `StatefulWidget` and `setState` for managing local widget state, keeping the architecture simple and easy to understand for this scale.
*   **Core Flutter Widgets:**
    *   `CustomScrollView`, `SliverAppBar`, and `SliverList` for creating high-performance, custom scrolling effects.
    *   `FutureBuilder` for asynchronously fetching and displaying news data.

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

*   You must have the Flutter SDK installed on your machine. For installation instructions, see the official Flutter documentation.
*   An API Key from a news provider like NewsAPI.org.

### Installation & Setup

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/your-username/flashnews_app.git
    ```

2.  **Navigate to the project directory:**
    ```sh
    cd flashnews_app
    ```

3.  **Configure your API Key:**
    *This project requires an API key to fetch news data. You will need to create a file or class to store your key and ensure it is not checked into version control.*

    For example, you could create a file `lib/api_key.dart`:
    ```dart
    // lib/api_key.dart
    const String apiKey = 'YOUR_API_KEY_HERE';
    ```
    Then, add `lib/api_key.dart` to your `.gitignore` file.

4.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

5.  **Run the app:**
    ```sh
    flutter run
    ```

## 📂 Project Structure

The project maintains a clean and scalable structure, making it easy to navigate and maintain.

```
lib/
├── pages/
│   └── home_page.dart        # The main screen of the app.
├── widgets/
│   ├── category_list.dart    # Widget for the horizontal list of categories.
│   └── news_list_builder.dart# Widget that fetches and displays news articles.
└── main.dart                 # The entry point of the application.
```
