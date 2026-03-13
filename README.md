# Picsum Gallery Flutter App

A Flutter application that fetches images from the Picsum API and displays them in a grid gallery.

## Features

- Fetch images from REST API
- Display images in a grid layout
- Show image author
- State management using Provider
- Responsive UI

## API Used

https://picsum.photos/v2/list

## Project Structure

```

lib
├ main.dart
├ models
│ └ image_model.dart
├ services
│ └ api_service.dart
├ providers
│ └ image_provider.dart
└ screens
└ home_screen.dart

```

## Packages Used

- http
- provider

## How it Works

1. The app calls the Picsum API.
2. JSON data is converted into a Dart model (`ImageModel`).
3. Provider manages the application state.
4. The UI displays images in a grid layout.
