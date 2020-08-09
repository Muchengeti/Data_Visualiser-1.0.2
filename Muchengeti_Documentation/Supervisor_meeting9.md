Date: Monday 25th May
Attendees: Muchengeti Matinde

Points Discussed:

Jens also voiced concerns on using iframes given the seciruty vulnerabilities they have. He suggested I take a look at how chart js renders (chart js documentation) its charts since it would use a similar method when embedding its charts
into a page. Jens believes it would be a better option to create the embedding component myself using the chart js model. This would avoid exposing clients to 
the iframe vulnerabilities.

Another point discussed was the USB promotional tool. Jens had originally voiced concerns about the outdate nature of USB's and after further discussion with Stuart
we decided to reconsider implementing this aspect of the project. After relaying Stuart's proposed alternative of a QR code scanner, Jens agreed that it would
be a more suitable route (in terms of keeping solutions modern) however it would not require any development work from my side. 

Another aspect discussed was whether the inclusion of website metrics would be a worthwhile task. Similar to the QR code solution we concluded that this would
take very little development work.

In my bid to look for an aspect of the project to build out to replace the usb tool Jens suggested adding automated testing using Selenium.

Action Points: 

*Research google analytics implementation (to get idea of workload myself)
*Organise meeting with Ramesh to discuss/update project scope changes
*Read chart js docs to find how they display content on pages