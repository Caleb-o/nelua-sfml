# System

## Types
* [Time](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1Time.php)
* [Clock](https://www.sfml-dev.org/documentation/2.5.1/classsf_1_1Clock.php)

## Functions

### Time

`zero() : sfml.Time`
```lua
local t = sfml.Time.zero()
```

### Clock

`create() : sfml.Clock`
```lua
local clock = sfml.Clock.create()
```

## Methods

### Time

`as_seconds(self) : float32`
```lua
local seconds = t:as_seconds()
```

`as_milliseconds(self) : sfml.Int32`
```lua
local ms = t:as_milliseconds()
```

`as_microseconds(self) : sfml.Int32`
```lua
local micro = t:as_microseconds()
```

### Clock

`copy(self) : *sfml.Clock`
```lua
local clock = sfml.Clock.create()
local clock2 = clock:copy()
```

`destroy(self) : void`
```lua
clock:destroy()
```