# Auxilio API

### An On Demand Service Provider
Auxilio is a web application that provides on demand services to those who need some form of assistance. Users have to submit a request, or petitio, to this API to have a service fulfilled.

## Links

### API URL
[Heroku Deployment](https://auxilio.herokuapp.com/)

### Client URL
[Deployment](https://pedrotavarez.com/auxilio/)

[Github Repo](https://github.com/RaindropAndWee/raindrop-client)

## Development Process
"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

## API End Points

### Authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`        | `users#signout`   |

### Users
| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/:id`  | `users#show`      |
| PATCH| `/users/:id`  | `users#update`    |

### Services
| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/services`    | `services#index`|
| GET  | `/services/:id`  | `services#show` |

### Assists
| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/services`    | `services#index`|
| GET  | `/services/:id`  | `services#show` |
| PATCH | `/services/:id`  | `services#update`|
| DELETE |`/services/:id`| `services#destroy` |

## API Guides
[Users](docs/user.md)
[Services](docs/service.md)
[Assists](docs/assist.md)

## Entity Relationship Diagram (ERD)
[ERD](http://res.cloudinary.com/ptavarez/image/upload/v1523635953/auxilio-erd.jpg)

## Technologies Used
- Ruby
  - A dynamic, open source programming language with a focus on simplicity and productivity.
  - This was how I wrote bascially every function I needed to make the backend run.
- Ruby on Rails
  - Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.
- SQL
    - SQL is a standard language for storing, manipulating and retrieving data in databases.
    - Luckily I did not have to do much with SQL since Rails took care of that for me.
- Heroku
  - Heroku is a cloud platform as a service (PaaS) supporting several programming languages that is used as a web application deployment model.
  - The best part is that it's free!

## Future Iterations
I plan on doing a lot with this app. To get it testing ready, I will need to build three different versions of auxilio: Client version, Auxer version, and Manager version. Although they have different needs, all three versions will work together to provide a unique experience for all three parties.

For this version, some things I would like to add is google maps and twilio. I feel like I will need these technologies to provide a nice user experience.

## Disclaimer
This API may be reset or altered at anytime. The future of this API may not align with the current state and therefore the state your client application expects. If you would like to maintain a version of this API in its current state for your future use, please fork and clone the repository and launch it on heroku.
