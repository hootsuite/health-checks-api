# Health Checks API

- [Introduction](#introduction)
- [API Documentation](#api-documentation)
- [Implementations](#implementations)
- [Tools](#tools)
- [Monitoring and Alerting](#monitoring-and-alerting)
- [How To Contribute](#how-to-contribute)

#Introduction
The Health Checks API standardizes the way services and applications expose their status in a distributed application. We use this API to monitor individual instances in microservices and whole applications. The API allows each microservice or application to describe itself, its dependencies and connections in a distributed application graph.

As distributed applications grow, it becomes more and more complicated to understand and debug failures in the application. The Health Checks API helps to solve this by giving you the power to standardize your status checking regardless of the language and tools you use.

# API Documentation
We use API Blueprint to describe the Health Checks API. **[Read the documentation here](https://hootsuite.github.io/health-checks-api/)**

# Implementations
Below are implementations of the Health Checks API in the languages we use. Don't see your favourite language? Contribute back to the community by sharing your implementation. 
- [Go](https://github.com/hootsuite/healthchecks)
- [Node](https://github.com/Bauer-Xcel-Media/node-healthchecks-api)
- "Your favourite language" - [contribute](#how-to-contribute)

### Coming Soon
- [Scala](https://github.com/hootsuite/health-checks-api/issues/1)
- "Your favourite language" - [contribute](#how-to-contribute)

# Tools
An API is only the start. We have developed some tools that use the Health Checks API that help make our lives easier.

### Microservice Graph Explorer
Navigate to all of the microservices in your application in real time using the real application connections. [The Microservice Graph Explorer](https://github.com/hootsuite/microservice-graph-explorer) gives you the ability to monitor the status of your microservices as well and provides dashboard and debugging information that can help you discover the source of outages in no time. It also works as a great learning / exploration tool for the devops in your organization to understand all the different dependencies of your application. 
[![Microservice Graph Explorer demo video](/img/microservice-graph-explorer.png?raw=true "Microservice Graph Explorer Dashboard")](https://youtu.be/JAoSkddOIC8?t=25m29s)
[Watch demo video](https://youtu.be/JAoSkddOIC8?t=25m29s)

The Microservice Graph Explorer is now open source at [https://github.com/hootsuite/microservice-graph-explorer](https://github.com/hootsuite/microservice-graph-explorer)

### Microservice Dependencies
Automate architecture diagrams and documentation using the Health Checks API and the data it contains.
![Generated Dependency Diagram](/img/microservice-dependencies.png?raw=true "Generated Dependency Diagram")

### "Your tool" 
Have you written a great tool that uses the Health Checks API? [We happily accept contributions.](#how-to-contribute)

# Monitoring and Alerting
To keep monitoring and alerting simple, we believe that monitoring the `/status/aggregate` endpoint is all you will need to know the health of your microservice or application. You can use any of your existing monitoring tools to do this. We use [Sensu](https://sensuapp.org/) for server monitoring and have configured Sensu to use the Health Checks API `/status/aggregate` endpoint to alert when a microservice or application is not in a healthy state. For more info on the `/status/aggregate` endpoint, see the [API docs]().

# How To Contribute
Contribute by submitting a PR and a bug report in GitHub.

# Maintainers
- :octocat: [Adam Arsenault](https://github.com/HootAdam) - [@Adam_Arsenault](https://twitter.com/Adam_Arsenault)
- :octocat: [Edd Steel](https://github.com/eddsteel) - [@eddsteel](https://twitter.com/eddsteel)
- :octocat: [Jim Riecken](https://github.com/jriecken) - [@jimriecken](https://twitter.com/jimriecken)
- :octocat: [Brandon McRae](https://github.com/brandon-mcrae-hs) - [@HootBrandon](https://twitter.com/HootBrandon)
- :octocat: [Mike Sample](https://github.com/michael-sample-hs) - [@mikesample](https://twitter.com/mikesample)
- :octocat: [Sim Brar](https://github.com/simba11) - [@sim_brar](https://twitter.com/sim_brar)
