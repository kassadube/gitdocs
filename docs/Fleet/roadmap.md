# Fleet Roadmap

## Client Infrastructure

* Building client side  delopment envirment with the tools:
     * Node.js  
        create a node.js project that will be using as a development server to build and test the fleet client.  
     * webpack configuration dev/prod.  
        webpack is amodule bundler. webpack takes modules with dependencies and generates static assets representing those modules. As websites are evolving into web apps they are relying more and more on JavaScipt.
     * List of packages that will be used in the project (dependencies / devDependencies)  
     the packages are libraries that the site will be using (React, React-Redux, Bootstrap, etc..)


The outcome of these tasks should be :

*  Git repository in vsts.
* Readme file that explane how to clone the repository and use it.  
so every developer (new/old) could understand how to start using the app.
* document that explain all packages with the version in the time that installed.
* folder structure for the client side.

## Server

* Building server api (Asp.core / webapi).
* Mapping all api requests that is being used in the messages module.
* Produce all the maped requests for the client to use.  
 at the begining some of the requests might be as mock so the client will be able to test without being.
* Every request should be documented with the result structure.




