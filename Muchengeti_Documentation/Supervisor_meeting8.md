Date: Thursday 21st May
Attendees: Muchengeti Matinde

Talking Points: 

Updated Stuart on my design choices for the embeddable widget. He raised concerns at the use of iframes which I believe could still be a good option
if work is done to secure the component using methods found during reseach (i will talk to Jens about these concerns for his opinions given his software background).

Stuart raised the fact that the website is http in case that could have an impact on browsers accepting widgets from the site as a third party (could be considere 
an insecure page by defualt by some browsers)

Stuart suggested I remove the display of all header/footers in a bid to show the widget implementation can work before trying to decouple the charts from the rest
of the page. This will allow me to focus on this task first, then work soley on the header footer rendering later as there are also other smaller tasks that need to be done on them
(logo updates)

In regards to the skill level of users of the embeddable widget, stuart indicated that he believes he is likely to do most of the embedding. Therefore he would like 
the level to be for someone like himself with no/little development experience

Stuart would also like to add parameters a user can set to modify the default graph displayed by the widget on a users web page

Action Points: 

* Organise meeting with Jens to discuss embeddable widget decision/design
* Consider alternative option from iframe (creating embedabble component myself)
* Research affect of using third party content from http site
* Remove header/footer to test iframe implementation