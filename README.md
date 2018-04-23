# Seven Wonders JPA

## Skill Distillery - Week 8

### Project Description

This program utilizes a SQL database (setup sql document included) and is applied to a dynamic web interface which allows users to read, create, update and delete entries in said database.

### Project Operation

The theme of this program is wonders of the world. Starting in the SQL database, the wonder table has fields for the wonder's name, description, year of construction, era (BC/AD), latitude, longitude, url to the wonder's Wikipedia page, and url to an image file that the user can access. In JPACRUDApp, the Java program can access the database and create Wonder entities from the preexisting inserts. It is in JPASevenWonders that the dynamic web portion of the program displays the wonder entities to the user, starting by listing their names in the opening index page and displaying their details if the user clicks on the name of the wonder. Clicking on the wonder's name in the details page brings up the Wikipedia page, and clicking on the link above the map brings up the image.

At the bottom of the index page is a button reading, "Create Your Own Wonder" which allows the user to create their own wonder to be added and displayed on the database. To check against user error, the user must fill out all the fields on the page in order to have all information about their wonder displayed when returned to the home page.

On any of the details pages for the wonders, there are three buttons: one to return to the index page, one to update the current wonder, and one to delete the current wonder. If the user chooses to update the current wonder, they are taken to a page similar to the create wonder page, except that the wonder's original fields are marked as placeholders in the boxes, reminding the user of the original values which they are replacing. Like with the create wonder page, the user is required to fill out all the fields to maintain the integrity of the wonder, both in its altered and unaltered fields. Once complete, they are redirected to the home page, where they will see the results of their update when they click on the details page for the same wonder. If the user chooses to delete the wonder, they are redirected to a page explaining whether the delete was successful or unsuccessful before returning them to the index page where the result of their delete should be apparent.

### Technologies Used

- JPA
- Spring
- JDBC
- MySQL, MySQlWorkbench
- Gradle
- HTML/CSS/JSP
- Entity/Controller relations

### Lessons Learned

- Passing in hidden inputs can allow you to save space in creating files. For example, in my deleteFail and deleteSuccess jsp files, I was simply able to pass in ${operation} to inform the user of the success or fail of their operation since it was only one word I was changing for each page.
- Gradle refresh is a surprising solution to most dynamic web project problems!
