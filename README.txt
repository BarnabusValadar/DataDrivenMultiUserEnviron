MUD MASTER README BARNABUS_VALADAR  23-Aug-2019
---------------------------------------------------------------------

A game that allows you to create a campaign world!

Here's a few things I'd like us to maybe think about please add stuff as we go!

Possible features
1. Abstract above the die-rolling system used and design an interface that each must implement (as classes) for things like: a) to hit rolls, b) damage rolls and modifiers, c) saving throws and modifiers, d) spell effects, range, damage etc and modifiers. E.g. one such instance of a class that implements the IRpgRules Interface could be d20, or stamina/skill, or a MERP d100 with crits.

2. To be able to automatically translate a IRpgRules implementing class to any other with a Translation class.

3. OpenSteer for AI movement of bots.
   Use https://github.com/martindevans/SharpSteer2 via NuGet. TODO CJ

4. Node.JS Nuget front end for in VS2019 editing.
   Reading list:
   https://github.com/maxogden/elementary-electron
   
5. A simple web home page that displays some database stats and a hello world.

6. A log file that is written to as world state changes.

7. A PowerShell script that displays the tail of the log file so we can simply right click on Windows Explorer on the script and see a running log.

8. Make a folder in the repo for just the Githrin campaign images and documents.

9. Where possible try and have non-campaign specific resources, and then the ability to have a custom campaign folder of stuffs.

10. ...
