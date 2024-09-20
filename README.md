# Centralized Process Automation System

Github link: https://github.com/NawodithaHerath/CPS---Centralized-Process-Automation-System--CPAS

##  What is Centralized Process Automation System?
**Centralized Process Automation System for the Banking Sector to Manage and Govern Internal Audit**

Centralized Process Automation System (CPAS)is a comprehensive internal audit tool designed to enhance efficiency and effectiveness within the banking sector.

The project is motivated by the need to automate internal auditing processes, providing a solution to challenges in data management, communication, resource planning, monitoring, and decision support.

This repository holds a all the coding file that built the C**Centralized Process Automation System** project based on the Codeigniter 4 framework.
Code structure based on the Codeigniter 4 framework and all the files are strucutred following the Codeigniter 4 framework corde's structureing rules.

More before information about the development of this project is , it is requiered to understand the Codeigniter 4 framework in first hand. [CodeIgniter 4](https://codeigniter.com/user_guide/intro/index.html) .

The user guide corresponding to the cording structure of the Centralized Process Automation System.

## System Architecture 

The Centralized Process Automation system is implemented under the Model-View-Controller (MVC)  structure. In the bottom line, the database is the model layer which contains business logic and information about the database's data types. At the top is the display layer, which is mostly CSS, JavaScript, and HTML with dynamic embedded code. In the middle, it has the controller, which has various rules and methods for converting data that moves between the view and the model according to the business logic

## Setup

Copy `env` to `.env` and tailor for your app, specifically the baseURL
and any database settings.

## Important Change with index.php

`index.php` is no longer in the root of the project! It has been moved inside the *public* folder,
for better security and separation of components.

This means that you should configure your web server to "point" to your project's *public* folder, and
not to the project root. A better practice would be to configure a virtual host to point there. A poor practice would be to point your web server to the project root and expect to enter *public/...*, as the rest of your logic and the
framework are exposed.

**Please** read the user guide for a better explanation of how CI4 works!

## Repository Management

We use GitHub issues, in our main repository, to track **BUGS** and to track approved **DEVELOPMENT** work packages.
We use our [forum](http://forum.codeigniter.com) to provide SUPPORT and to discuss
FEATURE REQUESTS.

This repository is a "distribution" one, built by our release preparation script.
Problems with it can be raised on our forum, or as issues in the main repository.

## Server Requirements

PHP version 7.4 or higher is required, with the following extensions installed:

- [intl](http://php.net/manual/en/intl.requirements.php)
- [mbstring](http://php.net/manual/en/mbstring.installation.php)

Additionally, make sure that the following extensions are enabled in your PHP:

- json (enabled by default - don't turn it off)
- [mysqlnd](http://php.net/manual/en/mysqlnd.install.php) if you plan to use MySQL
- [libcurl](http://php.net/manual/en/curl.requirements.php) if you plan to use the HTTP\CURLRequest library
