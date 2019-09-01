MUD MASTER README BARNABUS_VALADAR  CREATED: 23-Aug-2019
---------------------------------------------------------------------

2019-09-01:
SJ: Dev's must now download and install MS SQL Server 2017 Developer edition. It's free. Choose the SQL Server 2017 Developer edition from the link:
https://www.microsoft.com/en-us/sql-server/sql-server-downloads

(Hint: it's on the left and says "SQL Server 2017 Developer is a full-featured free edition, licensed for use as a development and test database in a non-production environment." Click Download Now.)
Install just the SQL Server Database Engine stuff as you won't need Analysis Services or Integration Services (these things can be added later).
You should also install a SQL Server 2017 instance and if you set the sa password write a note what that is. I've made my own sa account password be "p@ssw0rd".
After that you will need to make sure SQL Server Browser and SQL Server services are running to make your database engine run and be connectable.

Then download and install SSMS (Sql Server Management Studio) - this will let you actually interrogate the database etc. That's just an option in SQL Server setup.(if you want to do this)
You can then either execute all the create scripts manually or just run visual studio and do a schema compare against the database project and the database instance and update.

Then execute the "GenerateDataScript.sql" to create the test data. There are 3 map locations, 1 character instance (id=1) one monster instance (id=1). You'll see these if you run the views provided.


2019-08-23:
CJ: A game that allows you to create a campaign world!

Here's a few things I'd like us to maybe think about please add stuff as we go!

Possible features
1. Abstract above the die-rolling system used and design an interface that each must implement (as classes) for things like: a) to hit rolls, b) damage rolls and modifiers, c) saving throws and modifiers, d) spell effects, range, damage etc and modifiers. E.g. one such instance of a class that implements the IRpgRules Interface could be d20, or stamina/skill, or a MERP d100 with crits.

2. To be able to automatically translate a IRpgRules implementing class to any other with a Translation class.

3. OpenSteer for AI movement of bots.

4. Node.JS Nuget front end for in VS2019 editing.

5. A simple web home page that displays some database stats and a hello world.

6. A log file that is written to as world state changes.

7. A PowerShell script that displays the tail of the log file so we can simply right click on Windows Explorer on the script and see a running log.

8. ...
