# Sprint-02 Report

## Team 15W
* Davon Branch - Project Manager
* Bryant Mcgee - Developer
* Olu Ogunsanya - Jr Developer
* Raymond Ezekiel - IT Operations/Infrastructure & UI/UX Developer

## Atomic Goals for Sprint-03
* Project Manager
1. Layout all outstanding tasks for the project that still needs to be completed for a sucessful final deliverable 
2. Talk to individual group members separately and meet in person to increase productivity within sprint timelines.
3. Assist group members with multiple resources and tasks given through out sprint duration (help with coding, UI, infrastructure, security duties)
4. Establish a better relationship with professor, TA, and group members so we can work together more efficiently and deliver faster solutions. 
5. Research important data that will navigate the project's progress (Google API's and/or previous student projects related to this subject matter) 
* UI/UX
1. Develop a separate "user story" for the professors 
2. Assist the developer with integrating the current UI/UX designs into our application
3. Work on authenticated vs unauthenticated screens for every user
4. Design for database operations geared towards administrative duties
5. Work on implementing a user friendly experiece with responsive design
* Developer
1. Get Dev Environment working on everyone's machine
2. Make sure each team member can deploy the environment via script
3. Begin Coding Front End
4. Settle on which Geolocation and speech-to-text API we plan to integrate into our app 
5. Generate Test Users
* Jr Developer/Security
1. Assist developer with coding & any problems that may arise.
2. Develop code to integrate Google's OAuth API's into our application
3. Develop code to allow two factor authentication for our application.
4. Find out if any internet resources will allow us to use Zeek's network monitoring system for our application.
5. Start creating text documents for text to speech file.
* IT Infrastructure 
1. Use research from Google Geolocation and Flutter integration to develop student attendance feature.
2. Manage the database and storing of test data.
3. Integrate a memory cache layer into our system.
4. Obtain access to Google's APIs for speech to text.
5. Assign permissions to each user to determine who has authorization for certain tasks.
## Project Manager Report
![Goals](/diagrams/UI/goals.PNG)
* Goal 1: Focus on the admin story and enhance the user(student, professor, TA) story
![admin](/diagrams/UI/adminprofessor.PNG)
* Goal 2: Make use of integration between Slack, Github, and Trello
![slack](/diagrams/UI/slack.PNG)
![trello](/diagrams/UI/trello.PNG)
![github](/diagrams/UI/github0.PNG)
* Goal 3: Work on database creation with IT infrastructure team member
![database](/diagrams/UI/database.PNG)
![mongo](/diagrams/UI/mongo.PNG)
[Database JSON file](https://github.com/illinoistech-itm/2020-team15w/blob/master/code/classes.json)
* Goal 4: Organize Github repo so everything is in the correct place for final deliverables.
[Reorganize diagrams folder](https://github.com/illinoistech-itm/2020-team15w/commit/a4e74a2343b208ade99bb19c85d81cfea74e0984)
[Clean up reports folder](https://github.com/illinoistech-itm/2020-team15w/commit/c2daf646efbc609582fac8fbd694575e1c20bbd5)
* Goal 5: Create tasks for each member on Trello & be explicit about expectations and goals for Sprint 2. (Allocate resources)
![Trello card](/diagrams/UI/slackteam.PNG)
[Trello team board](https://trello.com/b/EzvJyP9B/project-board)
* Goal 6: Find a solution to increase participation of group members within coding platforms.
![Liveshare](/diagrams/UI/liveshare.PNG)
[Live Share](https://visualstudio.microsoft.com/services/live-share/)
* Currently. we do not have a working system due to problems we ran into with coding on Android Studio. We have chosen a different application to run code - Visual Studio - and we are trying to get everyone up to date,  running the software, and learning Flutter/Dart to continue working on goals from the user/admin story. We are still working on integrating our UI/UX designs into the application and finding a way to integrate Google's voice API and location based API into our application. Also, finding a way to allow administrative roles and professor roles through out the program.
* So far, we have completed our user story, admin story, and included different methods for a professor. We have also created a database schema to base our database on. We are using MongoDB and JSON files to load real data into our database. As of now, we our storing user log in information into the database, but our goal is to use Google Auth which will allow users to sign in with existing IIT accounts, provide extra security, and make things more feasible for the user.

## UI/UX Report
* Goal 1: Layout design  Diagrams of site functionality using layout tool (in-depth with more features) Diagrams of colors, fonts, buttons etc.
* Goal 2: Logo re-work
* Goal 3: UI for students- authenticated users
* Goal 4: UI for admin
* Goal 5: Begin actual design using software, GUI
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
## Developer Report
* Goal 1: Creation of Dev Environment (Microsoft Visual Studio) [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)
* Goal 2: Begin learning Dart Basics[Dart](https://dart.dev/tutorials)
* Goal 3: Research how dart handles APIs, and how to implement them into the application
* Goal 4: Begin creating test syllabi for when we code the app to search text ![Syllabi](/diagrams/syllabus/)
* Goal 5: Figure out how to move UI/UX Designs from adobe xd to flutter
[Adobe to Flutter](https://theblog.adobe.com/xd-flutter-plugin-generate-dart-code-design-elements/)
[Supernova](https://supernova.io/)
Going into the next spring we should be aiming to have some pages operational, with the rest of the pages in the works. Its important for everyone to have the dev environment working on their local machine, and have the ability to seamlessly share whatever work we do with each other. Since we have the database set up, next would be to add a memory cache layer, redis, and generate the data of the test users for when we get to creating the test environment.
## IT Infrastructure Report
* Goal 1: Creation of Datastore (MongoDB) [MongoDB](https://cloud.mongodb.com/v2/5e56a2b0617db67ec76b5571?csrfTime=1583338370248&csrfToken=3ce1e78b3fca3ac52e41f51af30310531352ddd4&currentOrgId=5de874469ccf6405d72c29fe&email=dbranch2%40hawk.iit.edu&needsMfa=false&origin=Account%3AGoogle&uId=5de874469ccf6405d72c29fd#clusters)
* Goal 2: Creation of Data Schema 
![Database](/diagrams/database/AIDatabaseSchema.pdf)
[JSON file](https://github.com/illinoistech-itm/2020-team15w/blob/master/code/classes.json)
* Goal 3: Researched which memory cache layer to use, memcached or redis
## Junior Developer and Security Assumptions
* Goal 1: Google Authentication, to allow the user share specific information with the application. The application will interact with google to OAuth 2.0 to obtain a user's content to perform an API request on the user's behalf, because the application must have the user's consent before it can execute a Google API request that requires user authorization [OAuth 2.0](https://developers.google.com/identity/protocols/OAuth2)
* Goal 2: Two-factor authentication, to add additional security for certain actions such as requesting grades. Some information that need to be kept private would require 2FA two-factor authentication. Google generates a one time only code sent to the user's registered number and the user has to input the code in order to continue [Two Factor Authentication](https://developers.google.com/assistant/smarthome/develop/two-factor-authentication)
* Goal 3: Intrusion detection system. This monitors network traffic searching for suspicious activity and known threat, and it will alert the user if any is found. We can use Zeek for the setup, the allow for open source, free use with no restriction and it interfaces with other applications for real time exchange of information. [Zeek](https://www.zeek.org/index.html)
* Goal 4: Authorization. Because there is going to be two interfaces, one for the students and the other for the professors, we need to make sure students do not get professor's authorization. Authorization is important so that specific information do not get out. During operation, the system uses the access control rule to decide whether access requests shall be approved or rejected. .
