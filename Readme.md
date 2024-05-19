<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center">POLLS_VIEWER</h1>
</p>
<p align="center">
    <em>Empowering polls with insightful interactions!</em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/commit-activity/m/sharanreddy99/polls_viewer" alt="last-commit">
	<img src="https://img.shields.io/github/created-at/sharanreddy99/polls_viewer" alt="created_at">
   <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/sharanreddy99/polls_viewer">
   <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/sharanreddy99/polls_viewer">
   <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/sharanreddy99/polls_viewer">

</p>
<p align="center">
	<!-- default option, no dependency badges. -->
</p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [ Overview](#-overview)
- [ Features](#-features)
- [ Repository Structure](#-repository-structure)
- [ Modules](#-modules)
- [ Getting Started](#-getting-started)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
- [ Project Roadmap](#-project-roadmap)
- [ Contributing](#-contributing)
</details>
<hr>

##  Overview

Polls Viewer is a Django-based application that enables users to view, interact with, and participate in polls pertaining to machine learning topics. The project enhances user engagement by providing a visually appealing interface for browsing, submitting answers, and visualizing poll results. It leverages containerization through Docker for seamless setup and deployment, ensuring a smooth development workflow. With features such as dynamic data generation, pagination, and responsive layout, Polls Viewer offers a comprehensive solution for managing and engaging with poll-related content.

---

##  Features

|    |   Feature         | Description |
|----|-------------------|---------------------------------------------------------------|
| ⚙️  | **Architecture**  | Django-based project using Docker for containerization. Utilizes MySQL database for data storage. Structured with models, views, templates, and migrations for web application functionality. Configuration managed through Django settings and URLs routing. |
| 🔩 | **Code Quality**  | Codebase follows PEP 8 style guide. Includes utility functions for safe string operations. Migrations maintain data consistency. Appropriate separation of concerns with models, views, and templates. |
| 📄 | **Documentation** | Well-documented with initial data model definitions, migrations, views functions, and utility operations. Detailed README explaining project setup and usage. Limited inline comments within codebase. |
| 🔌 | **Integrations**  | Integrates Django framework with MySQL database using mysqlclient. Dependencies include asgiref for web sockets and autopep8 for code formatting. Dockerfile and docker-compose.yml for containerized environment setup. |
| 🧩 | **Modularity**    | Good modularity with separate apps for polls and site configurations. Models encapsulate data structures, views handle business logic, and templates render user interfaces. Easily extendable and reusable components. |
| 🧪 | **Testing**       | Tests cover functionality like timezone calculations and data generation. Utilizes Django testing framework for unit and integration testing. Ensures correctness of models, views, and utility functions. |
| ⚡️  | **Performance**   | Efficient data retrieval with MySQL database. Dynamic data generation and data visualization enhance user experience. Optimized queries for poll results and summaries. Django framework provides fast response times for user interactions. |
| 🛡️ | **Security**      | Secret key management in Django settings for data protection. Database access control with user creation and privilege granting in initdb.sql. SQL injection prevention with safe character escaping. |
| 📦 | **Dependencies**  | Key dependencies include Django for web framework, mysqlclient for MySQL database connection, and asgiref for asynchronous support. Other dependencies for code formatting and Docker containerization. |

---

##  Repository Structure

```sh
└── polls_viewer/
    ├── Dockerfile
    ├── Readme.md
    ├── docker-compose.yml
    └── mysite
        ├── datagenerator.py
        ├── db.sqlite3
        ├── dummydata.sql
        ├── initdb.sql
        ├── manage.py
        ├── mysite
        ├── polls
        ├── requirements.txt
        └── start.sh
```

---

##  Modules

<details closed><summary>.</summary>

| File                                                                                                   | Summary                                                                                                                                                                                                                                                                   |
| ---                                                                                                    | ---                                                                                                                                                                                                                                                                       |
| [Dockerfile](https://github.com/sharanreddy99/polls_viewer.git/blob/master/Dockerfile)                 | Builds a Python environment for the Django project in the polls_viewer repository container. Includes necessary dependencies, sets up a virtual environment, and defines the start command.                                                                               |
| [docker-compose.yml](https://github.com/sharanreddy99/polls_viewer.git/blob/master/docker-compose.yml) | Defines services for MySQL database and Django app in a containerized environment. Configures database settings and links Django app to the database. Exposes app on specified port. Optimizes development workflow by automating environment setup using Docker Compose. |

</details>

<details closed><summary>mysite</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                      |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                          |
| [requirements.txt](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/requirements.txt) | Lists required Python packages for the Django project in the requirements.txt file. Essential for orchestrating dependencies and ensuring smooth integration with the project's architecture.                                                                |
| [dummydata.sql](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/dummydata.sql)       | Populate the database with dummy poll data related to machine learning questions and choices for the polls viewer application.                                                                                                                               |
| [start.sh](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/start.sh)                 | Initiates MySQL connection, migrates database schema, and runs a Django server. Executes data generation if allowed. Monitors MySQL availability before proceeding.                                                                                          |
| [db.sqlite3](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/db.sqlite3)             | Manages the database for the polling viewer web app, storing essential data for user interactions. Key component in persisting and retrieving user-generated content within the mysite directory of the repository.                                          |
| [datagenerator.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/datagenerator.py) | Generates, inserts, displays data using database creds. Deletes all existing data and executes SQL files. Flexible input options available via command-line arguments for various operations. Dynamic data generation for polls and choices in the database. |
| [initdb.sql](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/initdb.sql)             | Sets up MySQL database for the polls application by creating a user, granting privileges, flushing privileges, and creating the pollsdb database.                                                                                                            |
| [manage.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/manage.py)               | Runs Django administrative tasks by setting environment variables and executing management commands. Central to Django project setup and management, ensuring proper functioning within the broader repository structure.                                    |

</details>

<details closed><summary>mysite.polls</summary>

| File                                                                                            | Summary                                                                                                                                                                                                                                            |
| ---                                                                                             | ---                                                                                                                                                                                                                                                |
| [tests.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/tests.py) | Ensures was_published_recently() returns correct values for future, old, and recent questions using timezone calculations. Maintains data integrity for poll questions within the Django app structure.                                            |
| [urls.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/urls.py)   | Defines URL patterns for the polls app views like index, summary, detail, results, and vote within the Django project's architecture.                                                                                                              |
| [views.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/views.py) | Retrieves, filters, and paginates questions based on search criteria.-Retrieves details and voting results for a specific question.-Records user votes and updates the database.-Generates a summary of questions, votes, and most voted question. |
| [apps.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/apps.py)   | Defines the configuration for the polls app, specifying default database settings. Organizes and manages the polls app functionality within the Django project in the parent repository.                                                           |
| [admin.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/admin.py) | Registers Question and Choice models in Django admin panel. Integrates with the parent repositorys Django project to enable management of poll-related data.                                                                                       |

</details>

<details closed><summary>mysite.polls.models</summary>

| File                                                                                                   | Summary                                                                                                                                                                                                                                      |
| ---                                                                                                    | ---                                                                                                                                                                                                                                          |
| [polls.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/models/polls.py) | Defines database models for a poll app. Questions have text and publication dates with a recent-publishing check. Choices have text, vote count, and a foreign key to questions. Enables data storage and retrieval in the Django framework. |

</details>

<details closed><summary>mysite.polls.migrations</summary>

| File                                                                                                                                                     | Summary                                                                                                                                                                                                                                                 |
| ---                                                                                                                                                      | ---                                                                                                                                                                                                                                                     |
| [0002_alter_question_pub_date.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/migrations/0002_alter_question_pub_date.py) | Updates pub date field to DateField in the Django polls model. Maintains data consistency for questions' publishing dates. A critical migration for ensuring accurate question timestamps in the polls viewer application.                              |
| [0001_initial.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/migrations/0001_initial.py)                                 | Defines initial data model structure for the polls app, creating Question and Choice models with their respective fields and relationships. Sets up a foundation for managing and displaying poll questions with choices in the Django web application. |

</details>

<details closed><summary>mysite.polls.templates.polls</summary>

| File                                                                                                                    | Summary                                                                                                                                                                                                                                                         |
| ---                                                                                                                     | ---                                                                                                                                                                                                                                                             |
| [detail.html](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/templates/polls/detail.html)   | Defines user interface for submitting poll answers with question details, options, and error handling. Renders content within the base HTML structure, enabling interactive voting functionality.                                                               |
| [base.html](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/templates/polls/base.html)       | Creates a responsive layout for Polls Viewer, integrating Bootstrap 5 components and jQuery scripts. Displays a navigation bar, search functionality, and interactive charts using Chart.js. Enhances user experience with dynamic content loading and styling. |
| [results.html](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/templates/polls/results.html) | Renders a dynamic chart display with user interaction options. Displays poll results visually, allows for voting, and handles the frontend graph rendering logic. Enhances user engagement within the polls Viewer repositorys web application.                 |
| [index.html](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/templates/polls/index.html)     | Renders paginated polls with links to answer and view results-Handles case where no polls are available-Dynamically updates pagination based on total poll count-Implements JavaScript for pagination functionality                                             |
| [summary.html](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/templates/polls/summary.html) | Generates dynamic summary data visualization for poll questions and votes, with a pie chart displaying distribution. Displays total questions, votes, and the most voted question.                                                                              |

</details>

<details closed><summary>mysite.polls.helpers</summary>

| File                                                                                                    | Summary                                                                                                                                                                                               |
| ---                                                                                                     | ---                                                                                                                                                                                                   |
| [utils.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/polls/helpers/utils.py) | Enables integer conversion from strings with a default value and ensures safe escaping of characters within a string. Crucial for cleaning and processing user inputs in the Polls Viewer repository. |

</details>

<details closed><summary>mysite.mysite</summary>

| File                                                                                                   | Summary                                                                                                                                                                                                                                                           |
| ---                                                                                                    | ---                                                                                                                                                                                                                                                               |
| [wsgi.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/mysite/wsgi.py)         | Exposes the WSGI callable for the mysite project, enabling deployment with Django. Sets the DJANGO_SETTINGS_MODULE and initializes the application using get_wsgi_application.                                                                                    |
| [urls.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/mysite/urls.py)         | Routes URLs to views using Django framework. Configures urlpatterns for various views, including admin panel, polls app, and a redirect to the polls page. Crucial for defining web page navigation within the repository.                                        |
| [settings.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/mysite/settings.py) | Defines Django settings for the mysite project, including database configuration and middleware setup. Manages secret key, debug mode, and internationalization settings. Ensures secure and efficient web application functionality within the Django framework. |
| [asgi.py](https://github.com/sharanreddy99/polls_viewer.git/blob/master/mysite/mysite/asgi.py)         | Exports an ASGI callable as application for the mysite project. Configures Django settings and retrieves ASGI application. Facilitates Django deployment with ASGI protocol support.                                                                              |

</details>

---

##  Getting Started

###  Installation

<h4>From <code>source</code></h4>

> 1. Clone the polls_viewer repository:
>
> ```console
> $ git clone https://github.com/sharanreddy99/polls_viewer.git
> ```
>
> 2. Change to the project directory:
> ```console
> $ cd polls_viewer
> ```
>
> 3. Run the project using docker compose
> ```console
> $ docker compose up
> ```

###  Usage


> Access the application in the browser at http://localhost

---


##  Contributing

Contributions are welcome! Here are several ways you can contribute:

- **[Report Issues](https://github.com/sharanreddy99/polls_viewer.git/issues)**: Submit bugs found or log feature requests for the `polls_viewer` project.
- **[Submit Pull Requests](https://github.com/sharanreddy99/polls_viewer.git/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.
- **[Join the Discussions](https://github.com/sharanreddy99/polls_viewer.git/discussions)**: Share your insights, provide feedback, or ask questions.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/sharanreddy99/polls_viewer.git
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to github**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="center">
   <a href="https://github.com/sharanreddy99/polls_viewer.git/graphs/contributors">
      <img src="https://contrib.rocks/image?repo=sharanreddy99/polls_viewer">
   </a>
</p>
</details>

---
