# GraphQL Generator
The goal of this repository is to demonstrate how to integrate graphQL inside an iOS project using cocoapods, making the equivalent with Carthage or SPM should be easy.

## Installation 
The simple way to start is to clone the repository and install the apollo dependencies. 

    git clone https://github.com/barrault01/poc-graphQL-generator
    cd poc-graphQL-generator
    npm install

## Run the example server (optional)
This repository comes with a submodule that contains a [graphQL server](https://github.com/apollographql/starwars-server/).  

    git submodule init
    git submodule update --recursive
    cd starwars-server/
    npm install
    npm start

This will start the graphQL server, it should be available [here](http://localhost:8080/graphql).


## Using the script to initialize the library

### 1) Download GraphQL schema
The first step to generate the iOS integration of Apollo is to download GraphQL schema of your api. For doing this just run this command: 

    npm run download

### 2) Create the queries
Before to generate the swift files is important to define the queries that will be used inside the app. 
So create ```.graphql``` files and put them inside the ```GraphQLQueries``` folder.

### 3) Create iOS files
    npm run ios
