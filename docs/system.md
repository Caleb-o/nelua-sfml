# System

## Types
* [Time](#time) - [Doc](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1Time.php)
* [Clock](#clock) - [Doc](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1Clock.php)
* [InputStream Doc](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1InputStream.php)
	* `InputStreamReadFunc`
	* `InputStreamSeekFunc`
	* `InputStreamTellFunc`
	* `InputStreamGetSizeFunc`
* [Mutex](#mutex) - [Doc](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1Mutex.php)
* [Thread](#thread) - [Doc](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1Thread.php)


## Functions


### Time

`zero() : sfml.Time`
```lua
local t = sfml.Time.zero()
```

`sleep(duration: sfml.Time) : void`
```lua
sfml.Time.sleep(sfml.Time.zero)
```

`as_seconds(self: sfml.Time) : float32`
```lua
local seconds = t:as_seconds()
```

`as_milliseconds(self: sfml.Time) : sfml.Int32`
```lua
local ms = t:as_milliseconds()
```

`as_microseconds(self: sfml.Time) : sfml.Int32`
```lua
local micro = t:as_microseconds()
```

[Back to Top](#system)


### Clock

`create() : sfml.Clock`
```lua
local clock = sfml.Clock.create()
```

`copy(self: *sfml.Clock <const>) : *sfml.Clock`
```lua
local clock = sfml.Clock.create()
local clock2 = clock:copy()
```

`destroy(self: *sfml.Clock) : void`
```lua
clock:destroy()
```

`get_elapsed_time(self: *sfml.Clock <const>) : sfml.Time`
```lua
local elapsed = clock:get_elapsed_time()
```

`restart(self: *sfml.Clock) : sfml.Time`
```lua
local time = clock:restart()
```

[Back to Top](#system)


### Mutex

`create() : *sfml.Mutex`
```lua
local mutex = sfml.Mutex.create()
```

`destroy(self: *sfml.Mutex) : void`
```lua
mutex:destroy()
```

`lock(self: *sfml.Mutex) : void`
```lua
mutex:lock()
```

`unlock(self: *sfml.Mutex) : void`
```lua
mutex:unlock()
```

[Back to Top](#system)


### Threads

`create(f: function(pointer): void, userdata: pointer) : *sfml.Thread`

`destroy(self: *sfml.Thread) : void`
```lua
thread:destroy()
```

`launch(self: *sfml.Thread) : void`
```lua
thread:launch()
```

`wait(self: *sfml.Thread) : void`
```lua
thread:wait()
```

`terminate(self: *sfml.Thread) : void`
```lua
thread:terminate()
```

[Back to Top](#system)