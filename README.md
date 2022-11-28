## About Mini-CRM

It is a CRM system, having basic CRUD functionalities like update, delete, etc. It has integrated Stripe payment functionality and a distance calculator based in radar API.

## Table of contents

- [Admin Authentication](#admin-authentication)
- [CRUD Operations](#crud-operations)
  - [Image](#image)
  - [Error](#error)
- [Payment](#payment)
  - [Stripe](#stripe)
- [Distance Calculator](#distance-calculator)
  - [Radar API](#radar-api)
  - [Aerial Method](#aerial-method)
- [Needs Improvement](#needs-improvement)

All functinalities are hidden behind admin login except distance calculator.

## Admin Authentication

All the major functionalities are secured behind admin login page. In order to view, update or delete data, an admin needs to be logged in. You can't put url and visit pages. Laravel middleware has been used in order to achieve such functionality.

## CRUD Operations

There are two tables one for company and other for employees. Employees has company_id as foreign key. These two tables can be viewed individually from dashboard panel's View option. You can Update, Delete or Add new data to the database.

### Image

Images such as logo for company is being stored in public folder of laravel project. Only jpg,png,gif,jpeg extensions are allowed. 

### Error

Proper error detection has been implemented. Most of the errors are displayed along with any success messages.

## Payment

The assignment demanded to include payment functionality. A page has been created where you have to input details of some random product along with amount. Then this details is forwarded to stripe component for further processing.
### Stripe

Proper Stripe payment functionality has been implemented and tested via stripe dashboard whether the payment is being received or not. Everything seems to be working smoothly.

## Distance Calculator

The task was to show two dropdown menu of Indian cities and calculate distance between them. It has been achieved by using latitude and longitude. A cities table has been created and filled with required data.

### Radar API

An API alternative of Google Maps which is free to use in developer mode. It helps to retrive distance between cities based on their latitude and longitudes.
It also has mode feature and duration feature.

### Aerial Method


## Thank you