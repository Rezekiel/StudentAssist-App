# Sprint-03 Written Report

## Team 15W
* Davon Branch - Jr Developer & Infrastructure
* Bryant Mcgee - UI/UX
* Olu Ogunsanya - Project Manager
* Raymond Ezekiel - Developer

## UI/UX Artifacts
* Develop a separate "user story" for the professors
    * [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/0aed742db9fbfb54267e89752c24f3ac3ecfef76#diff-e51ced24aa0cb4443a780154c7adfff4)
* Assist the developer with integrating the current UI/UX designs into our application

* Work on authenticated vs unauthenticated screens for every user
    *  [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/dd942804ce16cfd9888c3ed0ae89c75ae9e3e205)
* Design for database operations geared towards administrative duties

## Infrastructure Artifacts
* Develop code for MongoDb connection
    * [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/a11db21f82c82ba61a8b971c1c48fe16b1a06364)
    * [Document](https://github.com/illinoistech-itm/2020-team15w/blob/master/code/dbconnect.dart)
* Develop code for Google location feature
    * [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/6e60bb41fa4e57490a6c9bd757dfa6bd34a1a073)
* Create and populate json files for all collections in database
    * [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/f8c19b60709a0832b5a4b8e8688a518569ed7169)
* Obtain an API key to use Google maps service
    * [API key](/diagrams/database/apikey.PNG)
* Use API key in application to gain access to Googles API
    * [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/b1f753241f2864c313353f92457a64333804c83b)

## Developer

* Dart
* Implement Firebase for authentication
  * Install and connect
  * Install firebase_auth and cloud_firestore as dependencies for authentication
  * Implement it in the development

  ![dart](/diagrams/sprintthree/dart.PNG)
  ![dependencies](/diagrams/sprintthree/dependencies.PNG)
  ![Firebase](diagrams/sprintthree/firebasesdk.PNG)


* Create basic(skeleton) widgets of wrapper, authentication page, and home.
  * Authentication Page - Anonymous
  * Home Page - "index" after successful login

  ![Sign-In](/diagrams/sprintthree/signanon.PNG)
  ![Folders](/diagrams/sprintthree/folders and subfolders.PNG.PNG)
  ![Folders](/diagrams/sprintthree/folderssubfolders.PNG)




* Create Sign in method
  * Email and password authentication
  * Anonymous Authentication to start out
    * Test firebase for authentication

  ![users](/diagrams/sprintthree/users.PNG)
  ![resultuserauth](/diagrams/sprintthree/resultuserauth.PNG)


* Begin authentication build for student users(for now)

* Create class inside application to handle all authentication: signing in or registering
  (makes it more modular and easy to update in future)service folder-auth.dart for authenticateion
* Create a stream for return on users whenever there is a change in authentication
  * Sign-In and sign-out

  ![error](/diagrams/sprintthree/error.PNG)

## Junior Developer Artifacts
* Begin coding ".dart" files for Flutter application
    * [Dart1](https://github.com/illinoistech-itm/2020-team15w/blob/master/code/maps.dart)
    * [Dart2](https://github.com/illinoistech-itm/2020-team15w/blob/master/code/dbconnect.dart)
* Find the correct dependencies that will grant us access to necessary resources. (google maps and mongoDB)
    * [Commit](https://github.com/illinoistech-itm/2020-team15w/commit/98d530278130adff8774adb1b3ac5e54ab33aa42)
* Create and add deploy key to team Github repo
    * [Deploy](/diagrams/database/deploy.PNG)
* Follow automation demo steps to create a vbox with vagrant and packer
    * [Artifact](/diagrams/database/vbox.PNG)
## Project Manager Artifacts
Admin Story
![signup](/diagrams/UI/signup.jpg)
* The first screen shown displays what the admin sees. They are brought to a sign in page to access necessary features. They have the option to sign up which all users will do to create data information to cross check.
![login](/diagrams/UI/login.png)
* There is also a sign in page shown as that is what we will be using after signing up.
![overview](/diagrams/UI/overview.png)
* Next the admins of the page are brought to a dashboard screen. This essentially shows the admins statistics such as usage frequency and so on.
![inbox](/diagrams/UI/inbox.jpg)
* Here we have the inbox page. This enables us, the admins, to communicate with the next in chain users, the professors. They can voice suggestions, opinions, complains etc to us via this inbox set up.
![chatroom](/diagrams/UI/chatroom.jpg)
* Here is a chat room page set up for the admins of the mobile application. This chat room was created to separate message and communication between our users and ourselves. This is what distinguishes the inbox to the chat room. This enables us to effortlessly communicate with one another.
![customers](/diagrams/UI/customers.jpg)
* Here we have a customers page. This is essentially made for us to keep track of our users. This will be mostly entailed of professors as they will be the next in the chain then the students under them.
![calender](/diagrams/UI/calender.jpg)
* This page consists of a calendar. This calendar will act as a Kanban Board (such as Trello) for us. It’ll ensure we are on track with possible deadlines, maintenance dates and so on.

### User Story
![Begin](/diagrams/UI/IMG_5105.JPG)
A student at IIT opens the app and they are exposed to this beautiful loading screen.
![LogIn](/diagrams/UI/IMG_5106.JPG)
A student will be prompted to enter their hawk name, email, and password. Once all fields are completed, the user will press continue.
![Welcome](/diagrams/UI/IMG_5108.JPG)
Student is greeted with a welcome screen with two main buttons. Left: student voice assistant Right: student attendance check in.
![Class](/diagrams/UI/IMG_5109.JPG)
Student has chosen the attendance check in button. They have the option of choosing a class to mark their attendance for the day.
![Tap](/diagrams/UI/IMG_5110.JPG)
Once student chooses a class to check in, they will be taken to this screen to start the process.
![Location](/diagrams/UI/IMG_5111.JPG)
The application will then check the student's location to make sure they are in the classroom.
![Accept](/diagrams/UI/IMG_5112.JPG)
If the student's location is accepted, they will arrive at this screen and recieve a code to be able to check in properly.
![Success](/diagrams/UI/IMG_5113.JPG)
The students location and code was accepted and has been marked present for the class lecture.
![Home](/diagrams/UI/IMG_5108.JPG)
The student is back at the main screen where they can now select the left button (student AI assistant)
![AI](/diagrams/UI/IMG_5114.JPG)
This is where the student will press the voice button on the screen and ask the application specific questions. For example: "what time is my ITMT-430 class?" or "What day is assignment one due for ITM 301?"
