# nelua-sfml
SFML 2.5.1 binding for the Nelua language. This uses Nelua's record methods, instead of the standard C calling conventions.

**Note:** This project is based on the existing [(C)SFML](https://github.com/Rabios/nelua-fun/tree/main/csfml) library written in Nelua.

## Differences
* Record Methods and functions instead of vanilla functions taking pointers etc
* Namespaced within `sfml` and other relevant namespaces
* Methods/Functions use snake_case instead of camelCase
* Removed prefix from enum values, since they are namespaced

## Requirements
* CSFML 2.5.1
* Nelua (Currently tested with latest main)