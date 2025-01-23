# README

This application was part of a challenge from Igor.

Work Instructions
	1.	Set Up the Rails Project:
	•	Generate a new Rails app with a User model and scaffold CRUD actions.
	2.	Create the SQL View:
	•	Define an SQL view to filter users with status = 'active'. Use a Rails migration or SQL file.
	3.	Active Users Page:
	•	Create a controller and view to display data from the SQL view.
	•	Ensure this page has no CRUD actions.
	4.	Add Export Options:
	•	Implement a button to export the list in XLS, PDF, and CSV formats.
	5.	Organize Code Nicely:
	•	Use inheritance, service objects, or concerns where applicable for clean and reusable code.
	6.	Test the App:
	•	Write tests for models, controllers, and exports.

  What I learned:

  - How to create a SQL view
  - How to export pdf with prawn
  - How to export xlsx with axlsx
  - Tried stimulus component controller for dropdown menu

  resources:

  https://dev.to/pascualtalcual/database-views-rails-active-record-defining-new-model-classes-out-of-views-44m3

  https://github.com/caxlsx/caxlsx_rails

  https://github.com/prawnpdf/prawn
