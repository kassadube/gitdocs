# Fleet Roadmap

* Building client side  development environment with the tools:
     * Node.js  
        create a node.js project that will be using as a development server to build and test the fleet client.  
     * webpack configuration dev/prod.  
        webpack is a module bundler. webpack takes modules with dependencies and generates static assets representing those modules. As websites are evolving into web apps they are relying more and more on JavaScript.
     * List of packages that will be used in the project (dependencies / devDependencies)  
     the packages are libraries that the site will be using (React, React-Redux, Bootstrap, etc..)
* Building server api (Asp.core / webapi).
* Creating Authentication mechanism token based on the server side
* Implement Authentication for all ajax requests
* Mapping all api requests that is being used in the messages module.
     * Produce all the maped requests for the client to use.  
      at the beginning some of the requests might be as mock so the client will be able to test without being.
* Building the site state structure according to the api requests.    
* Build Ajax action implementing the api requests and the site state.
* Build unit test for all actions.
* Create a dictionary mechanism server/client/database.  
 before starting the building this item should be explain in details, this task as a potential for problems.
* build a datetime mechanism that should be used all over the site dates. 
* create html skeleton using css according to the design.


The outcome of these tasks should be :

*  Git repository in vsts.
* Readme file that explains how to clone the repository and use it.  
so every developer (new/old) could understand how to start using the app.
* document that explains all packages with the version in the time that installed.
* folder structure for the client side.
* The Authentication should be explained.
* Every request should be documented with the result structure.





