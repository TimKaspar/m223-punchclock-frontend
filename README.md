# Backend

##Purpose
The backend serves as a interface between the frontend and the database server and provides the functionality for adding/deleting/updating/reading data from the server

## Installation
Follow these steps to start the application
1. Install OpenJDK 11 or higher and have the JAVA_HOME variable set 
2. Install Apache Maven 3.8.1 or higher

## Run the backend application
1. Navigate to the root Directory of the Project
`cd m223-helloworld-quarkus/`
2. Start the Application with 
```shell script
./mvnw compile quarkus:dev
```
<br/>

_If the command mentioned above does not work try to run the command without the "./"_

### Useful services:

Swagger API: http://localhost:8080/q/swagger-ui/

H2 Console: http://localhost:8080/h2/ <br/>
JDBC URL: jdbc:h2:mem:punchclock <br/>
User Name: zli <br/>
Password: zli

<br/>
<br/>
<br/>

## JPQL
The JPQL query with `HAVING` is located in _ExpenseService.getExpensesOver50()_ and is designed to return all Expenses with an amount that is greater than 50.

## Script for example data
At start a script is run which inserts example data into the database <br/>
The data is as follows:

<br/>

### category:
| id | title |
| 1 | 'Admin' |
| 2 | 'Projekte' |
| 3 | 'IT-Support' |

<br/>

### entry:
| id | checkIn | checkOut | category_id |
| 1 | '2021-09-30T07:16:14.807Z' | '2021-10-30T07:16:14.807Z' | 1 |
| 2 | '2011-08-12T20:17:46.384Z' | '2011-09-11T20:17:46.384Z' | 2 |
| 3 | '1989-03-30T07:16:14.807Z' | '1989-04-30T07:16:14.807Z' | 3 |
| 4 | '2031-03-17T20:17:46.384Z' | '2001-02-13T20:17:46.384Z' | 2 |

<br/>

### absence:
| id | end | start |
| 1 | '2021-09-30T07:16:14.807Z' | '2021-10-30T07:16:14.807Z' |
| 2 | '2011-08-12T20:17:46.384Z' | '2011-09-11T20:17:46.384Z' |
| 3 | '1989-03-30T07:16:14.807Z' | '1989-04-30T07:16:14.807Z' |
| 4 | '2031-03-17T20:17:46.384Z' | '2001-02-13T20:17:46.384Z' |

<br/>

### expense:
| id | amount | receipt |
| 1 | 67.50 | 'Vapiano-SihlCity' |
| 2 | 69.25 | 'ArenaCinemas-SihlCity' |
| 3 | 23.00 | 'BurgerKing-HauptBanhofZürich' |
| 4 | 11.50 | 'Coop-SihlCity' |
| 5 | 356.90 | 'GameStop-SihlCity'  |


# Frontend (Flutter)
## Purpose
The Flutter frontend serves as a interface for the backend and as a way to create/edit/view/delete the entities of the database.
The Flutter Application has only been tested on web but since the Flutter framework also works on IOS, Android and Windows the adjustments needed to get it working on additional operating systemns should not be too big.

## Install Flutter
Follow this guide to install Flutter: 
[Flutter-Install](https://flutter.dev/docs/get-started/install)<br/>

if not already on Stable, switch to Flutter Channel Stable<br/>
```shell script
    flutter channel stable
```
<br/>

Download FLutter **_2.5.1_** from the official Flutter releases page: [Flutter releases 2.5.1](https://flutter.dev/docs/development/tools/sdk/releases)<br/>

**Some useful commands:**
| command | description |
| ------ | ------ |
| `flutter help` | shows a list of commands Flutter supports |
| `flutter doctor` | check if you have installed Flutter correctly and if not tells you what to fix |
| `flutter --version` | gives you information about you flutter installation (Flutter verison, Flutter channel, Dart version...) |
| `flutter channel <CHANNEL_NAME>` | list available channels or add the channel name to switch to the given channel |
| `flutter run <DART_FILE>` | run a flutter app |
| `where flutter dart` | displays the path to the local instance of flutter & dart (omit "dart" to only display th flutter path) |

## Build Flutter application in Web
**If you already have Chrome installed you should be able to start Flutter in web without any additional steps, so the steps below are some general Information.**
<br/>
<br/>
Follow this guide to setup your Flutter app for web: [Flutter-Build a web application](https://flutter.dev/docs/get-started/web)

**Some useful commands:**
| command | description |
| ------ | ------ |
| `flutter create <PROJECT_NAME>` | to create a new project that includes web support |
| `flutter create .` | to add web support to an existing project |
| `flutter build web` | build the project for web |
| `flutter run` | to run a flutter project in web run the flutter app like normal and select a browser as a device to launch the app on |

## Run Project
**To run the project:**

1. 
```shell script
    flutter run
```
2. proceed select the wanted device and the application will start
