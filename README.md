# Kestra Orchestration

This repository contains the local setup for Kestra projects. Kestra is a powerful orchestration and scheduling platform that helps manage and automate workflows.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)


## Introduction
Kestra Orchestration provides tools to manage and automate workflows on a local environment. It is designed to be easy to set up and use, making it ideal for development and testing purposes.

## Features
- Easy setup and configuration
- Supports multiple workflows
- Integration with various data sources and sinks
- Robust error handling and retry mechanisms
- Extensible with custom plugins

## Requirements
- Docker
- Java 11+
- Gradle

## Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/Mamiololo01/Kestra-orchestration.git
   cd Kestra-orchestration
./gradlew build
docker-compose up -d

./gradlew kestra:server

./gradlew kestra:submit -Pfile=path/to/your/workflow.yaml

