# nelua-sfml
CSFML 2.5.1 binding for the Nelua language. This uses Nelua's record methods, instead of the standard C calling conventions.

**Note:** This project is based on the existing [CSFML](https://github.com/Rabios/nelua-fun/tree/main/csfml) library written in Nelua.

## Differences
* Record Methods and functions instead of vanilla functions taking pointers etc
* Namespaced within `sfml` and other relevant namespaces
* Methods/Functions use snake_case instead of camelCase
* Removed prefix from enum values, since they are namespaced

## Requirements
* CSFML 2.5.1
* Nelua - Currently tested with Nelua 0.2.0-dev

**Note:** If you're on windows, you will need to add the include and lib folders and link against the libraries. 

**Note 2:** Since it binds everything, it will require all the libs and dlls. You can do this by passing cflags to nelua `--cflags="-L lib -I include -static"`

## Documentation
Since it is a binding to CSFML, you can use: the [SFML website](https://www.sfml-dev.org/learn.php) or the [CSFML github](https://github.com/SFML/CSFML) to learn more. There is an auto generated doc [here](https://github.com/Caleb-o/nelua-sfml/blob/main/docs/sfml.nelua).

## Examples
* [Render Window](https://github.com/Caleb-o/nelua-sfml/blob/main/examples/render_window.nelua)
* [Sprite Drawing](https://github.com/Caleb-o/nelua-sfml/blob/main/examples/sprite.nelua)
* [TCP Client](https://github.com/Caleb-o/nelua-sfml/blob/main/examples/tcp_client.nelua)
* [TCP Server](https://github.com/Caleb-o/nelua-sfml/blob/main/examples/tcp_server.nelua)
* [Conway's Game of Life](https://github.com/Caleb-o/nelua-sfml/blob/main/examples/game_of_life.nelua)