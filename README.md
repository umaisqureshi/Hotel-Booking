# Hotel booking

A Flutter project with Clean Architecture using Flutter Bloc State Management with 
combination of Repository pattern.

# Commands
- Test : flutter test test
- Run : flutter run

# Flutter Bootstrap Architecture

## Basic

This is the whole idea of application's architecture.
This architecture is base on clean architecture by separating each layers
into seperated `flutter packages`. In this way different units
in different layers will interact with each other in the most abstract way
and layers are not aware about what is happening inside other layers. By separating layers and units, we will achieve
more `Separation of Concern`.

![architecture](docs/imgs/architecture.png)

### Separating Packages

The most important things in multi package project is, we try to make the most abstract between layers.
So when we want to make a class or unit visible to other modules, we have to export the class. e.g : we want to
export `HotelBloc` inside the `presentation` layer.
inside `presentation.dart` we have to export it:

```
export 'src/modules/hotels/bloc/hotels_bloc.dart'
```

### Naming Convention

base on  [effective dart](https://dart.dev/guides/language/effective-dart/style)

- name types using UpperCamelCase :
  `class SliderMenu { ... }
  `
- name extensions using UpperCamelCase : `extension ContextExtensions on BuildContext`
- name packages, directories, and source files using
  lowercase_with_underscores : `data`, `app_dependency_component.dart`,`forgot_password`
- name import prefixes using lowercase_with_underscores : `import package:domain/domain.dart as business_logic`
- using lowerCamelCase for constant names : `const defaultTimeout = 1000;`
- using _, __, etc. for unused callback parameters
- **DO NOT** use `impl` postfix for implementation of abstract class. If it's subtype of that class it should define why
  it is created. e.g: we have `repository` in domain and when we want to implement it in data layer, it should name
  as `DataRepository` like `HotelsRepository`
-
**note** by using some libraries to create bloc, maybe naming would have different style. conventions below are for
bloc
- `bloc` files name should **not** contain two bloc : `hotels_bloc_bloc`
- `bloc events` file name should **not** contain bloc word : `hotels_bloc_event`
- `bloc states` files name should **not** contain bloc word : `hotels_bloc_state`

### Presentation Module

This module will interact with **User** and will receive any events from user. e.g : Updating text by TextFields,
Clicking button , etc...

Ui logics are located here. e.g: Password length checking will check in this module.

The architectural pattern used for this `bootstrap project` is `BLoC`, but
it can be replaced by any architectural pattern that may be suitable for new project in future that flutter team want to
use.


### Domain Module

The main idea of **Domain** module is handling `Business rules` and connect user interactions with logic of
application.
This module should be as pure as possible and should have the least dependency to any implementation or libraries.
This module consist of three different types of use cases types:
- SupplierUseCase [return Entity]
- SingleUseCase [take request data and return Entity]
- ConsumerUseCase [take only request data]

we are able to use them according to our requirement or behaviour we need from our use case. 

### Data Module

In this layer we should handle data and data flow of application. managing `data sources` is responsibility of this
layer and also we have `repositories` inside that module to make connection or switch connection between remote or 
local source according to our requirement.

#### Remote Module

Remote module is one of submodule of data module and in this layer we will call the backend of application or any other
api services.


#### Local Module

Persistence layer of application and database and related files are in this module.
Hive is used for database management locally.


## Data Flow

![data flow](docs/imgs/data_flow.png)

- Any interaction of user with application is known as an `Event` that will be sent to `Bloc`
    - **Notes** :
        - If architectural pattern of application changed from `BLoC` to any other architectural patterns, starting
          of `data flow` should be base on the chosen pattern.
        - Any event can carry a `payload` to the `bloc`, but it is **Optional**
        - Each data coming from widget will be stored in an `immutable` object calling `BlocData` class. (freezed class)
        - after validating data, it will be sent to the use case
        - Use case will call the facade(s) or repository(s) to collect the data.
        - Business rules will apply to the data in use cases
        - Repository will request to data sources.
        - Data sources return `DTO` and `DTO` will map to `Entity` by mappers inside the repository.
        - The `Entity` will be passed to the `Bloc` with `UseCaseResult`
        - `UseCaseResult` contains 3 callback methods:
            - `onSuccess` : will get the data as parameter
            - `onError`: will get `throwable` as parameter
            - `onFinished` : trigger when process finishes.
        - Sometimes when we want to show the data to the user, we have to make some changes. In this situation we make
          some classes called `model` to be passed to widget

## Routing and Dependency Injection

![routing](docs/imgs/routing.png)

Each screen is dependent to a `Bloc`. Each bloc has its own dependencies. Sometimes dependencies are simple classes
e.g: `mapper`. These type of dependencies don't need to be injected to the dependent class.
But sometimes the dependency, itself has some dependencies too and creating the class from scratch is hard or
impossible.
In this Situation we would use `Dependency injection`.


- After providing bloc and adding it to dependency graph, we are able to create the screen.

- Each screen has its own `provider`:

```dart
@RoutePage()
class HotelsScreenProvider extends StatefulWidget {
  const HotelsScreenProvider({
    super.key,
  });

  @override
  State<HotelsScreenProvider> createState() => _HotelsScreenProviderState();
}

class _HotelsScreenProviderState extends State<HotelsScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return const HotelsScreen();
  }
}
```

- After creating provider, the provider should be injected to `AppRouter`
- Inside the route factory base on path, the provider should be selected
- The provider will create the `Widget`


# Test 

Test folder consist of both unit [bloc test] and widget test.

