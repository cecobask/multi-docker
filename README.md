# multi-docker

A repository that contains a simple application that I completed while learning Docker and Kubernetes on a Udemy course. It is 
available at [Docker and Kubernetes: The Complete Guide](https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/).

This is a multicontainer application and its purpose is to be a Fibonacci calculator. It runs on a Nginx server, uses React for
the frontend and Express for the backend API. All calculated values get stored in a Postgres database and it uses Redis for the
logs. A worker process watches Redis for new indexes and calculates the Fibonacci value.

Certificate of completion: [CLICK HERE](https://www.udemy.com/certificate/UC-W074JFI5/)
