# test-dec-2022

This is a simple Spring Boot application that prints "Hello World!" It demonstrates the usage of various technologies and features.

## Features

- **Hello World Endpoint**: The application exposes an endpoint `/hello` that returns the "Hello World!" message.

- **Testcontainers**: The application uses Testcontainers, a Java library for Spring, to create test databases quickly. It provides an efficient way to manage and interact with databases during the testing process.

- **Database Integration**: The application connects to a PostgreSQL database using Testcontainers. It demonstrates how to configure and establish a database connection within a Spring Boot application.

- **AWS Lambda Deployment**: The application can be deployed to AWS Lambda using Terraform. The provided Terraform script automates the deployment process and sets up the necessary AWS resources, including the Lambda function and associated configurations.

## Technologies Used

- **Java**: The application is developed using Java, a popular and widely used programming language. Java provides a robust and scalable platform for building enterprise-grade applications.

- **Spring Boot**: The application is built using the Spring Boot framework, which simplifies the development of Java applications by providing a convention-over-configuration approach. Spring Boot offers features like auto-configuration, dependency injection, and embedded containers, making it easy to create stand-alone, production-grade Spring applications.

- **Testcontainers**: The application utilizes the Testcontainers library to manage and provision test databases. Testcontainers provides a lightweight, disposable container for database testing, allowing developers to write reliable and isolated database tests.

- **PostgreSQL**: The application uses PostgreSQL, a powerful open-source relational database, for database connectivity. PostgreSQL offers robust features, high performance, and excellent compatibility with Spring Boot.

- **Terraform**: The application includes a Terraform script for deploying the Spring Boot application to AWS Lambda. Terraform provides infrastructure as code capabilities, enabling the automation of infrastructure provisioning and management.

## Prerequisites

To run and deploy the application, ensure you have the following prerequisites:

- Java Development Kit (JDK)
- Maven
- Docker
- AWS account with appropriate credentials
- Terraform CLI

## Getting Started

Follow these steps to get started with the application:

1. Clone the repository: <br>
   `git clone https://github.com/abhishekkumarXD/test-dec-2022.git`

2. Build the application using Maven: <br>
   `cd my-spring-boot-app` <br>
   `mvn clean package` <br>
3. Run the application locally: <br>
   `mvn spring-boot:run`

4. Access the application by visiting `http://localhost:8080/hello` in your web browser. You should see the "Hello World!" message.

## Contribution

Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
