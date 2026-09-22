# SuiteCRM Internship Project

A custom **SuiteCRM 7 internship project** developed using **PHP 8.2**.

## Project Overview

This repository contains the custom development work completed as part of my SuiteCRM internship.

The main goal of the project is to gain practical experience with **SuiteCRM 7 development**, including custom modules, relationships, logic hooks, JavaScript integration, AJAX functionality, validations, and testing.

## Technologies

* SuiteCRM 7.15.2
* PHP 8.2
* MySQL
* JavaScript (jQuery)
* Git

## Learning Objectives

This project covers the following SuiteCRM development concepts:

### Custom Modules

Created and configured custom SuiteCRM modules:

* **Devices** — manages devices/assets
* **Employees** — manages employees

![My image](https://www.klisarov.com/img/modules.png)

Both modules are registered in SuiteCRM and available under the **Support** category in the navigation menu.

### Vardefs

Defined and customized module fields using SuiteCRM vardefs, including field types, labels, default values, and other field properties.

![My image](https://www.klisarov.com/img/vardefs1.png)
![My image](https://www.klisarov.com/img/vardefs2.png)


### Module Metadata

Configured module metadata files to control how records are displayed and managed, including:

* List views
* Detail views
* Edit views
* Search layouts
* Subpanels

![My image](http://klisarov.com/img/listview.png)
![My image](http://klisarov.com/img/detailview.png)
![My image](http://klisarov.com/img/editview.png)

### Relationships

Implemented relationships between the **Employees** and **Devices** modules.

Each device can be assigned to an employee, allowing the relationship to be managed directly through SuiteCRM.

![My image](http://klisarov.com/img/relationships.png)

### Subpanels

Added a Devices subpanel to the Employee detail view.

When viewing an employee, the subpanel displays the devices currently assigned to that employee.

![My image](http://klisarov.com/img/subpanels.png)

### Logic Hooks

Implemented custom business logic using SuiteCRM Logic Hooks.

#### 1. Automatically Unlink Devices

When an employee's status is changed to **Inactive**, the Logic Hook automatically unlinks all devices assigned to that employee.

#### 2. Automatically Set Employee Page Title

When a new employee is created, the Logic Hook automatically sets the record's title using the employee's **first name and last name**.

### JavaScript & AJAX Integration

Implemented JavaScript functionality using SuiteCRM's built-in **jQuery** library.

#### Automatic Asset Code Generation

When creating a new Device, an asset code is automatically generated through an **AJAX request**.

For example:

```text
New Device
    ↓
AJAX request
    ↓
Next available asset code
    ↓
DEV-003
```

The generated asset code is automatically populated in the Device form.

#### Dynamic Form Fields

Implemented dynamic field behavior based on the selected device type.

For example:

* **Laptop** → IMEI field is hidden
* **Desktop** → IMEI field is hidden
* **Monitor** → IMEI field is hidden
* **Phone** → IMEI field is displayed

This allows the form to adapt depending on the type of device being created.

## Project Structure

```text
SuiteCRM-Internship/
│
├── modules/               # Custom SuiteCRM modules
├── custom/                # SuiteCRM customizations and extensions
│
└── README.md
```

## Purpose

This project serves as a practical learning sandbox for understanding how **SuiteCRM 7 works from a developer's perspective**, with a focus on PHP-based customization rather than relying exclusively on the SuiteCRM Studio interface.

The project is being developed incrementally throughout the internship, with new functionality and concepts being added as they are learned.
