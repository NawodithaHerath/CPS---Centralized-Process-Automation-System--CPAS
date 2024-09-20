# Centralized Process Automation System

Github link: https://github.com/NawodithaHerath/CPS---Centralized-Process-Automation-System--CPAS

##  What is Centralized Process Automation System?
**Centralized Process Automation System for the Banking Sector to Manage and Govern Internal Audit**

Centralized Process Automation System (CPAS)is a comprehensive internal audit tool designed to enhance efficiency and effectiveness within the banking sector.

The project is motivated by the need to automate internal auditing processes, providing a solution to challenges in data management, communication, resource planning, monitoring, and decision support.

This repository holds a all the coding file that built the **Centralized Process Automation System** project based on the Codeigniter 4 framework.
Code structure based on the Codeigniter 4 framework and all the files are strucutred following the Codeigniter 4 framework corde's structureing rules.

More before information about the development of this project, it is requiered to understand the Codeigniter 4 framework in first hand. [CodeIgniter 4](https://codeigniter.com/user_guide/intro/index.html) 

The user guide corresponding to the cording structure of the Centralized Process Automation System.

## System Architecture 
The Centralized Process Automation system is implemented under the Model-View-Controller (MVC)  structure. In the bottom line, the database is the model layer which contains business logic and information about the database's data types. At the top is the display layer, which is mostly CSS, JavaScript, and HTML with dynamic embedded code. In the middle, it has the controller, which has various rules and methods for converting data that moves between the view and the model according to the business logic

CodeIgniter is mainly based on the Hierarchical Model View Controller (HMVC). Therfore, project was organized each module by grouping into controllers, views and models repressing the layer by layer.

## Controller:
The controller assists as the intermediary component of the models and view that facilitates interaction between the view and the model. 
In this project's development, the controller is mainly created and managed using the PHP language and all business logic and interconnected methods are defined within classes, organized based on main classes and subclasses.

## View :

The View component is used for all UI logic in the system. It generates user interfaces for the user. 

Under this project development, interfaces are developed using HTML, PHP, JS and CSS. Core of the interface depends on the HTML, manipulation and validation on the user's web browser handled by the PHP and JS. Interface design, visual and graphic related things are handled using the CSS with the support of Boostrap framework for better user experience, ease and faster development of the project

**Please** read the user guide for a better understaning for Boostrap framework.[Boostrap ](https://getbootstrap.com/docs/5.0/getting-started/introduction/) 


## Model:  :

The model component is responsible for managing all data-related logic that the user interacts with. It represents data transferred between the View and Controller components or any other business logic-related data. 

For this project, the database is hosted on the MYSLQ database saver, and CodeIgniter framework helps to easily interact with MySQL databases by providing a well-structured library and query builder, making it easy to perform common database operations safely and efficiently.

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
