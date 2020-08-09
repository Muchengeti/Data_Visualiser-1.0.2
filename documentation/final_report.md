# ENGR 302 Final Project Report


**Project 14:** Robinson Research Institute Database

**Client:** Stuart Wimbush

**Date:** 19 October 2018


## Project Objective(s)


Our objective was to make a public-facing, Victoria branded interface to Figshare for Robinson Research Institute (RRI). It needed to be well designed with user experience as a priority so that it can be used for RRI promotion.

We delivered a public facing application, with Victoria University branding, that sources data from RRI's Figshare database. We implemented parity with graphs displayed on Figshare, in addition to being able to generate them dynamically from user selected variables. We support all of the datasets currently on Figshare, as well as future experiments uploaded by RRI. The user has access to various options for customising the graph such as changing the constant and dependence variables, and  appearance of the graph. There are also various options for exporting the graph and data associated with it.


## Original Scope

For the original broad scope see section 1.2 (requirements document). For technical scope and features see section 3.2 (requirements document).

## Completed features

* Display the latest versions of each dataset stored on Figshare.
* Link to original Figshare page for each dataset.
* Display all lines from experiments on a single graph.
* Parity with `.png` files from Figshare in terms of appearance and data being displayed.
* Exporting `.csv`, `.png` and printing of graphs.
* Appearance options to customise look of graph.

All features in within scope were completed.

## Stretch Goals

There are two main stretch goals that the client expressed interest in at the beginning of the project.

The first of these is displaying the IV curve of every point on the graph. Users would be able to select a point to display the IV curve associated with it. Due to time constraints this feature was not able to be implemented, but the system was designed in a way to make adding this feature in future developments easier.

The second of these is being able to compare the data by displaying to the user two graph. Similar to the IV curves, this feature was not feasible given the time constraints but will be able to be added with future developments

## Original and Actual Schedule

Our schedule from the first trimester can be seen in section 5.1 of the requirements document. As seen we planned what we would do every week up until week 15. We followed this schedule and did not deviate at all. 

In the second trimester we did not follow a rigorous schedule but instead opted for two-week iterations. We would plan each iteration before beginning, which also included the client in prioritisation, so we would have a clear idea of what we had to get done. We stuck to the fortnightly iterations timeframe. At the end of each iteration, we would deploy the latest version to our AWS server for the client to view and evaluate. If needed we could deploy more frequently than this.

## Delivered Expenditure

There was no final monetary expenditure, as this cost was absorbed by using the $100 AWS credit for students. It was roughly $5 USD a month.

## Technical Achievements

The primary achievement of the project was taking an unstructured database in mainly excel files and using that data in a robust web application. Several factors contributed to this technical achievement. Firstly, the back end is a robust Ruby on Rails application that parses the unstructured data, then converts it into a SQL database that can easily be queried.  Secondly, a simple yet powerful API allows that back end to provide all the data necessary to the front end. Thirdly, a dynamic front end with a wide range of options allows users to display whatever data they wish and easily replicate graphs from Figshare, the core goal of this project.

Another technical achievement of the project was the choice of technologies. By using powerful and frequently used libraries such as @ngrx/store, @ngrx/effects, and Angular Material, it puts the application in a good place for future maintenance and development. 

## Reflection on management

Management in the first trimester was lacking, which led to low efficiency and resulted in client concern with the project success. 
Communication was also lackluster, with the client unclear about the
current status and direction of the project. 

During the second trimester, we moved to a sprint orientated approach with a clear goal and objectives to achieve every two weeks. This included more regular contact with the client from more group members as well as improved communication within the team. This led to the team being more focused on what the client wanted, alongside the client having a better understanding of the current progress.

## Procurement Summary

### AWS

AWS is our only major supplier and information on this is found in the installation document(s).

### Transition Plan

The transition process for this project involved handing over the outputs of the project and setting up 
the infrastructure. The outputs of the project consist of the source code, assets, and
all other artifacts of the project contained in the GitLab repository. The infrastructure is the
underlying work that allows for the public to access the application through the internet.

The handover of the outputs was accomplished by providing the client with a zip file of the GitLab repository
and establishing GitLab credentials for the client, allowing him to access the GitLab
repository directly. This direct access allowed him to access the latest version of the application without
any work on the team's part.

The infrastructure setup was accomplished by providing him with the installation documents and support as
he worked through the process. A detailed description of the process is given in the installation documents
which provides a step-by-step procedure for setting up the infrastructure.

### Assumptions

The transition plans relies on the client having some technical knowledge, as it involves following
technical instructions such as running commands in a command line. However, Stuart is more than
capable of accomplishing these tasks.

The transition also relies on the client being within the ECS system, as they need access to the
GitLab repository.

Additional assumptions related to the installation process are outlined in the step-by-step procedure
under prerequisites.

### Organisation

The client will receive a range of items from us. These include:

* All documentation including user manuals and technical documentation.
* Access to the GitLab repository.
* A zip file of the source code.


### Work Required

Once the deployment date has passed, it will be up to the client to present the project to the organisation in order to gain approval for our project. We have worked with the client to meet all of the requirements that give the project the best chance of gaining approval. At the moment it is unofficially integrated into the RRI website with a redirect.

### Schedule

The handover date was October 19th. For a detailed schedule refer to the requirements document. 
