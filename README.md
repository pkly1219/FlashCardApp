# Flashcard App

## Overview
This Flashcard App is a powerful study tool built using Flutter, offering user-friendly features and advanced functionalities powered by Firebase, Gemini API, and text-to-speech/speech-to-text technologies.

## Features
- Create Flashcards: Users can easily create flashcards with custom terms, definitions, and optional images.
- Delete Flashcards: Simplified functionality to remove outdated or unwanted flashcards.
- Gemini Integration: Leverage the power of Gemini API. Provide a term, and Gemini will assist you in generating a comprehensive definition and example sentence.
- Text-to-Speech: Enhance learning by having the flashcards read aloud to you.
- Firebase Storage: Securely store your flashcards in the cloud using Firebase, enabling access across devices and maintaining data integrity.
- Card Flipping Feature: Users can flip cards to view both the term (front) and the definition (back), simulating a real flashcard experience.
- Track Progress: Users can navigate through their flashcards, helping to track study progress.

## Design and Functionality

### Core Functionality:

- Home Page: Displays flashcards, allowing users to flip between the term and definition. Users can navigate between flashcards using "Next" and "Previous" buttons.
- Menu Page: Create and manage topics, organizing your flashcards into different subject areas.
- SubMenu Page: Add subtopics within each topic for further categorization and focused study.
- Add Page: Allows users to add new flashcards by providing a word, definition, and optional image path.
- Delete Page: Facilitates the deletion of existing flashcards, with a confirmation dialog and a visual representation of each card.
  
### Tech Stack:

- Flutter: The UI and business logic are built using Flutter, making the app cross-platform for Android and iOS.
- Firebase: Cloud-based storage for secure data persistence and accessibility across devices.
- Gemini API: Assists in generating comprehensive definitions and examples for your flashcards.
- Text-to-Speech: Transforms on-screen text (terms and definitions) into spoken audio for enhanced learning.
- Speech-to-Text: Enables voice-based interaction for adding topics, subtopics, or card names.

## Project Structure

The project consists of several key components:

- HomePage: The main interface that allows users to navigate between flashcards.
- AddPage: A page where users can input and save new flashcards.
- DeletePage: A page where users can select and delete unwanted flashcards.
- MenuPage: Handles navigation between different pages and displays the topic list.
- Widgets: Reusable UI elements such as FrontWidget, BackWidget, NextButton, and PreButton are used to create the flashcard interface
- Services: Handles interactions with Firebase, text-to-speech, speech-to-text, and Gemini API.

## Setup
Run the following commands from your terminal:
1. git clone https://github.com/pkly1219/FlashCardApp.git to clone this repository
2. flutter pub get in the project root directory to install all the required dependencies
3. Setup for using voice command (speech to text library):
    - This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):
      ```
        dependencies:
          speech_to_text: ^7.0.0
      ```
    - Add the following keys to your Info.plist file, located in <project root>/ios/Runner/Info.plist:
       ```
          NSSpeechRecognitionUsageDescription
          NSMicrophoneUsageDescription
       ```
   - Add the record audio permission to your AndroidManifest.xml file, located in <project root>/android/app/src/main/AndroidManifest.xml.
      ```
          <uses-permission android:name="android.permission.RECORD_AUDIO"/>
          <uses-permission android:name="android.permission.INTERNET"/>
          <uses-permission android:name="android.permission.BLUETOOTH"/>
          <uses-permission android:name="android.permission.BLUETOOTH_ADMIN"/>
          <uses-permission android:name="android.permission.BLUETOOTH_CONNECT"/>
          
      ```
## ScreenShot:

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/f2e8ff0a-7c68-49d1-ae4d-c5a212e48cb1" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/cd3331bd-f1c1-4fca-8ac8-1f5022482d9f" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/6db7c5d1-9326-4424-9021-600460e721b4" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/25fa269a-8f99-49d0-9dc5-1baecfd5fdc9" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/19183048-f755-48b1-8720-5e5c2db28149" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/e7e36712-56ee-45e1-941e-bd14938f6185" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/4ab1a3b2-abd6-4218-b2d5-5ae59838f43a" width ="200" height = "400">

<img src ="https://github.com/pkly1219/FlashCardApp/assets/98497119/6b8eef28-ec69-4881-b337-90d342865649" width ="200" height = "400">

## Demo Clip:
https://www.youtube.com/watch?v=svAVtEBo-bo
