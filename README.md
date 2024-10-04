# Flashcard App

## Overview
The Flashcard App is a dynamic, user-friendly study tool developed using Flutter. It allows users to create, delete, and manage personalized flashcards, making it easier to study and retain information across various subjects. With offline access powered by Hive for local storage, users can continue learning without internet connectivity.

## Features
- Create Flashcards: Users can easily create flashcards with custom terms, definitions, and optional images.
- Delete Flashcards: Simplified functionality to remove outdated or unwanted flashcards.
- Local Storage: Flashcards are saved locally using Hive, enabling offline access and continuity.
- Card Flipping Feature: Users can flip cards to view both the term (front) and the definition (back), simulating a real flashcard experience.
- Track Progress: Users can navigate through their flashcards, helping to track study progress.

## Design and Functionality

### Core Functionality:

- Home Page: Displays flashcards, allowing users to flip between the term and definition. Users can navigate between flashcards using "Next" and "Previous" buttons.
- Add Page: Allows users to add new flashcards by providing a word, definition, and optional image path.
- Delete Page: Facilitates the deletion of existing flashcards, with a confirmation dialog and a visual representation of each card.
  
### Tech Stack:

- Flutter: The UI and business logic are built using Flutter, making the app cross-platform for Android and iOS.
- Hive: Local NoSQL database for storing user-created flashcards, enabling offline capabilities and fast data retrieval.

## Project Structure

The project consists of several key components:

- HomePage: The main interface that allows users to navigate between flashcards.
- AddPage: A page where users can input and save new flashcards.
- DeletePage: A page where users can select and delete unwanted flashcards.
- Widgets: Reusable UI elements such as FrontWidget, BackWidget, NextButton, and PreButton are used to create the flashcard interface.

## Setup
Run the following commands from your terminal:
1. git clone https://github.com/pkly1219/FlashCardApp.git to clone this repository
2. flutter pub get in the project root directory to install all the required dependencies

      
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
