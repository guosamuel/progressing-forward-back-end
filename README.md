### Progressing Forward (Back-End)
========================
Welcome to Progressing Forward! This is the back-end portion of this application.

## Description
Progressing Forward is a project-task tracking application for all projects that includes the logged in user. In order to make progress on a project, the user must update the project's respective task(s). This application was inspired by my experience in one of my previous jobs. There was always confusion as to which individual was involved in which project.

Features
Statistics Page - Stores the amount of questions answered correctly and the amount of questions. Calculates an average based on these two paramaters.

Audio - An audio clip will play if the user correctly answered the question or not

Installation
First fork and clone this repository into your local computer.
Navigate to the directory where it was cloned and run the following command: bundle install
Next, run this following command: rake db:migrate
Now, whenever you want to open the application, run this command: ruby bin/run.rb
API Reference
https://opentdb.com/

How To Use
When the application is opened, it will ask for a username. You may type in a username that exists, which will bring in all previous data associated with that username, or create a new username.

Please follow the instructions and options displayed on the screen.

When deleting a username, the application will automatically exit. This will indicate that the username was successfully deleted. To open the application again, run the following command: ruby bin/run.rb

Credits
Quizzia is a collaboration project between Paul Riverain and Samuel Guo. Link for their respective github profiles can be found below:

Paul Riverain: https://github.com/paulriverain

Samuel Guo: https://github.com/guosamuel
