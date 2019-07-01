Progressing Forward
========================

Welcome to Progressing Forward! This is the back-end portion of this application.

## Description
Progressing Forward is a project-task tracking application for all projects that includes the logged in user. In order to make progress on a project, the user must update the project's respective task(s). The project lead has the authority to create new tasks for their respective projects as needed. This application was inspired by my experience in one of my previous jobs. There was always confusion as to which individual was involved in which project. With my new found knowledge of React and Ruby on Rails, I created this application to consolidate all users involved in their respective projects.

## Framework
Built with [Ruby on Rails](https://rubyonrails.org/)

## Features
***Note:*** These are features of the overall application (i.e., front-end and back-end)

Collaborators - The project lead can add other users who are not already included in the project. When that user logs into their account, the project will be shown on the page.

Auto Progress - The overall progress of the project is automatically updated after updating a task. The task can also regress.

Interactive Feedback - Messages will appear on the page if the actions the user performed were successful or not.

Task Due Dates - The due date for each task can not be due later than its respective project due date.

Auto Filter - The project will be automatically rendered into the appropriate column depending on the project's progress.

## Installation
1. Fork and clone this repository into your local computer.
2. Navigate to the directory where it was cloned and run the following command: `bundle install`
3. When the `bundle install` command completes, run the following command: `rails db:migrate`

## How To Use
To run the back-end, run the following command: `rails s -p 3000`

***Note:*** For the back-end, the port needs to be assigned to port 3000 because port 3000 is the default port the front-end will refer to.

## Front-End Installation
After successfully installing the back-end, please refer to the [Progressing Forward Front End repository](https://github.com/guosamuel/progressing-forward-front-end) for instructions on how to install the front-end as well as using the application.
