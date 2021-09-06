# Sprint-01 Report

## Team 15W
* Davon Branch - Project Manager
* Bryant Mcgee - Developer
* Olu Ogunsanya - Jr Developer
* Raymond Ezekiel - IT Operations & UI/UX Developer

## UI/UX Report
* For our user interface we decided to utilize this particular design to resemble the simplistic and minimalistic design of this generation. We have noticed a rather rapid attraction in the use of dark mode and decided to hop on the bandwagon. This is our suubtle take on it for our application.  It has pleasing colors that are not bright and distracting to the user from the actual content and experience. We want our users to have the best experience while operating this application. Consistency is important there we we utilized mjaority of the application's theme colors and logos throughout.

* Simplicity is also a major factor, hence why we kept the application simple by providing our users with three main features; the features include authenticated login for students, a voice assistant to help you with your class problems, and a location based attendance check in that helps the teacher and student. Now, the teacher will not have to worry about losing class time anymore or losing that attendance sheet.

* Our voice AI that receives input via word-of-mouth and gives feedback by matching key words spoken into the app to keywords mathcing the input in the database. Once there is a match, the application is able to read out the needed information to our user and supply them with a visual of the said information. In the report we provide an example of this interaction and how it would work. The screens display the necessary steps needed to complete the simple steps.

[Screens](https://xd.adobe.com/view/600d7f1a-38c0-4e13-69c3-1155426c4d1c-163c/?fullscreen&hints=off)
 

## Developer Report
* Potential Mobile SDKs
  Flutter
  -Dart programming language
  -cross platform capabilities between iOS and Android
  -Hot Refreshing, so changes are shown in relatively real time
  -https://insights.daffodilsw.com/blog/10-amazing-apps-built-using-flutter-framework
  -flutter has the ability to be make a range of apps, from ecommerce to finance to utility apps. Alibaba recently made waves when they became one of the first companies to base their ecommerce app on flutter.

  * Our team decided on flutter because of the way it can be coded for both iOS and Android exclusively which is crucial because not everyone has the same operating system. The only thing that raises an issue is learning the Dart programming language which is exclusive to flutter.

* Google geolocation API
  cost is based on use, not set price
  easiest API to integrate
  Best rated map layout

* Open Geocoding API  
  python 
* Mozilla Speech-to-text API (might only be web based)
  Free to use, opensource

* Microsoft azure speech-to-text API
  similar cost structure to Google

* Kaldi (open source speech-to-text API)
    c++, python

## IT Infrastructure Report
* We chose to code for the Android and iOS operating systems, while using the Flutter platform. These are the top systems users are interacting with on a daily basis. For the data storage, we will be working with MongoDB. They have a clean intergration that allows users to search by keywords using the '$regex' for matches through the library. 
[MongoDB](https://docs.mongodb.com/manual/tutorial/model-data-for-keyword-search/)

## Junior Developer and Security Report
* We assumed that there should be user authentication to ensure that students are entering their correct information. A user will not be able to login if their credentials do not match the database. We can never be too safe when it comes to secuirity so we are also looking to make sure only students can register.

* Their data will be encrypted so it wil not be visible to hackers and only them will know their login.
* Students may try to share the attendance code with friends, so it will only release and be given to students who have been recognized with their location. (Random number generation)
* We also wanted to use the location tracker as a second hand backup. Students would not be able to proceed with the class attendance if they are at home. 

## User/Admin Story
### User Story
![Begin](/diagrams/IMG_5105.JPG)
A student at IIT opens the app and they are exposed to this beautiful loading screen.
![LogIn](/diagrams/IMG_5106.JPG)
A student will be prompted to enter their hawk name, email, and password. Once all fields are completed, the user will press continue.
![Welcome](/diagrams/IMG_5108.JPG)
Student is greeted with a welcome screen with two main buttons. Left: student voice assistant Right: student attendance check in.
![Class](/diagrams/IMG_5109.JPG)
Student has chosen the attendance check in button. They have the option of choosing a class to mark their attendance for the day.
![Tap](/diagrams/IMG_5110.JPG)
Once student chooses a class to check in, they will be taken to this screen to start the process.
![Location](/diagrams/IMG_5111.JPG)
The application will then check the student's location to make sure they are in the classroom.
![Accept](/diagrams/IMG_5112.JPG)
If the student's location is accepted, they will arrive at this screen and recieve a code to be able to check in properly.
![Success](/diagrams/IMG_5113.JPG)
The students location and code was accepted and has been marked present for the class lecture.
![Home](/diagrams/IMG_5108.JPG)
The student is back at the main screen where they can now select the left button (student AI assistant)
![AI](/diagrams/IMG_5114.JPG)
This is where the student will press the voice button on the screen and ask the application specific questions. For example: "what time is my ITMT-430 class?" or "What day is assignment one due for ITM 301?"
### Admin Story
1. The Admin will be able to log into a special account
2. They will send out codes for students to check in
3. They will be able to add, edit, remove students
4. They can add, edit, remove syllabi data stored in the database

## Atomic Goals for Sprint-02
1. Deepen our research on the databases, API's, packages, and resources needed to implement the necessary features
2. Master the Dart programming language used by Flutter
3. Work on user authentication and error handling
4. Solidify the process the user will go through while operating the application to begin the coding process
5. Continue working on the database setup
6. Strengthen the admin segment of our application
7. Find more efficient ways to increase communication and collaboration between team members.















https://xd.adobe.com/view/600d7f1a-38c0-4e13-69c3-1155426c4d1c-163c/?fullscreen&hints=off
