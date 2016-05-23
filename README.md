# 6fusion Collector Base Project

The following is the base structure for any 6fusion collector started from scratch:

```Root folder
├── app
│   ├── collectors
│   ├── connectors
│   ├── lib
│   ├── models
│   └── modules
├── config
├── docker
│   └── apps
│       └── k8scollector
├── kubernetes
└── lib
    └── tasks```

### Root folder
Include in this folder the Dockerfile, Gemfiles, the bash script that installs the yaml definition of the Kubernetes items,
the bash script that runs the collector in a regular basis (if it applies) and the README file of the collector.

### app/collectors
In this folder, you should place all the classes files that are in charge of collecting information for the infrastructure
from external resources, like APIs.

### app/connectors
Place in this folder all classes that interact with external resources for the only purpose of sending information that has
to be stored outside of the collector (e.g. the 6fusion On Premise API Connector).

### app/lib
Include in this folder all those classes whose methods are not shared between modules and run critical parts of the collector.
An example could be a class that sets configuration values for the collector.

### app/models
The cache db data models must be placed in this folder no matter the type of the db engine used.

### app/modules
Classes that have methods used throughout the collector must be included here. These modules usually only have shared methods
but not global constants or variables in the project. Modules that interact with external APIs should be included here.

### config
Files that contain global configuration values required to the collector must be placed here. Database configuration values and
global constants are examples of the kind of files that can be placed in this folder.

### docker
Include in this folder all docker resources that are required during the build process of the collector's image (like scripts).
NOTE: collector's Dockerfile must not be included here.

### kubernetes
Place in this folder all yaml files that contain the definition of all the kubernetes items required to run the collector.

### lib/tasks
The ruby scripts that execute the main flow of the collector or any other alternate task have to be placed in this folder. Think
of them as the rails rake tasks that are executed in a regular basis.