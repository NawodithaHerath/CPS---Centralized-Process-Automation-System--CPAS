# Centralized Process Automation System

Github link: https://github.com/NawodithaHerath/CPS---Centralized-Process-Automation-System--CPAS

##  What is Centralized Process Automation System?
**Centralized Process Automation System for the Banking Sector to Manage and Govern Internal Audit**

Centralized Process Automation System (CPAS) is a comprehensive internal audit tool designed to enhance efficiency and effectiveness within the banking sector.

The project is motivated by the need to automate internal auditing processes, providing a solution to challenges in data management, communication, resource planning, monitoring, and decision support.

This repository contains all the code files that built the Centralized Process Automation System project, based on the CodeIgniter 4 framework. The code structure follows CodeIgniter 4's framework and adheres to its file structuring rules

Before delving into the development of this project, it is essential to first understand the CodeIgniter 4 framework. [CodeIgniter 4](https://codeigniter.com/user_guide/intro/index.html) 

This user guide corresponding to the cording structure of the Centralized Process Automation System.

## Installation and setup of the CPAS

The system runs on an Apache server and handles user requests and responses through server interactions. The system is developed using the CodeIgniter 4 framework, which is based on PHP. Therefore, the setup and installation should follow the guidelines of the CodeIgniter 4 framework accordingly.

## System Architecture 
The Centralized Process Automation system is implemented under the Model-View-Controller (MVC)  structure. In the bottom line, the database is the model layer which contains business logic and information about the database's data types. At the top is the display layer, which is mostly CSS, JavaScript, and HTML with dynamic embedded code. In the middle, it has the controller, which has various rules and methods for converting data that moves between the view and the model according to the business logic

CodeIgniter is mainly based on the Hierarchical Model View Controller (HMVC). Therfore, project was organized each module by grouping into controllers, views and models repressing the layer by layer.

## Controller:
The controller assists as the intermediary component of the models and view that facilitates interaction between the view and the model. 
In this project's development, the controller is mainly created and managed using the PHP language and all business logic and interconnected methods are defined within classes, organized based on main classes and subclasses.
All the business logic and interconnected method-related code files are stored in the directory: app/Controllers

## View :

The View component is used for all UI logic in the system. It generates user interfaces for the user. 
Under this project development, interfaces are developed using HTML, PHP, JS and CSS. Core of the interface depends on the HTML, manipulation and validation on the user's web browser handled by the PHP and JS. Interface design, visual and graphic related things are handled using the CSS with the support of Boostrap framework for better user experience, ease and faster development of the project

All User interfaces related  related code files are stored in the directory: app/Views

**Please** read the user guide for a better understaning for Boostrap framework.[Boostrap ](https://getbootstrap.com/docs/5.0/getting-started/introduction/) 

**ChEditor**
ChEditor is a lightweight and easy-to-use WYSIWYG (What You See Is What You Get) editor for web applications. It allows to create and edit content directly in the browser without needing to write HTML or other code manually.
Therefore, ChEditor is used as the text editor for the user data input form in CPAS, and the source code related to ChEditor is available in the directory: public/cheditor as a package

## Model:  

The model component is responsible for managing all data-related logic that the user interacts with. It represents data transferred between the View and Controller components or any other business logic-related data. 

For this project, the database is hosted on the MYSLQ database saver, and CodeIgniter framework helps to easily interact with MySQL databases by providing a well-structured library and query builder, making it easy to perform common database operations safely and efficiently.

All module files related to data storing and data retrieving from the database are stored in the directory: App/Models


## Validation:  
CodeIgniter 4 provides a robust validation system that helps ensure the correctness of the data before it is processed or stored in a database. Validation rules are applied to incoming request data and can be configured in controllers or through configuration files.

In this project, valudations rules are avaible for the all the data input forms and all the validation files are sotroed in the validation directory follwoing the CodeIgniter 4 file structuring rules

All validation-related code files are stored in the directory: App/Validation

## CPAS - Project Structures 

The overall system development code is based on the MVC architecture. Therfore, The system's workflow handling process involves the development of nine main sub-modules.

1.	User Handling Module
2.	Checklist Creation Module
3.	Audit creation module & team assigning
4.	Audit comment entering module
5.	Audit comment review module
6.	Branch manager reply  entering module
7.	Branch manager reply  review
8.	Management report Generating
9.	Admin Module

For each module, classes are developed separately as it is the basic rule of Codeigniter 4 framework. Each class has separate methods to handle functionality of modules. Mainly these methods handle the data’s CRUD operation processes by interacting with the model class to store and retrieve the data.


