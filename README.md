# nelua-sfml
SFML binding for the Nelua language. This uses Nelua's record methods, instead of the standard C calling conventions.

This project is based on the existing [(C)SFML](https://github.com/Rabios/nelua-fun/tree/main/csfml) version.

## Differences
* Record Methods and funtions instead of vanilla functions taking pointers etc
* Namespaced within `sfml` and other relevant namespaces
* Snake case instead of camel case
* Removed prefix from enum values, since they are namespaced