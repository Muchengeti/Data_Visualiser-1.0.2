Meeting 5
Attendees: Muchengeti Matinde, Ramesh Rayudu
Proposal Feedback
Move paragraph explaining major tasks to bullet points
In each paragraph discuss the challanges i will need to solve associated with each problem being addressed
for the portable usb solution

i need to make the system easy to run
i will need to look into tools for packaging application so that you run a single thing (instead of spinning up multiple parts of the program)
Using something like this (docker) would enable you to easily bundle up all the applications dependencies so you dont have to figure out which you have to download - it just comes with it all / dont waste time at run time running scripts to install it all when spinning up on usb
Need to look into using a bash (does this scripting language work on all operating systems?) script to spin up the docker container running the application since users dont know how to use docker / command line interfaces
Need to educate users on how to navigate to site (localhost instead of website url since its being served locally)
Need a way to turn off server when user is done which should be a script as well since users dont know how to user docker / command line (click this file when done) YOU SHOULD ONLY HAVE TO USE UI ELEMENTS WHEN RUNNING AN USING THIS APP ( mouse clicks )
Need to specify data is not current since running locally - just to demonstrate functionality
Decoupling
ensure communication with frontend and database needs to still work just as it does
an issue for being able to embedd graph manipulation in any page is browser being used
API load could now be higher since its being used on other pages that are not the central / designated frontend
what is the response time from used the dedicated api as opposed to response from having graphing embedded with rendering of rest of frontend
NO NEED TO SIGN IP AGREEMENT

YOU HAVE NOW BEEN GIVEN GITLAB RESOURCES BUT SHOULD GIVE THE LEVEL OF CRITICALITY FOR EACH RESOURCE NEEDED

CAN REFERENCE MODEL FOR EMBEDDING GOOGLE MAPS IN WEBPAGES FOR SOLUTION ON DECOUPLING GRAPHING AND CREATING API FOR IT

SPECIFY DATA HAS BEEN COLLECTED / ALREADY ANONYMOUS SO THERE ARE NO ETHICAL CONSIDERATIONS THERE

CHANGE RRI TO FULL NAME