Meeting 1: 
Attendees: Muchengeti Matinde, Stuart Wimbush
Date 17th March

QUESTIONS

Is there a repository that i could access the current code base?

Is there documentation for the current work done?

Would you know what software is used to build each part of the project?

What are the main points you had want improved based on some of teh feedback you had already recieved?

Which branding are you refering to when updating? is it the vistoria part or the other circle logo for the dataset?

How did you go about adressing the changes you needed to make? Who did you get feedback from and how did you do so?

PROPOSAL

An overview of the problem being addressed

A statement on the proposed solution

A statement on the proposed evaluation method

Budgetary requirements with justification

Risks and Hazards that project poses (both indevelopment and final system)

Any other requirements for successful completionof project?

Access to equipment, room access, IPissues etc

Proposed project time line – Gantt chart withdates and milestones (can be 5th page)

SITE NOTES

obvious annotations to icons, especially copy

make database home button/link more obvious than the one in top right

Datasets up/down arrow icon should say that its ordering alphabetically as you could assume its supposed to give you a dropdown
- The headers for both title should have an already present icon and annotation for ordering as you cant tell that you can click it to order unsless you play around with the page intentionally


started with figshare where they would upload theri datasets

they wanted to create something to access thier datasets (integrates figshare, you can upload new data to figshare and it reflects in new interface) and also no need to plot things yourself!

there are after teh next level of people who have casual interest, just want to open a website and 

figshare has its own api / caches data from for speed


FOmr a user perspective i can come up with new ideas for intuitive use

set of feeedback from preofessional users for changes to be made (ideas but i assess what i can do / prioritise)

Ideas from stuart too

1. pick a major improvement from stuart


MAJORS

Runnable prgram on usb - dockerize?

Wants to pull graphs from component oustide of frontend
- seperate some of the frontend contents so that its not just html blobs but pulls from somewhere

MINOR

hosted on was right now (they pay a year for free but not anymore)
- implement analytics for downlods, views and/or viewing time to justify ongoing costs on aws
- could send metrics to dashboard for them to view (new feature)

Would like some datasets to show a sponsor logo to say who had provided it so that they can take more on (adding new graphocal element and associating it with dataset)

* It had been a goal for this to be mobile compat, should continue

New window when leading you to figshare

Dependent variable should default to middle option

There are 2 angles in files for data, we should add the other one as well.

Update vic logo

NOTES

have quick interations with easy way to show stuart, last group didn’t

Stuarts goal is to focus on one of the major goals, then select a few of the minor goals too
- Should focus on the ones recognised by him then prioritise the rest along with those identified by the feedback from professional users

My role is going to be to be prioritize all these changes that need to be made, then to execute them without detrimenting the current product

They already have a billed aws instance so there will be no new costs they are not already incurring

A potential inssue in development is detrimenting work already done, any changes i make need to be compatible with work already done and damaging it would add additional time to fixing issues already solved as opposed to adding new value. If my final product is missing any functionality of the current project then they will not be able to switch over my product until all the issue have been addressed

Another risk / difficulty is the lack of documentation for such a large project that was worked on by 6 people. The code base is quite large and has hidden complexity in its implentation that may not be properly documented. This will require me spending more time trying to understand thier work as misunderstading can easliy lead to breaking the system if its quite fragile - complexity is not great when a project is being handed over and docs are lacking 

ACTION POINTS

Create gitlab or github repo
- Create board / epic / milestone for proposal

Read through existing docs and project

Find out how to run locally and think about to how allow stuart to test live versions of my code

Write proposal
