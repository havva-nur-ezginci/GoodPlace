# GoodPlace
The Habit Tracker project is a comprehensive Flutter application designed to help users in effectively tracking their habits and staying motivated. 
Authentication is managed through **Firebase Authentication**, with both email and Google Sign-In options integrated, and user login status is overseen by an **Auth Manager**. Upon their first use, users are introduced to the application through **onboarding** and **tutorial** screens.

**CRUD (Create, Read, Update, Delete)** operations for habits are implemented using **Firestore**. Habit management is dynamically handled across all pages with the **Provider** package. A congratulatory **animation** has been added to celebrate when users complete their habits.

The app integrates the Dio package to fetch random motivational quotes from an **[API](https://github.com/lukePeavey/quotable)**, keeping users inspired.

Additionally, the integration of **GoodPlaceT** provides personalized AI-powered habit motivation and **AI-based** habit support chat, further enhancing user interaction.

**Firebase Notifications** are utilized to send motivational reminders to users, ensuring they remain engaged and stay on track with their habits.

## Quick Navigation
- [GoodPlace](#goodplace)
- [Plugins](#plugins)
- [Usage](#usage)


<details>
    <summary><h2>Plugins</h2></summary>

The Flutter plugins used in this project are as follows:

### Core Packages
- **[cupertino_icons](https://pub.dev/packages/cupertino_icons)**
- **[google_fonts](https://pub.dev/packages/google_fonts)**

### UI Components
- **[gap](https://pub.dev/packages/gap)**
- **[carousel_slider](https://pub.dev/packages/carousel_slider)**
- **[toastification](https://pub.dev/packages/toastification)**
- **[skeletonizer](https://pub.dev/packages/skeletonizer)**
- **[table_calendar](https://pub.dev/packages/table_calendar)**
- **[flutter_slidable](https://pub.dev/packages/flutter_slidable)**

### State Management & Utilities
- **[provider](https://pub.dev/packages/provider)**
- **[shared_preferences](https://pub.dev/packages/shared_preferences)**
- **[intl](https://pub.dev/packages/intl)**
- **[dio](https://pub.dev/packages/dio)**
- **[email_validator](https://pub.dev/packages/email_validator)**

### Firebase Integration
- **[cloud_firestore](https://pub.dev/packages/cloud_firestore)**
- **[firebase_core](https://pub.dev/packages/firebase_core)**.
- **[firebase_auth](https://pub.dev/packages/firebase_auth)**
- **[google_sign_in](https://pub.dev/packages/google_sign_in)**
- **[firebase_messaging](https://pub.dev/packages/firebase_messaging)**

### Animations & Visuals
- **[lottie](https://pub.dev/packages/lottie)**
- **[flutter_animate](https://pub.dev/packages/flutter_animate)**
- **[animated_text_kit](https://pub.dev/packages/animated_text_kit)**

### Debugging
- **[logger](https://pub.dev/packages/logger)**

### Chat & AI Integration
- **[http](https://pub.dev/packages/http)**
- **[flutter_dotenv](https://pub.dev/packages/flutter_dotenv)**
- **[showcaseview](https://pub.dev/packages/showcaseview)**
- **[flutter_chat_bubble](https://pub.dev/packages/flutter_chat_bubble)**

### Other Utilities
- **[flutter_markdown](https://pub.dev/packages/flutter_markdown)**
- **[grock](https://pub.dev/packages/grock)**

</details>

## Usage

In order to run this project, you have to follow the steps below:

1. Clone the project:

   ```bash
   git clone https://github.com/havva-nur-ezginci/GoodPlace.git
   ```

2. Complete Firebase project setup for both **Android** & **iOS** platforms by going to the [Firebase console](https://console.firebase.google.com/).

3. For Android, replace your google-services.json file with an existing file. 

   ```bash
   android -> app -> google-services.json
   ```
4. For running on **iOS**, you have to do some configurations from Xcode. Follow the official [iOS setup guide](https://docs.flutter.dev/get-started/install/macos#deploy-to-ios-devices).

- [Firebase iOS setup guide](https://firebase.google.com/docs/ios/setup)
- [Google Sign-In setup guide for iOS](https://developers.google.com/identity/sign-in/ios/start)

5. Get Flutter packages:

   ```bash
   flutter pub get
   ```

6. Run the app:

   ```bash
   flutter run
   ```
   
