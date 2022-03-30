# SFML
This is a binding of the CSFML library
### sfml

```lua
global sfml = @record{}
```



### sfml.VERSION_MAJOR

```lua
global sfml.VERSION_MAJOR: cint
```

Global Information

### sfml.VERSION_MINOR

```lua
global sfml.VERSION_MINOR: cint
```



### sfml.VERSION_PATCH

```lua
global sfml.VERSION_PATCH: cint
```



### sfml.SYSTEM_WINDOWS

```lua
global sfml.SYSTEM_WINDOWS: cint
```



### sfml.SYSTEM_LINUX

```lua
global sfml.SYSTEM_LINUX: cint
```



### sfml.SYSTEM_MACOS

```lua
global sfml.SYSTEM_MACOS: cint
```



### sfml.SYSTEM_FREEBSD

```lua
global sfml.SYSTEM_FREEBSD: cint
```



### sfml.Bool

```lua
global sfml.Bool: type = @boolean
```

Types

### sfml.False

```lua
global sfml.False: boolean
```



### sfml.True

```lua
global sfml.True: boolean
```



### sfml.Int8

```lua
global sfml.Int8: type = @int8
```



### sfml.Uint8

```lua
global sfml.Uint8: type = @byte
```



### sfml.Int16

```lua
global sfml.Int16: type = @int16
```



### sfml.Uint16

```lua
global sfml.Uint16: type = @uint16
```



### sfml.Int32

```lua
global sfml.Int32: type = @int32
```



### sfml.Uint32

```lua
global sfml.Uint32: type = @uint32
```



### sfml.Int64

```lua
global sfml.Int64: type = @int64
```



### sfml.Uint64

```lua
global sfml.Uint64: type = @uint64
```



### sfml.Time

```lua
global sfml.Time: type = @record {
  microseconds: sfml.Int64
}
```

Time

### sfml.Time.zero

```lua
global sfml.Time.zero: sfml.Time
```



### sfml.Time.as_seconds

```lua
function sfml.Time.as_seconds(self: sfml.Time): float32
```



### sfml.Time.as_milliseconds

```lua
function sfml.Time.as_milliseconds(self: sfml.Time): sfml.Int32
```



### sfml.Time.as_microseconds

```lua
function sfml.Time.as_microseconds(self: sfml.Time): sfml.Int64
```



### sfml.Time.seconds

```lua
function sfml.Time.seconds(amount: float32): sfml.Time
```



### sfml.Time.milliseconds

```lua
function sfml.Time.milliseconds(amount: sfml.Int32): sfml.Time
```



### sfml.Time.microseconds

```lua
function sfml.Time.microseconds(amount: sfml.Int64): sfml.Time
```



### sfml.Clock

```lua
global sfml.Clock: type = @record {}
```

Clock

### sfml.Clock.create

```lua
function sfml.Clock.create(): *sfml.Clock
```



### sfml.Clock.copy

```lua
function sfml.Clock.copy(self: *sfml.Clock <const>): *sfml.Clock
```



### sfml.Clock.destroy

```lua
function sfml.Clock.destroy(self: *sfml.Clock): void
```



### sfml.Clock.get_elapsed_time

```lua
function sfml.Clock.get_elapsed_time(self: *sfml.Clock <const>): sfml.Time
```



### sfml.Clock.restart

```lua
function sfml.Clock.restart(self: *sfml.Clock): sfml.Time
```



### sfml.InputStreamReadFunc

```lua
global sfml.InputStreamReadFunc: type = @function(pointer, sfml.Int64, pointer): sfml.Int64
```

InputStream

### sfml.InputStreamSeekFunc

```lua
global sfml.InputStreamSeekFunc: type = @function(sfml.Int64, pointer): sfml.Int64
```



### sfml.InputStreamTellFunc

```lua
global sfml.InputStreamTellFunc: type = @function(pointer): sfml.Int64
```



### sfml.InputStreamGetSizeFunc

```lua
global sfml.InputStreamGetSizeFunc: type = @function(pointer): sfml.Int64
```



### sfml.InputStream

```lua
global sfml.InputStream: type = @record {
  read: sfml.InputStreamReadFunc,
  seek: sfml.InputStreamSeekFunc,
  tell: sfml.InputStreamTellFunc,
  getSize: sfml.InputStreamGetSizeFunc,
  userData: pointer
}
```



### sfml.Mutex

```lua
global sfml.Mutex: type = @record {}
```

Mutex

### sfml.Mutex.create

```lua
function sfml.Mutex.create(): *sfml.Mutex
```



### sfml.Mutex.destroy

```lua
function sfml.Mutex.destroy(self: *sfml.Mutex): void
```



### sfml.Mutex.lock

```lua
function sfml.Mutex.lock(self: *sfml.Mutex): void
```



### sfml.Mutex.unlock

```lua
function sfml.Mutex.unlock(self: *sfml.Mutex): void
```



### sfml.Time.sleep

```lua
function sfml.Time.sleep(duration: sfml.Time): void
```



### sfml.Thread

```lua
global sfml.Thread: type = @record {}
```

Thread

### sfml.Thread.create

```lua
function sfml.Thread.create(f: function(pointer): void, userdata: pointer): *sfml.Thread
```



### sfml.Thread.destroy

```lua
function sfml.Thread.destroy(self: *sfml.Thread): void
```



### sfml.Thread.launch

```lua
function sfml.Thread.launch(self: *sfml.Thread): void
```



### sfml.Thread.wait

```lua
function sfml.Thread.wait(self: *sfml.Thread): void
```



### sfml.Thread.terminate

```lua
function sfml.Thread.terminate(self: *sfml.Thread): void
```



### sfml.Vector2i

```lua
global sfml.Vector2i: type = @record {
  x: cint,
  y: cint
}
```

Vector

### sfml.Vector2u

```lua
global sfml.Vector2u: type = @record {
  x: cuint,
  y: cuint
}
```



### sfml.Vector2f

```lua
global sfml.Vector2f: type = @record {
  x: float32,
  y: float32
}
```



### sfml.Vector3f

```lua
global sfml.Vector3f: type = @record {
  x: float32,
  y: float32,
  z: float32
}
```



### sfml.FtpDirectoryResponse

```lua
global sfml.FtpDirectoryResponse: type = @record {}
```

Network

### sfml.FtpListingResponse

```lua
global sfml.FtpListingResponse: type = @record {}
```



### sfml.FtpResponse

```lua
global sfml.FtpResponse: type = @record {}
```



### sfml.Ftp

```lua
global sfml.Ftp: type = @record {}
```



### sfml.HttpRequest

```lua
global sfml.HttpRequest: type = @record {}
```



### sfml.HttpResponse

```lua
global sfml.HttpResponse: type = @record {}
```



### sfml.Http

```lua
global sfml.Http: type = @record {}
```



### sfml.Packet

```lua
global sfml.Packet: type = @record {}
```



### sfml.SocketSelector

```lua
global sfml.SocketSelector: type = @record {}
```



### sfml.TcpListener

```lua
global sfml.TcpListener: type = @record {}
```



### sfml.TcpSocket

```lua
global sfml.TcpSocket: type = @record {}
```



### sfml.UdpSocket

```lua
global sfml.UdpSocket: type = @record {}
```



### sfml.IpAddress

```lua
global sfml.IpAddress: type = @record {
  address: [16]byte
}
```

Network: IpAddress

### sfml.IpAddress.None

```lua
global sfml.IpAddress.None: sfml.IpAddress
```



### sfml.IpAddress.Any

```lua
global sfml.IpAddress.Any: sfml.IpAddress
```



### sfml.IpAddress.LocalHost

```lua
global sfml.IpAddress.LocalHost: sfml.IpAddress
```



### sfml.IpAddress.Broadcast

```lua
global sfml.IpAddress.Broadcast: sfml.IpAddress
```



### sfml.IpAddress.from_string

```lua
function sfml.IpAddress.from_string(address: cstring <const>): sfml.IpAddress
```



### sfml.IpAddress.from_bytes

```lua
function sfml.IpAddress.from_bytes(byte0: sfml.Uint8, byte1: sfml.Uint8, byte2: sfml.Uint8, byte3: sfml.Uint8): sfml.IpAddress
```



### sfml.IpAddress.from_integer

```lua
function sfml.IpAddress.from_integer(address: sfml.Uint32): sfml.IpAddress
```



### sfml.IpAddress.to_string

```lua
function sfml.IpAddress.to_string(self: sfml.IpAddress, string: cstring): void
```



### sfml.IpAddress.to_integer

```lua
function sfml.IpAddress.to_integer(self: sfml.IpAddress): sfml.Uint32
```



### sfml.IpAddress.get_local_address

```lua
function sfml.IpAddress.get_local_address(): sfml.IpAddress
```



### sfml.IpAddress.get_public_address

```lua
function sfml.IpAddress.get_public_address(timeout: sfml.Time): sfml.IpAddress
```



### sfml.FtpTransferMode

```lua
global sfml.FtpTransferMode: type = @enum(cint) {
  Binary = 0,
  Ascii,
  Ebcdic
}
```

Network: FTP

### sfml.FtpStatus

```lua
global sfml.FtpStatus: type = @enum(cint) {
  RestartMarkerReply          = 110,
  ServiceReadySoon            = 120,
  DataConnectionAlreadyOpened = 125,
  OpeningDataConnection       = 150,  
  Ok                    = 200,
  PointlessCommand      = 202,
  SystemStatus          = 211,
  DirectoryStatus       = 212,
  FileStatus            = 213,
  HelpMessage           = 214,
  SystemType            = 215,
  ServiceReady          = 220,
  ClosingConnection     = 221,
  DataConnectionOpened  = 225,
  ClosingDataConnection = 226,
  EnteringPassiveMode   = 227,
  LoggedIn              = 230,
  FileActionOk          = 250,
  DirectoryOk           = 257,
  NeedPassword       = 331,
  NeedAccountToLogIn = 332,
  NeedInformation    = 350,

  ServiceUnavailable        = 421,
  DataConnectionUnavailable = 425,
  TransferAborted           = 426,
  FileActionAborted         = 450,
  LocalError                = 451,
  InsufficientStorageSpace  = 452,
  CommandUnknown          = 500,
  ParametersUnknown       = 501,
  CommandNotImplemented   = 502,
  BadCommandSequence      = 503,
  ParameterNotImplemented = 504,
  NotLoggedIn             = 530,
  NeedAccountToStore      = 532,
  FileUnavailable         = 550,
  PageTypeUnknown         = 551,
  NotEnoughMemory         = 552,
  FilenameNotAllowed      = 553,
  InvalidResponse  = 1000,
  ConnectionFailed = 1001,
  ConnectionClosed = 1002,
  InvalidFile      = 1003
}
```



### sfml.FtpListingResponse.destroy

```lua
function sfml.FtpListingResponse.destroy(self: *sfml.FtpListingResponse): void
```



### sfml.FtpListingResponse.is_ok

```lua
function sfml.FtpListingResponse.is_ok(self: *sfml.FtpListingResponse <const>): sfml.Bool
```



### sfml.FtpListingResponse.get_status

```lua
function sfml.FtpListingResponse.get_status(self: *sfml.FtpListingResponse <const>): sfml.FtpStatus
```



### sfml.FtpListingResponse.get_message

```lua
function sfml.FtpListingResponse.get_message(self: *sfml.FtpListingResponse <const>): cstring
```



### sfml.FtpListingResponse.get_count

```lua
function sfml.FtpListingResponse.get_count(self: *sfml.FtpListingResponse <const>): csize
```



### sfml.FtpListingResponse.get_name

```lua
function sfml.FtpListingResponse.get_name(self: *sfml.FtpListingResponse <const>, index: csize): cstring
```



### sfml.FtpDirectoryResponse.destroy

```lua
function sfml.FtpDirectoryResponse.destroy(self: *sfml.FtpListingResponse): void
```



### sfml.FtpDirectoryResponse.is_ok

```lua
function sfml.FtpDirectoryResponse.is_ok(self: *sfml.FtpListingResponse <const>): sfml.Bool
```



### sfml.FtpDirectoryResponse.get_status

```lua
function sfml.FtpDirectoryResponse.get_status(self: *sfml.FtpListingResponse <const>): sfml.FtpStatus
```



### sfml.FtpDirectoryResponse.get_message

```lua
function sfml.FtpDirectoryResponse.get_message(self: *sfml.FtpListingResponse <const>): cstring
```



### sfml.FtpDirectoryResponse.get_directory

```lua
function sfml.FtpDirectoryResponse.get_directory(self: *sfml.FtpListingResponse <const>): cstring
```



### sfml.FtpResponse.destroy

```lua
function sfml.FtpResponse.destroy(self: *sfml.FtpResponse): void
```



### sfml.FtpResponse.is_ok

```lua
function sfml.FtpResponse.is_ok(self: *sfml.FtpResponse <const>): sfml.Bool
```



### sfml.FtpResponse.get_status

```lua
function sfml.FtpResponse.get_status(self: *sfml.FtpResponse <const>): sfml.FtpStatus
```



### sfml.FtpResponse.get_message

```lua
function sfml.FtpResponse.get_message(self: *sfml.FtpResponse <const>): cstring
```



### sfml.Ftp.create

```lua
function sfml.Ftp.create(): *sfml.Ftp
```



### sfml.Ftp.destroy

```lua
function sfml.Ftp.destroy(self: *sfml.Ftp): void
```



### sfml.Ftp.connect

```lua
function sfml.Ftp.connect(self: *sfml.Ftp, server: sfml.IpAddress, port: cushort, timeout: sfml.Time): *sfml.FtpResponse
```



### sfml.Ftp.login_anonymous

```lua
function sfml.Ftp.login_anonymous(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.login

```lua
function sfml.Ftp.login(self: *sfml.Ftp, name: cstring <const>, password: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.disconnect

```lua
function sfml.Ftp.disconnect(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.keep_alive

```lua
function sfml.Ftp.keep_alive(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.get_working_directory

```lua
function sfml.Ftp.get_working_directory(self: *sfml.Ftp): *sfml.FtpDirectoryResponse
```



### sfml.Ftp.get_directory_listing

```lua
function sfml.Ftp.get_directory_listing(self: *sfml.Ftp, directory: cstring <const>): *sfml.FtpListingResponse
```



### sfml.Ftp.change_directory

```lua
function sfml.Ftp.change_directory(self: *sfml.Ftp, directory: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.parent_directory

```lua
function sfml.Ftp.parent_directory(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.create_directory

```lua
function sfml.Ftp.create_directory(self: *sfml.Ftp, name: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.delete_directory

```lua
function sfml.Ftp.delete_directory(self: *sfml.Ftp, name: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.rename_file

```lua
function sfml.Ftp.rename_file(self: *sfml.Ftp, file: cstring <const>, newName: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.delete_file

```lua
function sfml.Ftp.delete_file(self: *sfml.Ftp, file: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.download

```lua
function sfml.Ftp.download(self: *sfml.Ftp, remoteFile: cstring <const>, localPath: cstring <const>, mode: sfml.FtpTransferMode): *sfml.FtpResponse
```



### sfml.Ftp.upload

```lua
function sfml.Ftp.upload(self: *sfml.Ftp, localFile: cstring <const>, remotePath: cstring <const>, mode: sfml.FtpTransferMode, append: sfml.Bool): *sfml.FtpResponse
```



### sfml.Ftp.send_command

```lua
function sfml.Ftp.send_command(self: *sfml.Ftp, command: cstring <const>, parameter: cstring <const>): *sfml.FtpResponse
```



### sfml.HttpMethod

```lua
global sfml.HttpMethod: type = @enum(cint) {
  Get = 0,
  Post,
  Head,
  Put,
  Delete
}
```

Network: HTTP

### sfml.HttpStatus

```lua
global sfml.HttpStatus: type = @enum(cint) {
  Ok             = 200,
  Created        = 201,
  Accepted       = 202,
  NoContent      = 204,
  ResetContent   = 205,
  PartialContent = 206,

  MultipleChoices  = 300,
  MovedPermanently = 301,
  MovedTemporarily = 302,
  NotModified      = 304,

  BadRequest          = 400,
  Unauthorized        = 401,
  Forbidden           = 403,
  NotFound            = 404,
  RangeNotSatisfiable = 407,

  InternalServerError = 500,
  NotImplemented      = 501,
  BadGateway          = 502,
  ServiceNotAvailable = 503,
  GatewayTimeout      = 504,
  VersionNotSupported = 505,

  InvalidResponse  = 1000,
  ConnectionFailed = 1001
}
```



### sfml.HttpRequest.create

```lua
function sfml.HttpRequest.create(): *sfml.HttpRequest
```



### sfml.HttpRequest.destroy

```lua
function sfml.HttpRequest.destroy(self: *sfml.HttpRequest): void
```



### sfml.HttpRequest.set_field

```lua
function sfml.HttpRequest.set_field(self: *sfml.HttpRequest, field: cstring <const>, value: cstring <const>): void
```



### sfml.HttpRequest.set_method

```lua
function sfml.HttpRequest.set_method(self: *sfml.HttpRequest, method: sfml.HttpMethod): void
```



### sfml.HttpRequest.set_uri

```lua
function sfml.HttpRequest.set_uri(self: *sfml.HttpRequest, uri: cstring <const>): void
```



### sfml.HttpRequest.set_http_version

```lua
function sfml.HttpRequest.set_http_version(self: *sfml.HttpRequest, major: cuint, minor: cuint): void
```



### sfml.HttpRequest.set_body

```lua
function sfml.HttpRequest.set_body(self: *sfml.HttpRequest, body: cstring <const>): void
```



### sfml.HttpResponse.destroy

```lua
function sfml.HttpResponse.destroy(self: *sfml.HttpResponse): void
```



### sfml.HttpResponse.get_field

```lua
function sfml.HttpResponse.get_field(self: *sfml.HttpResponse <const>, field: cstring <const>): cstring
```



### sfml.HttpResponse.get_status

```lua
function sfml.HttpResponse.get_status(self: *sfml.HttpResponse <const>): sfml.HttpStatus
```



### sfml.HttpResponse.get_major_version

```lua
function sfml.HttpResponse.get_major_version(self: *sfml.HttpResponse <const>): cuint
```



### sfml.HttpResponse.get_minor_version

```lua
function sfml.HttpResponse.get_minor_version(self: *sfml.HttpResponse <const>): cuint
```



### sfml.HttpResponse.get_body

```lua
function sfml.HttpResponse.get_body(self: *sfml.HttpResponse <const>): cstring
```



### sfml.Http.create

```lua
function sfml.Http.create(): *sfml.Http
```



### sfml.Http.destroy

```lua
function sfml.Http.destroy(http: *sfml.Http): void
```



### sfml.Http.set_host

```lua
function sfml.Http.set_host(http: *sfml.Http, host: cstring <const>, port: cuint): void
```



### sfml.Http.send_request

```lua
function sfml.Http.send_request(http: *sfml.Http, request: *sfml.HttpRequest <const>, timeout: sfml.Time): *sfml.HttpResponse
```



### sfml.Packet.create

```lua
function sfml.Packet.create(): *sfml.Packet
```

Network: Packet

### sfml.Packet.copy

```lua
function sfml.Packet.copy(self: *sfml.Packet <const>): *sfml.Packet
```



### sfml.Packet.destroy

```lua
function sfml.Packet.destroy(self: *sfml.Packet): void
```



### sfml.Packet.append

```lua
function sfml.Packet.append(self: *sfml.Packet, data: pointer, sizeInBytes: csize): void
```



### sfml.Packet.clear

```lua
function sfml.Packet.clear(self: *sfml.Packet): void
```



### sfml.Packet.get_data

```lua
function sfml.Packet.get_data(self: *sfml.Packet <const>): pointer
```



### sfml.Packet.get_data_size

```lua
function sfml.Packet.get_data_size(self: *sfml.Packet <const>): csize
```



### sfml.Packet.end_of_packet

```lua
function sfml.Packet.end_of_packet(self: *sfml.Packet <const>): sfml.Bool
```



### sfml.Packet.can_read

```lua
function sfml.Packet.can_read(self: *sfml.Packet <const>): sfml.Bool
```



### sfml.Packet.read_bool

```lua
function sfml.Packet.read_bool(self: *sfml.Packet): sfml.Bool
```



### sfml.Packet.read_int8

```lua
function sfml.Packet.read_int8(self: *sfml.Packet): sfml.Int8
```



### sfml.Packet.read_uint8

```lua
function sfml.Packet.read_uint8(self: *sfml.Packet): sfml.Uint8
```



### sfml.Packet.read_int16

```lua
function sfml.Packet.read_int16(self: *sfml.Packet): sfml.Int16
```



### sfml.Packet.read_uint16

```lua
function sfml.Packet.read_uint16(self: *sfml.Packet): sfml.Uint16
```



### sfml.Packet.read_int32

```lua
function sfml.Packet.read_int32(self: *sfml.Packet): sfml.Int32
```



### sfml.Packet.read_uint32

```lua
function sfml.Packet.read_uint32(self: *sfml.Packet): sfml.Uint32
```



### sfml.Packet.read_float

```lua
function sfml.Packet.read_float(self: *sfml.Packet): float32
```



### sfml.Packet.read_double

```lua
function sfml.Packet.read_double(self: *sfml.Packet): float64
```



### sfml.Packet.read_string

```lua
function sfml.Packet.read_string(self: *sfml.Packet, str: cstring): void
```



### sfml.Packet.read_wide_string

```lua
function sfml.Packet.read_wide_string(self: *sfml.Packet, str: *[0]cint): void
```



### sfml.Packet.write_bool

```lua
function sfml.Packet.write_bool(self: *sfml.Packet, data: sfml.Bool): void
```



### sfml.Packet.write_int8

```lua
function sfml.Packet.write_int8(self: *sfml.Packet, data: sfml.Int8): void
```



### sfml.Packet.write_uint8

```lua
function sfml.Packet.write_uint8(self: *sfml.Packet, data: sfml.Uint8): void
```



### sfml.Packet.write_int16

```lua
function sfml.Packet.write_int16(self: *sfml.Packet, data: sfml.Int16): void
```



### sfml.Packet.write_uint16

```lua
function sfml.Packet.write_uint16(self: *sfml.Packet, data: sfml.Uint16): void
```



### sfml.Packet.write_int32

```lua
function sfml.Packet.write_int32(self: *sfml.Packet, data: sfml.Int32): void
```



### sfml.Packet.write_uint32

```lua
function sfml.Packet.write_uint32(self: *sfml.Packet, data: sfml.Uint32): void
```



### sfml.Packet.write_float

```lua
function sfml.Packet.write_float(self: *sfml.Packet, data: float32): void
```



### sfml.Packet.write_double

```lua
function sfml.Packet.write_double(self: *sfml.Packet, data: float64): void
```



### sfml.Packet.write_string

```lua
function sfml.Packet.write_string(self: *sfml.Packet, data: cstring <const>): void
```



### sfml.Packet.write_wide_string

```lua
function sfml.Packet.write_wide_string(self: *sfml.Packet, data: *[0]cint): void
```



### sfml.SocketStatus

```lua
global sfml.SocketStatus: type = @enum(cint) {
  Done = 0,
  NotReady,
  Partial,
  Disconnected,
  Error
}
```

Network: Selector

### sfml.SocketSelector.create

```lua
function sfml.SocketSelector.create(): *sfml.SocketSelector
```



### sfml.SocketSelector.copy

```lua
function sfml.SocketSelector.copy(self: *sfml.SocketSelector <const>): *sfml.SocketSelector
```



### sfml.SocketSelector.destroy

```lua
function sfml.SocketSelector.destroy(self: *sfml.SocketSelector): void
```



### sfml.SocketSelector.add_tcp_listener

```lua
function sfml.SocketSelector.add_tcp_listener(self: *sfml.SocketSelector, socket: *sfml.TcpListener): void
```



### sfml.SocketSelector.add_tcp_socket

```lua
function sfml.SocketSelector.add_tcp_socket(self: *sfml.SocketSelector, socket: *sfml.TcpSocket): void
```



### sfml.SocketSelector.add_udp_socket

```lua
function sfml.SocketSelector.add_udp_socket(self: *sfml.SocketSelector, socket: *sfml.UdpSocket): void
```



### sfml.SocketSelector.remove_tcp_listener

```lua
function sfml.SocketSelector.remove_tcp_listener(self: *sfml.SocketSelector, socket: *sfml.TcpListener): void
```



### sfml.SocketSelector.remove_tcp_socket

```lua
function sfml.SocketSelector.remove_tcp_socket(self: *sfml.SocketSelector, socket: *sfml.TcpSocket): void
```



### sfml.SocketSelector.remove_udp_socket

```lua
function sfml.SocketSelector.remove_udp_socket(self: *sfml.SocketSelector, socket: *sfml.UdpSocket): void
```



### sfml.SocketSelector.clear

```lua
function sfml.SocketSelector.clear(self: *sfml.SocketSelector): void
```



### sfml.SocketSelector.wait

```lua
function sfml.SocketSelector.wait(self: *sfml.SocketSelector, timeout: sfml.Time): sfml.Bool
```



### sfml.SocketSelector.is_tcp_listener_ready

```lua
function sfml.SocketSelector.is_tcp_listener_ready(self: *sfml.SocketSelector <const>, socket: *sfml.TcpListener): void
```



### sfml.SocketSelector.is_tcp_socket_ready

```lua
function sfml.SocketSelector.is_tcp_socket_ready(self: *sfml.SocketSelector <const>, socket: *sfml.TcpSocket): void
```



### sfml.SocketSelector.is_udp_socket_ready

```lua
function sfml.SocketSelector.is_udp_socket_ready(self: *sfml.SocketSelector <const>, socket: *sfml.UdpSocket): void
```



### sfml.TcpListener.create

```lua
function sfml.TcpListener.create(): *sfml.TcpListener
```



### sfml.TcpListener.destroy

```lua
function sfml.TcpListener.destroy(self: *sfml.TcpListener): void
```



### sfml.TcpListener.set_blocking

```lua
function sfml.TcpListener.set_blocking(self: *sfml.TcpListener, blocking: sfml.Bool): void
```



### sfml.TcpListener.is_blocking

```lua
function sfml.TcpListener.is_blocking(self: *sfml.TcpListener <const>): sfml.Bool
```



### sfml.TcpListener.get_local_port

```lua
function sfml.TcpListener.get_local_port(self: *sfml.TcpListener <const>): cushort
```



### sfml.TcpListener.listen

```lua
function sfml.TcpListener.listen(self: *sfml.TcpListener <const>, port: cushort, address: sfml.IpAddress): sfml.SocketStatus
```



### sfml.TcpListener.accept

```lua
function sfml.TcpListener.accept(self: *sfml.TcpListener <const>, connected: *[0]*sfml.TcpSocket): sfml.SocketStatus
```



### sfml.TcpSocket.create

```lua
function sfml.TcpSocket.create(): *sfml.TcpSocket
```



### sfml.TcpSocket.destroy

```lua
function sfml.TcpSocket.destroy(self: *sfml.TcpSocket): void
```



### sfml.TcpSocket.set_blocking

```lua
function sfml.TcpSocket.set_blocking(self: *sfml.TcpSocket, blocking: sfml.Bool): void
```



### sfml.TcpSocket.is_blocking

```lua
function sfml.TcpSocket.is_blocking(self: *sfml.TcpSocket <const>): sfml.Bool
```



### sfml.TcpSocket.get_local_port

```lua
function sfml.TcpSocket.get_local_port(self: *sfml.TcpSocket <const>): cushort
```



### sfml.TcpSocket.get_remote_address

```lua
function sfml.TcpSocket.get_remote_address(self: *sfml.TcpSocket <const>): sfml.IpAddress
```



### sfml.TcpSocket.get_remote_port

```lua
function sfml.TcpSocket.get_remote_port(self: *sfml.TcpSocket <const>): cushort
```



### sfml.TcpSocket.connect

```lua
function sfml.TcpSocket.connect(self: *sfml.TcpSocket, remoteAddress: sfml.IpAddress, remotePort: cushort, timeout: sfml.Time): sfml.SocketStatus
```



### sfml.TcpSocket.disconnect

```lua
function sfml.TcpSocket.disconnect(self: *sfml.TcpSocket): void
```



### sfml.TcpSocket.send

```lua
function sfml.TcpSocket.send(self: *sfml.TcpSocket, data: pointer <const>, size: csize): sfml.SocketStatus
```



### sfml.TcpSocket.send_partial

```lua
function sfml.TcpSocket.send_partial(self: *sfml.TcpSocket, data: pointer <const>, size: csize, received: *csize): sfml.SocketStatus
```



### sfml.TcpSocket.receive

```lua
function sfml.TcpSocket.receive(self: *sfml.TcpSocket, data: pointer <const>, size: csize, received: *csize): sfml.SocketStatus
```



### sfml.TcpSocket.send_packet

```lua
function sfml.TcpSocket.send_packet(self: *sfml.TcpSocket, packet: *sfml.Packet): sfml.SocketStatus
```



### sfml.TcpSocket.receive_packet

```lua
function sfml.TcpSocket.receive_packet(self: *sfml.TcpSocket, packet: *sfml.Packet): sfml.SocketStatus
```



### sfml.UdpSocket.create

```lua
function sfml.UdpSocket.create(): *sfml.UdpSocket
```



### sfml.UdpSocket.destroy

```lua
function sfml.UdpSocket.destroy(self: *sfml.UdpSocket): void
```



### sfml.UdpSocket.set_blocking

```lua
function sfml.UdpSocket.set_blocking(self: *sfml.UdpSocket, blocking: sfml.Bool): void
```



### sfml.UdpSocket.is_blocking

```lua
function sfml.UdpSocket.is_blocking(self: *sfml.UdpSocket <const>): sfml.Bool
```



### sfml.UdpSocket.get_local_port

```lua
function sfml.UdpSocket.get_local_port(self: *sfml.UdpSocket <const>): cushort
```



### sfml.UdpSocket.bind

```lua
function sfml.UdpSocket.bind(self: *sfml.UdpSocket <const>, port: cushort, address: sfml.IpAddress): sfml.SocketStatus
```



### sfml.UdpSocket.unbind

```lua
function sfml.UdpSocket.unbind(self: *sfml.UdpSocket): void
```



### sfml.UdpSocket.send

```lua
function sfml.UdpSocket.send(self: *sfml.UdpSocket, data: pointer<const>, size: csize, remoteAddress: sfml.IpAddress, remotePort: cushort): sfml.SocketStatus
```



### sfml.UdpSocket.receive

```lua
function sfml.UdpSocket.receive(self: *sfml.UdpSocket, data: pointer, size: csize, received: *csize, remoteAddress: *sfml.IpAddress, remotePort: *cushort): sfml.SocketStatus
```



### sfml.UdpSocket.send_packet

```lua
function sfml.UdpSocket.send_packet(self: *sfml.UdpSocket, packet: *sfml.Packet, remoteAddress: sfml.IpAddress, remotePort: cushort): sfml.SocketStatus
```



### sfml.UdpSocket.receive_packet

```lua
function sfml.UdpSocket.receive_packet(self: *sfml.UdpSocket, packet: *sfml.Packet, remoteAddress: *sfml.IpAddress, remotePort: *cushort): sfml.SocketStatus
```



### sfml.UdpSocket.max_datagram_size

```lua
function sfml.UdpSocket.max_datagram_size(): cuint
```



### sfml.SoundStatus

```lua
global sfml.SoundStatus: type = @enum(cint) {
  Stopped = 0,
  Paused,
  Playing
}
```

Audio

### sfml.TimeSpan

```lua
global sfml.TimeSpan: type = @record {
  offset: sfml.Time,
  length: sfml.Time
}
```



### sfml.Listener

```lua
global sfml.Listener = @record{}
```

Audio: Listener

### sfml.Listener.set_global_volume

```lua
function sfml.Listener.set_global_volume(volume: float32): void
```



### sfml.Listener.get_global_volume

```lua
function sfml.Listener.get_global_volume(): float32
```



### sfml.Listener.set_position

```lua
function sfml.Listener.set_position(position: sfml.Vector3f): void
```



### sfml.Listener.get_position

```lua
function sfml.Listener.get_position(): sfml.Vector3f
```



### sfml.Listener.set_direction

```lua
function sfml.Listener.set_direction(direction: sfml.Vector3f): void
```



### sfml.Listener.get_direction

```lua
function sfml.Listener.get_direction(): sfml.Vector3f
```



### sfml.Listener.set_up_vector

```lua
function sfml.Listener.set_up_vector(upVector: sfml.Vector3f): void
```



### sfml.Listener.get_up_vector

```lua
function sfml.Listener.get_up_vector(): sfml.Vector3f
```



### sfml.Music

```lua
global sfml.Music: type = @record {}
```

Audio: Music

### sfml.Sound

```lua
global sfml.Sound: type = @record {}
```



### sfml.SoundBuffer

```lua
global sfml.SoundBuffer: type = @record {}
```



### sfml.SoundBufferRecorder

```lua
global sfml.SoundBufferRecorder: type = @record {}
```



### sfml.SoundRecorder

```lua
global sfml.SoundRecorder: type = @record {}
```



### sfml.SoundStream

```lua
global sfml.SoundStream: type = @record {}
```



### sfml.Music.create_from_file

```lua
function sfml.Music.create_from_file(filename: cstring <const>): *sfml.Music
```



### sfml.Music.create_from_memory

```lua
function sfml.Music.create_from_memory(data: pointer <const>, sizeInBytes: csize): *sfml.Music
```



### sfml.Music.create_from_stream

```lua
function sfml.Music.create_from_stream(stream: *sfml.InputStream): *sfml.Music
```



### sfml.Music.destroy

```lua
function sfml.Music.destroy(self: *sfml.Music): void
```



### sfml.Music.get_loop

```lua
function sfml.Music.get_loop(self: *sfml.Music <const>): sfml.Bool
```



### sfml.Music.set_loop

```lua
function sfml.Music.set_loop(self: *sfml.Music, loop: sfml.Bool): void
```



### sfml.Music.get_duration

```lua
function sfml.Music.get_duration(self: *sfml.Music <const>): sfml.Time
```



### sfml.Music.get_loop_points

```lua
function sfml.Music.get_loop_points(self: *sfml.Music <const>): sfml.TimeSpan
```



### sfml.Music.set_loop_points

```lua
function sfml.Music.set_loop_points(self: *sfml.Music, timePoints: sfml.TimeSpan): void
```



### sfml.Music.play

```lua
function sfml.Music.play(self: *sfml.Music): void
```



### sfml.Music.pause

```lua
function sfml.Music.pause(self: *sfml.Music): void
```



### sfml.Music.stop

```lua
function sfml.Music.stop(self: *sfml.Music): void
```



### sfml.Music.get_channel_count

```lua
function sfml.Music.get_channel_count(self: *sfml.Music <const>): cuint
```



### sfml.Music.get_sample_rate

```lua
function sfml.Music.get_sample_rate(self: *sfml.Music <const>): cuint
```



### sfml.Music.get_status

```lua
function sfml.Music.get_status(self: *sfml.Music <const>): sfml.SoundStatus
```



### sfml.Music.get_playing_offset

```lua
function sfml.Music.get_playing_offset(self: *sfml.Music <const>): sfml.Time
```



### sfml.Music.set_playing_offset

```lua
function sfml.Music.set_playing_offset(self: *sfml.Music, timeOffset: sfml.Time): void
```



### sfml.Music.get_pitch

```lua
function sfml.Music.get_pitch(self: *sfml.Music <const>): float32
```



### sfml.Music.set_pitch

```lua
function sfml.Music.set_pitch(self: *sfml.Music, pitch: float32): void
```



### sfml.Music.get_volume

```lua
function sfml.Music.get_volume(self: *sfml.Music <const>): float32
```



### sfml.Music.set_volume

```lua
function sfml.Music.set_volume(self: *sfml.Music, volume: float32): void
```



### sfml.Music.get_position

```lua
function sfml.Music.get_position(self: *sfml.Music <const>): sfml.Vector3f
```



### sfml.Music.set_position

```lua
function sfml.Music.set_position(self: *sfml.Music, position: sfml.Vector3f): void
```



### sfml.Music.set_relative_to_listener

```lua
function sfml.Music.set_relative_to_listener(music: *sfml.Music, relative: sfml.Bool): void
```



### sfml.Music.get_min_distance

```lua
function sfml.Music.get_min_distance(self: *sfml.Music <const>): float32
```



### sfml.Music.set_min_distance

```lua
function sfml.Music.set_min_distance(self: *sfml.Music, distance: float32): void
```



### sfml.Music.get_attenuation

```lua
function sfml.Music.get_attenuation(self: *sfml.Music <const>): float32
```



### sfml.Music.set_attenuation

```lua
function sfml.Music.set_attenuation(self: *sfml.Music, attenuation: float32): void
```



### sfml.Music.is_relative_to_listener

```lua
function sfml.Music.is_relative_to_listener(self: *sfml.Music <const>): sfml.Bool
```



### sfml.Sound.create

```lua
function sfml.Sound.create(): *sfml.Sound
```

Audio: Sound

### sfml.Sound.copy

```lua
function sfml.Sound.copy(self: *sfml.Sound <const>): *sfml.Sound
```



### sfml.Sound.destroy

```lua
function sfml.Sound.destroy(self: *sfml.Sound): void
```



### sfml.Sound.play

```lua
function sfml.Sound.play(self: *sfml.Sound): void
```



### sfml.Sound.pause

```lua
function sfml.Sound.pause(self: *sfml.Sound): void
```



### sfml.Sound.stop

```lua
function sfml.Sound.stop(self: *sfml.Sound): void
```



### sfml.Sound.get_buffer

```lua
function sfml.Sound.get_buffer(self: *sfml.Sound <const>): *sfml.SoundBuffer
```



### sfml.Sound.set_buffer

```lua
function sfml.Sound.set_buffer(self: *sfml.Sound, buffer: *sfml.SoundBuffer <const>): void
```



### sfml.Sound.set_loop

```lua
function sfml.Sound.set_loop(self: *sfml.Sound, loop: sfml.Bool): void
```



### sfml.Sound.get_loop

```lua
function sfml.Sound.get_loop(self: *sfml.Sound <const>): sfml.Bool
```



### sfml.Sound.get_status

```lua
function sfml.Sound.get_status(self: *sfml.Sound <const>): sfml.SoundStatus
```



### sfml.Sound.get_pitch

```lua
function sfml.Sound.get_pitch(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_pitch

```lua
function sfml.Sound.set_pitch(self: *sfml.Sound, pitch: float32): void
```



### sfml.Sound.get_volume

```lua
function sfml.Sound.get_volume(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_volume

```lua
function sfml.Sound.set_volume(self: *sfml.Sound, volume: float32): void
```



### sfml.Sound.get_position

```lua
function sfml.Sound.get_position(self: *sfml.Sound <const>): sfml.Vector3f
```



### sfml.Sound.set_position

```lua
function sfml.Sound.set_position(self: *sfml.Sound, position: sfml.Vector3f): void
```



### sfml.Sound.get_min_distance

```lua
function sfml.Sound.get_min_distance(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_min_distance

```lua
function sfml.Sound.set_min_distance(self: *sfml.Sound, distance: float32): void
```



### sfml.Sound.get_attenuation

```lua
function sfml.Sound.get_attenuation(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_attenuation

```lua
function sfml.Sound.set_attenuation(self: *sfml.Sound, attenuation: float32): void
```



### sfml.Sound.get_playing_offset

```lua
function sfml.Sound.get_playing_offset(self: *sfml.Sound <const>): sfml.Time
```



### sfml.Sound.set_playing_offset

```lua
function sfml.Sound.set_playing_offset(self: *sfml.Sound, timeOffset: sfml.Time): void
```



### sfml.Sound.set_relative_to_listener

```lua
function sfml.Sound.set_relative_to_listener(self: *sfml.Sound, relative: sfml.Bool): void
```



### sfml.Sound.is_relative_to_listener

```lua
function sfml.Sound.is_relative_to_listener(self: *sfml.Sound <const>): sfml.Bool
```



### sfml.SoundBuffer.create_from_file

```lua
function sfml.SoundBuffer.create_from_file(filename: cstring <const>): *sfml.SoundBuffer
```

Audio: Sound Buffer

### sfml.SoundBuffer.create_from_memory

```lua
function sfml.SoundBuffer.create_from_memory(data: pointer <const>, sizeInBytes: csize): *sfml.SoundBuffer
```



### sfml.SoundBuffer.create_from_stream

```lua
function sfml.SoundBuffer.create_from_stream(stream: *sfml.InputStream): *sfml.SoundBuffer
```



### sfml.SoundBuffer.create_from_samples

```lua
function sfml.SoundBuffer.create_from_samples(samples: *[0]sfml.Int16, sampleCount: sfml.Uint64, channelCount: cuint, sampleRate: cuint): *sfml.SoundBuffer
```



### sfml.SoundBuffer.copy

```lua
function sfml.SoundBuffer.copy(self: *sfml.SoundBuffer <const>): *sfml.SoundBuffer
```



### sfml.SoundBuffer.destroy

```lua
function sfml.SoundBuffer.destroy(self: *sfml.SoundBuffer): void
```



### sfml.SoundBuffer.save_to_file

```lua
function sfml.SoundBuffer.save_to_file(self: *sfml.SoundBuffer <const>, filename: cstring <const>): sfml.Bool
```



### sfml.SoundBuffer.get_samples

```lua
function sfml.SoundBuffer.get_samples(self: *sfml.SoundBuffer <const>): *[0]sfml.Int16
```



### sfml.SoundBuffer.get_sample_count

```lua
function sfml.SoundBuffer.get_sample_count(self: *sfml.SoundBuffer <const>): sfml.Uint64
```



### sfml.SoundBuffer.get_sample_rate

```lua
function sfml.SoundBuffer.get_sample_rate(self: *sfml.SoundBuffer <const>): cuint
```



### sfml.SoundBuffer.get_channel_count

```lua
function sfml.SoundBuffer.get_channel_count(self: *sfml.SoundBuffer <const>): cuint
```



### sfml.SoundBuffer.get_duration

```lua
function sfml.SoundBuffer.get_duration(self: *sfml.SoundBuffer <const>): sfml.Time
```



### sfml.SoundBufferRecorder.create

```lua
function sfml.SoundBufferRecorder.create(): *sfml.SoundBufferRecorder
```

Audio: Sound Buffer Recorder

### sfml.SoundBufferRecorder.destroy

```lua
function sfml.SoundBufferRecorder.destroy(self: *sfml.SoundBufferRecorder): void
```



### sfml.SoundBufferRecorder.start

```lua
function sfml.SoundBufferRecorder.start(self: *sfml.SoundBufferRecorder, sampleRate: cuint): sfml.Bool
```



### sfml.SoundBufferRecorder.stop

```lua
function sfml.SoundBufferRecorder.stop(self: *sfml.SoundBufferRecorder): void
```



### sfml.SoundBufferRecorder.get_sample_rate

```lua
function sfml.SoundBufferRecorder.get_sample_rate(self: *sfml.SoundBufferRecorder <const>): cuint
```



### sfml.SoundBufferRecorder.get_buffer

```lua
function sfml.SoundBufferRecorder.get_buffer(self: *sfml.SoundBufferRecorder <const>): *sfml.SoundBuffer
```



### sfml.SoundBufferRecorder.set_device

```lua
function sfml.SoundBufferRecorder.set_device(self: *sfml.SoundBufferRecorder <const>, name: cstring <const>): sfml.Bool
```



### sfml.SoundBufferRecorder.get_device

```lua
function sfml.SoundBufferRecorder.get_device(self: *sfml.SoundBufferRecorder): cstring
```



### sfml.SoundRecorderStartCallback

```lua
global sfml.SoundRecorderStartCallback: type = @function(pointer): sfml.Bool
```



### sfml.SoundRecorderProcessCallback

```lua
global sfml.SoundRecorderProcessCallback: type = @function(*[0]sfml.Int16, csize, pointer): sfml.Bool
```



### sfml.SoundRecorderStopCallback

```lua
global sfml.SoundRecorderStopCallback: type = @function(pointer): void
```



### sfml.SoundRecorder.create

```lua
function sfml.SoundRecorder.create(onStart: sfml.SoundRecorderStartCallback, onProcess: sfml.SoundRecorderProcessCallback, onStop: sfml.SoundRecorderStopCallback, userData: pointer): *sfml.SoundRecorder
```

Audio: Sound Recorder

### sfml.SoundRecorder.destroy

```lua
function sfml.SoundRecorder.destroy(self: *sfml.SoundRecorder): void
```



### sfml.SoundRecorder.start

```lua
function sfml.SoundRecorder.start(self: *sfml.SoundRecorder, sampleRate: cuint): sfml.Bool
```



### sfml.SoundRecorder.stop

```lua
function sfml.SoundRecorder.stop(self: *sfml.SoundRecorder): void
```



### sfml.SoundRecorder.get_sample_rate

```lua
function sfml.SoundRecorder.get_sample_rate(self: *sfml.SoundRecorder <const>): cuint
```



### sfml.SoundRecorder.is_available

```lua
function sfml.SoundRecorder.is_available(): sfml.Bool
```



### sfml.SoundRecorder.set_processing_interval

```lua
function sfml.SoundRecorder.set_processing_interval(self: *sfml.SoundRecorder, interval: sfml.Time): void
```



### sfml.SoundRecorder.get_available_devices

```lua
function sfml.SoundRecorder.get_available_devices(count: csize): *[0]cstring
```



### sfml.SoundRecorder.get_default_device

```lua
function sfml.SoundRecorder.get_default_device(): cstring
```



### sfml.SoundRecorder.get_device

```lua
function sfml.SoundRecorder.get_device(self: *sfml.SoundRecorder): cstring
```



### sfml.SoundRecorder.set_device

```lua
function sfml.SoundRecorder.set_device(self: *sfml.SoundRecorder, name: cstring <const>): sfml.Bool
```



### sfml.SoundRecorder.get_channel_count

```lua
function sfml.SoundRecorder.get_channel_count(self: *sfml.SoundRecorder <const>): cuint
```



### sfml.SoundRecorder.set_channel_count

```lua
function sfml.SoundRecorder.set_channel_count(self: *sfml.SoundRecorder, channelCount: cuint): void
```



### sfml.SoundStreamChunk

```lua
global sfml.SoundStreamChunk: type = @record {
  samples: *[0]sfml.Int16,
  sampleCount: cuint
}
```

Audio: SoundStream

### sfml.SoundStreamGetDataCallback

```lua
global sfml.SoundStreamGetDataCallback: type = @function(*sfml.SoundStreamChunk, pointer): sfml.Bool
```



### sfml.SoundStreamSeekCallback

```lua
global sfml.SoundStreamSeekCallback: type = @function(sfml.Time, pointer): void
```



### sfml.SoundStream.create

```lua
function sfml.SoundStream.create(onGetData: sfml.SoundStreamGetDataCallback, onSeek: sfml.SoundStreamSeekCallback, channelCount: cuint, sampleRate: cuint, userData: pointer): *sfml.SoundStream
```



### sfml.SoundStream.destroy

```lua
function sfml.SoundStream.destroy(self: *sfml.SoundStream): void
```



### sfml.SoundStream.play

```lua
function sfml.SoundStream.play(self: *sfml.SoundStream): void
```



### sfml.SoundStream.pause

```lua
function sfml.SoundStream.pause(self: *sfml.SoundStream): void
```



### sfml.SoundStream.stop

```lua
function sfml.SoundStream.stop(self: *sfml.SoundStream): void
```



### sfml.SoundStream.get_status

```lua
function sfml.SoundStream.get_status(self: *sfml.SoundStream <const>): sfml.SoundStatus
```



### sfml.SoundStream.get_channel_count

```lua
function sfml.SoundStream.get_channel_count(self: *sfml.SoundStream <const>): cuint
```



### sfml.SoundStream.get_pitch

```lua
function sfml.SoundStream.get_pitch(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_pitch

```lua
function sfml.SoundStream.set_pitch(self: *sfml.SoundStream, pitch: float32): void
```



### sfml.SoundStream.get_volume

```lua
function sfml.SoundStream.get_volume(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_volume

```lua
function sfml.SoundStream.set_volume(self: *sfml.SoundStream, volume: float32): void
```



### sfml.SoundStream.get_position

```lua
function sfml.SoundStream.get_position(self: *sfml.SoundStream <const>): sfml.Vector3f
```



### sfml.SoundStream.set_position

```lua
function sfml.SoundStream.set_position(self: *sfml.SoundStream, position: sfml.Vector3f): void
```



### sfml.SoundStream.get_min_distance

```lua
function sfml.SoundStream.get_min_distance(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_min_distance

```lua
function sfml.SoundStream.set_min_distance(self: *sfml.SoundStream, distance: float32): void
```



### sfml.SoundStream.get_playing_offset

```lua
function sfml.SoundStream.get_playing_offset(self: *sfml.SoundStream <const>): sfml.Time
```



### sfml.SoundStream.set_playing_offset

```lua
function sfml.SoundStream.set_playing_offset(self: *sfml.SoundStream, timeOffset: sfml.Time): void
```



### sfml.SoundStream.get_loop

```lua
function sfml.SoundStream.get_loop(self: *sfml.SoundStream <const>): sfml.Bool
```



### sfml.SoundStream.set_loop

```lua
function sfml.SoundStream.set_loop(self: *sfml.SoundStream, loop: sfml.Bool): void
```



### sfml.SoundStream.get_attenuation

```lua
function sfml.SoundStream.get_attenuation(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_attenuation

```lua
function sfml.SoundStream.set_attenuation(self: *sfml.SoundStream, attenuation: float32): void
```



### sfml.SoundStream.is_relative_to_listener

```lua
function sfml.SoundStream.is_relative_to_listener(self: *sfml.SoundStream <const>): sfml.Bool
```



### sfml.SoundStream.set_relative_to_listener

```lua
function sfml.SoundStream.set_relative_to_listener(self: *sfml.SoundStream, relative: sfml.Bool): void
```



### sfml.Context

```lua
global sfml.Context: type = @record {}
```

Clipboard

### sfml.Cursor

```lua
global sfml.Cursor: type = @record {}
```



### sfml.Window

```lua
global sfml.Window: type = @record {}
```



### sfml.Clipboard

```lua
global sfml.Clipboard = @record{}
```



### sfml.Clipboard.get_string

```lua
function sfml.Clipboard.get_string(): cstring
```



### sfml.Clipboard.get_unicode_string

```lua
function sfml.Clipboard.get_unicode_string(): *[0]sfml.Uint32
```



### sfml.Clipboard.set_string

```lua
function sfml.Clipboard.set_string(text: cstring <const>): void
```



### sfml.Clipboard.set_unicode_string

```lua
function sfml.Clipboard.set_unicode_string(text: *[0]sfml.Uint32): void
```



### sfml.WindowHandle

```lua
global sfml.WindowHandle: type = @culong
```



### sfml.WindowHandle

```lua
global sfml.WindowHandle: type = @pointer
```



### sfml.VideoMode

```lua
global sfml.VideoMode: type = @record {
  width: cuint,
  height: cuint,
  bitsPerPixel: cuint
}
```

Video Mode

### sfml.VideoMode.get_desktop_mode

```lua
function sfml.VideoMode.get_desktop_mode(): sfml.VideoMode
```



### sfml.VideoMode.get_fullscreen_modes

```lua
function sfml.VideoMode.get_fullscreen_modes(count: *csize): *[0]sfml.VideoMode
```



### sfml.VideoMode.is_valid

```lua
function sfml.VideoMode.is_valid(mode: sfml.VideoMode): sfml.Bool
```



### sfml.JoystickIdentification

```lua
global sfml.JoystickIdentification: type = @record {
  name: cstring,
  vendorId: cuint,
  productId: cuint
}
```

Control: Joystick

### sfml.JoystickCount

```lua
global sfml.JoystickCount: cint
```



### sfml.JoystickButtonCount

```lua
global sfml.JoystickButtonCount: cint
```



### sfml.JoystickAxisCount

```lua
global sfml.JoystickAxisCount: cint
```



### sfml.JoystickAxis

```lua
global sfml.JoystickAxis: type = @enum(cint) {
  X = 0,
  Y,
  Z,
  R,
  U,
  V,
  PovX,
  PovY
}
```



### sfml.Joystick

```lua
global sfml.Joystick = @record{}
```



### sfml.Joystick.is_connected

```lua
function sfml.Joystick.is_connected(joystick: cuint): sfml.Bool
```



### sfml.Joystick.get_button_count

```lua
function sfml.Joystick.get_button_count(joystick: cuint): cuint
```



### sfml.Joystick.has_axis

```lua
function sfml.Joystick.has_axis(joystick: cuint, axis: sfml.JoystickAxis): sfml.Bool
```



### sfml.Joystick.is_button_pressed

```lua
function sfml.Joystick.is_button_pressed(joystick: cuint, button: cuint): sfml.Bool
```



### sfml.Joystick.get_axis_position

```lua
function sfml.Joystick.get_axis_position(joystick: cuint, axis: sfml.JoystickAxis): float32
```



### sfml.Joystick.get_identification

```lua
function sfml.Joystick.get_identification(joystick: cuint): sfml.JoystickIdentification
```



### sfml.Joystick.update

```lua
function sfml.Joystick.update(): void
```



### sfml.KeyCode

```lua
global sfml.KeyCode: type = @enum(cint) {
  Unknown = -1,
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
  P,
  Q,
  R,
  S,
  T,
  U,
  V,
  W,
  X,
  Y,
  Z,
  Num0,
  Num1,
  Num2,
  Num3,
  Num4,
  Num5,
  Num6,
  Num7,
  Num8,
  Num9,
  Escape,
  LControl,
  LShift,
  LAlt,
  LSystem,
  RControl,
  RShift,
  RAlt,
  RSystem,
  Menu,
  LBracket,
  RBracket,
  Semicolon,
  Comma,
  Period,
  Quote,
  Slash,
  Backslash,
  Tilde,
  Equal,
  Hyphen,
  Space,
  Enter,
  Backspace,
  Tab,
  PageUp,
  PageDown,
  End,
  Home,
  Insert,
  Delete,
  Add,
  Subtract,
  Multiply,
  Divide,
  Left,
  Right,
  Up,
  Down,
  Numpad0,
  Numpad1,
  Numpad2,
  Numpad3,
  Numpad4,
  Numpad5,
  Numpad6,
  Numpad7,
  Numpad8,
  Numpad9,
  F1,
  F2,
  F3,
  F4,
  F5,
  F6,
  F7,
  F8,
  F9,
  F10,
  F11,
  F12,
  F13,
  F14,
  F15,
  Pause,
  Count
}
```

Control: Key

### sfml.KeyDash

```lua
global sfml.KeyDash: cint
```



### sfml.KeyBack

```lua
global sfml.KeyBack: cint
```



### sfml.KeyBackSlash

```lua
global sfml.KeyBackSlash: cint
```



### sfml.KeySemiColon

```lua
global sfml.KeySemiColon: cint
```



### sfml.KeyReturn

```lua
global sfml.KeyReturn: cint
```



### sfml.Keyboard

```lua
global sfml.Keyboard = @record{}
```



### sfml.Keyboard.is_key_pressed

```lua
function sfml.Keyboard.is_key_pressed(key: sfml.KeyCode): sfml.Bool
```



### sfml.Keyboard.set_virtual_keyboard_visible

```lua
function sfml.Keyboard.set_virtual_keyboard_visible(visible: sfml.Bool): void
```



### sfml.MouseButton

```lua
global sfml.MouseButton: type = @enum(cint) {
  Left = 0,
  Right,
  Middle,
  XButton1,
  XButton2,
  ButtonCount,
}
```

Control: Mouse

### sfml.MouseWheel

```lua
global sfml.MouseWheel: type = @enum(cint) {
  VerticalWheel = 0,
  HorizontalWheel
}
```



### sfml.Mouse

```lua
global sfml.Mouse = @record{}
```



### sfml.Mouse.is_button_pressed

```lua
function sfml.Mouse.is_button_pressed(button: sfml.MouseButton): sfml.Bool
```



### sfml.Mouse.get_position

```lua
function sfml.Mouse.get_position(relativeTo: *sfml.Window <const>): sfml.Vector2i
```



### sfml.Mouse.set_position

```lua
function sfml.Mouse.set_position(position: sfml.Vector2i, relativeTo: *sfml.Window <const>): void
```



### sfml.CursorType

```lua
global sfml.CursorType: type = @enum(cint) {
  Arrow = 0,
  ArrowWait,
  Wait,
  Text,
  Hand,
  SizeHorizontal,
  SizeVertical,
  SizeTopLeftBottomRight,
  SizeBottomLeftTopRight,
  SizeAll,
  Cross,
  Help,
  NotAllowed
}
```



### sfml.Cursor.create_from_pixels

```lua
function sfml.Cursor.create_from_pixels(pixels: *[0]sfml.Uint8 <const>, size: sfml.Vector2u, hotspot: sfml.Vector2u): *sfml.Cursor
```



### sfml.Cursor.create_from_system

```lua
function sfml.Cursor.create_from_system(cursor_type: sfml.CursorType): *sfml.Cursor
```



### sfml.Cursor.destroy

```lua
function sfml.Cursor.destroy(cursor: *sfml.Cursor): void
```



### sfml.SensorType

```lua
global sfml.SensorType: type = @enum(cint) {
  Accelerometer = 0,
  Gyroscope,
  Magnetometer,
  Gravity,
  Orientation,
  Count
}
```

Contol: Sensor

### sfml.Sensor

```lua
global sfml.Sensor = @record{}
```



### sfml.Sensor.is_available

```lua
function sfml.Sensor.is_available(sensor: sfml.SensorType): sfml.Bool
```



### sfml.Sensor.set_enabled

```lua
function sfml.Sensor.set_enabled(sensor: sfml.SensorType, enabled: sfml.Bool): void
```



### sfml.Sensor.get_value

```lua
function sfml.Sensor.get_value(sensor: sfml.SensorType): sfml.Vector3f
```



### sfml.Touch

```lua
global sfml.Touch = @record{}
```



### sfml.Touch.is_down

```lua
function sfml.Touch.is_down(finger: cuint): sfml.Bool
```



### sfml.Touch.get_position

```lua
function sfml.Touch.get_position(finger: cuint, relativeTo: *sfml.Window <const>): sfml.Vector2i
```



### sfml.EventType

```lua
global sfml.EventType: type = @enum(cint) {
  Closed = 0,
  Resized,
  LostFocus,
  GainedFocus,
  TextEntered,
  KeyPressed,
  KeyReleased,
  MouseWheelMoved,
  MouseWheelScrolled,
  MouseButtonPressed,
  MouseButtonReleased,
  MouseMoved,
  MouseEntered,
  KeyPressed,
  KeyReleased,
  MouseWheelMoved,
  MouseWheelScrolled,
  MouseButtonPressed,
  MouseButtonReleased,
  MouseMoved,
  MouseEntered,
  MouseLeft,
  JoystickButtonPressed,
  JoystickButtonReleased,
  JoystickMoved,
  JoystickConnected,
  JoystickDisconnected,
  TouchBegan,
  TouchMoved,
  TouchEnded,
  SensorChanged,
  Count
}
```

Event

### sfml.KeyEvent

```lua
global sfml.KeyEvent: type = @record {
  type: sfml.EventType,
  code: sfml.KeyCode,
  alt: sfml.Bool,
  control: sfml.Bool,
  shift: sfml.Bool,
  system: sfml.Bool
}
```



### sfml.TextEvent

```lua
global sfml.TextEvent: type = @record {
  type: sfml.EventType,
  unicode: sfml.Uint32
}
```



### sfml.MouseMoveEvent

```lua
global sfml.MouseMoveEvent: type = @record {
  type: sfml.EventType,
  x: cint,
  y: cint
}
```



### sfml.MouseButtonEvent

```lua
global sfml.MouseButtonEvent: type = @record {
  type: sfml.EventType,
  button: sfml.MouseButton,
  x: cint,
  y: cint
}
```



### sfml.MouseWheelEvent

```lua
global sfml.MouseWheelEvent: type = @record {
  type: sfml.EventType,
  delta: cint,
  x: cint,
  y: cint
}
```



### sfml.MouseWheelScrollEvent

```lua
global sfml.MouseWheelScrollEvent: type = @record {
  type: sfml.EventType,
  wheel: sfml.MouseWheel,
  delta: cint,
  x: cint,
  y: cint
}
```



### sfml.JoystickMoveEvent

```lua
global sfml.JoystickMoveEvent: type = @record {
  type: sfml.EventType,
  joystickId: cuint,
  axis: sfml.JoystickAxis,
  position: float32
}
```



### sfml.JoystickButtonEvent

```lua
global sfml.JoystickButtonEvent: type = @record {
  type: sfml.EventType,
  joystickId: cuint,
  button: cuint
}
```



### sfml.JoystickConnectEvent

```lua
global sfml.JoystickConnectEvent: type = @record {
  type: sfml.EventType,
  joystickId: cuint
}
```



### sfml.SizeEvent

```lua
global sfml.SizeEvent: type = @record {
  type: sfml.EventType,
  width: cuint,
  height: cuint
}
```



### sfml.TouchEvent

```lua
global sfml.TouchEvent: type = @record {
  type: sfml.EventType,
  finger: cuint,
  x: cint,
  y: cint
}
```



### sfml.SensorEvent

```lua
global sfml.SensorEvent: type = @record {
  type: sfml.EventType,
  sensorType: sfml.SensorType,
  x: float32,
  y: float32,
  z: float32
}
```



### sfml.Event

```lua
global sfml.Event: type = @union {
  type: sfml.EventType,
  size: sfml.SizeEvent,
  key: sfml.KeyEvent,
  text: sfml.TextEvent,
  mouseMove: sfml.MouseMoveEvent,
  mouseButton: sfml.MouseButtonEvent,
  mouseWheel: sfml.MouseWheelEvent,
  mouseWheelScroll: sfml.MouseWheelScrollEvent,
  joystickMove: sfml.JoystickMoveEvent,
  joystickButton: sfml.JoystickMoveEvent,
  joystickConnect: sfml.JoystickMoveEvent,
  touch: sfml.TouchEvent,
  sensor: sfml.SensorEvent,
}
```



### sfml.WindowStyle

```lua
global sfml.WindowStyle: type = @enum(cint) {
  None = 0,
  Titlebar = 1 << 0,
  Resize = 1 << 1,
  Close = 1 << 2,
  Fullscreen = 1 << 3
}
```



### sfml.DefaultStyle

```lua
global sfml.DefaultStyle: cint
```



### sfml.ContextAttribute

```lua
global sfml.ContextAttribute: type = @enum(cint) {
  Default = 0,
  Core = 1 << 0,
  Debug = 1 << 2,
}
```



### sfml.ContextSettings

```lua
global sfml.ContextSettings: type = @record {
  depthBits: cuint,
  stencilBits: cuint,
  antialiasingLevel: cuint,
  majorVersion: cuint,
  minorVersion: cuint,
  attributeFlags: sfml.Uint32,
  sRgbCapable: sfml.Bool,
}
```



### sfml.Window.create

```lua
function sfml.Window.create(mode: sfml.VideoMode, title: cstring <const>, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.Window
```

Window

### sfml.Window.create_unicode

```lua
function sfml.Window.create_unicode(mode: sfml.VideoMode, title: *[0]sfml.Uint32 <const>, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.Window
```



### sfml.Window.create_from_handle

```lua
function sfml.Window.create_from_handle(handle: sfml.WindowHandle, settings: *sfml.ContextSettings <const>): *sfml.Window
```



### sfml.Window.destroy

```lua
function sfml.Window.destroy(self: *sfml.Window): void
```



### sfml.Window.close

```lua
function sfml.Window.close(self: *sfml.Window): void
```



### sfml.Window.is_open

```lua
function sfml.Window.is_open(self: *sfml.Window <const>): sfml.Bool
```



### sfml.Window.get_settings

```lua
function sfml.Window.get_settings(self: *sfml.Window <const>): sfml.ContextSettings
```



### sfml.Window.poll_event

```lua
function sfml.Window.poll_event(self: *sfml.Window, event: *sfml.Event): sfml.Bool
```



### sfml.Window.wait_event

```lua
function sfml.Window.wait_event(self: *sfml.Window, event: *sfml.Event): sfml.Bool
```



### sfml.Window.get_position

```lua
function sfml.Window.get_position(self: *sfml.Window <const>): sfml.Vector2i
```



### sfml.Window.set_position

```lua
function sfml.Window.set_position(self: *sfml.Window, position: sfml.Vector2i): void
```



### sfml.Window.get_size

```lua
function sfml.Window.get_size(self: *sfml.Window <const>): sfml.Vector2u
```



### sfml.Window.set_size

```lua
function sfml.Window.set_size(self: *sfml.Window, size: sfml.Vector2u): void
```



### sfml.Window.set_title

```lua
function sfml.Window.set_title(self: *sfml.Window, title: cstring <const>): void
```



### sfml.Window.set_unicode_title

```lua
function sfml.Window.set_unicode_title(self: *sfml.Window, title: *[0]sfml.Uint32 <const>): void
```



### sfml.Window.set_icon

```lua
function sfml.Window.set_icon(self: *sfml.Window, width: cuint, height: cuint, pixels: *[0]sfml.Uint8): void
```



### sfml.Window.set_visible

```lua
function sfml.Window.set_visible(self: *sfml.Window, visible: sfml.Bool): void
```



### sfml.Window.set_vsync_enabled

```lua
function sfml.Window.set_vsync_enabled(self: *sfml.Window, enabled: sfml.Bool): void
```



### sfml.Window.set_mouse_cursor_visible

```lua
function sfml.Window.set_mouse_cursor_visible(self: *sfml.Window, visible: sfml.Bool): void
```



### sfml.Window.set_mouse_cursor_grabbed

```lua
function sfml.Window.set_mouse_cursor_grabbed(self: *sfml.Window, grabbed: sfml.Bool): void
```



### sfml.Window.set_mouse_cursor

```lua
function sfml.Window.set_mouse_cursor(self: *sfml.Window, cursor: *sfml.Cursor <const>): void
```



### sfml.Window.set_key_repeat_enabled

```lua
function sfml.Window.set_key_repeat_enabled(self: *sfml.Window, enabled: sfml.Bool): void
```



### sfml.Window.set_framerate_limit

```lua
function sfml.Window.set_framerate_limit(self: *sfml.Window, threshold: float32): void
```



### sfml.Window.set_active

```lua
function sfml.Window.set_active(self: *sfml.Window, active: sfml.Bool): void
```



### sfml.Window.request_focus

```lua
function sfml.Window.request_focus(self: *sfml.Window): void
```



### sfml.Window.has_focus

```lua
function sfml.Window.has_focus(self: *sfml.Window <const>): sfml.Bool
```



### sfml.Window.display

```lua
function sfml.Window.display(self: *sfml.Window): void
```



### sfml.Window.get_system_handle

```lua
function sfml.Window.get_system_handle(self: *sfml.Window <const>): sfml.WindowHandle
```



### sfml.Context.create

```lua
function sfml.Context.create(): *sfml.Context
```

Context

### sfml.Context.destroy

```lua
function sfml.Context.destroy(self: *sfml.Context): void
```



### sfml.Context.set_active

```lua
function sfml.Context.set_active(self: *sfml.Context, active: sfml.Bool): sfml.Bool
```



### sfml.Context.get_settings

```lua
function sfml.Context.get_settings(self: *sfml.Context <const>): sfml.ContextSettings
```



### sfml.Context.get_active_context_id

```lua
function sfml.Context.get_active_context_id(): sfml.Uint64
```



### sfml.CircleShape

```lua
global sfml.CircleShape: type = @record {}
```

Graphics

### sfml.ConvexShape

```lua
global sfml.ConvexShape: type = @record {}
```



### sfml.Font

```lua
global sfml.Font: type = @record {}
```



### sfml.Image

```lua
global sfml.Image: type = @record {}
```



### sfml.Shader

```lua
global sfml.Shader: type = @record {}
```



### sfml.RectangleShape

```lua
global sfml.RectangleShape: type = @record {}
```



### sfml.RenderTexture

```lua
global sfml.RenderTexture: type = @record {}
```



### sfml.RenderWindow

```lua
global sfml.RenderWindow: type = @record {}
```



### sfml.Shape

```lua
global sfml.Shape: type = @record {}
```



### sfml.Sprite

```lua
global sfml.Sprite: type = @record {}
```



### sfml.Text

```lua
global sfml.Text: type = @record {}
```



### sfml.Texture

```lua
global sfml.Texture: type = @record {}
```



### sfml.Transformable

```lua
global sfml.Transformable: type = @record {}
```



### sfml.VertexArray

```lua
global sfml.VertexArray: type = @record {}
```



### sfml.VertexBuffer

```lua
global sfml.VertexBuffer: type = @record {}
```



### sfml.View

```lua
global sfml.View: type = @record {}
```



### sfml.BlendFactor

```lua
global sfml.BlendFactor: type = @enum(cint) {
  Zero = 0,
  One,
  SrcColor,
  OneMinusSrcColor,
  DstColor,
  OneMinusDstColor,
  SrcAlpha,
  OneMinusSrcAlpha,
  DstAlpha,
  OneMinusDstAlpha
}
```



### sfml.BlendEquation

```lua
global sfml.BlendEquation: type = @enum(cint) {
  Add = 0,
  Subtract,
  ReverseSubtract
}
```



### sfml.BlendMode

```lua
global sfml.BlendMode: type = @record {
  colorSrcFactor: sfml.BlendFactor,
  colorDstFactor: sfml.BlendFactor,
  colorEquation: sfml.BlendEquation,
  alphaSrcFactor: sfml.BlendFactor,
  alphaDstFactor: sfml.BlendFactor,
  alphaEquation: sfml.BlendEquation
}
```



### sfml.BlendAlpha

```lua
global sfml.BlendAlpha: sfml.BlendMode
```



### sfml.BlendAdd

```lua
global sfml.BlendAdd: sfml.BlendMode
```



### sfml.BlendMultiply

```lua
global sfml.BlendMultiply: sfml.BlendMode
```



### sfml.BlendNone

```lua
global sfml.BlendNone: sfml.BlendMode
```



### sfml.FloatRect

```lua
global sfml.FloatRect: type = @record {
  left: float32,
  top: float32,
  width: float32,
  height: float32
}
```



### sfml.IntRect

```lua
global sfml.IntRect: type = @record {
  left: cint,
  top: cint,
  width: cint,
  height: cint
}
```



### sfml.FloatRect.contains

```lua
function sfml.FloatRect.contains(self: *sfml.FloatRect <const>, x: float32, y: float32): sfml.Bool
```



### sfml.IntRect.contains

```lua
function sfml.IntRect.contains(self: *sfml.IntRect <const>, x: cint, y: cint): sfml.Bool
```



### sfml.FloatRect.intersects

```lua
function sfml.FloatRect.intersects(self: *sfml.FloatRect <const>, rect2: *sfml.FloatRect <const>, intersection: *sfml.FloatRect): sfml.Bool
```



### sfml.IntRect.intersects

```lua
function sfml.IntRect.intersects(self: *sfml.IntRect <const>, rect2: *sfml.IntRect <const>, intersection: *sfml.IntRect): sfml.Bool
```



### sfml.Color

```lua
global sfml.Color: type = @record {
  r: sfml.Uint8,
  g: sfml.Uint8,
  b: sfml.Uint8,
  a: sfml.Uint8
}
```



### sfml.Transform

```lua
global sfml.Transform: type = @record {
  matrix: [9]float32
}
```



### sfml.Glyph

```lua
global sfml.Glyph: type = @record {
  advance: float32,
  bounds: sfml.FloatRect,
  textureRect: sfml.IntRect
}
```



### sfml.Vertex

```lua
global sfml.Vertex: type = @record {
  position: sfml.Vector2f,
  color: sfml.Color,
  texCoords: sfml.Vector2f
}
```



### sfml.PrimitiveType

```lua
global sfml.PrimitiveType: type = @enum(cint) {
  Points = 0,
  Lines,
  LineStrip,
  Triangles,
  TriangleStrip,
  TriangleFan,
  Quads
}
```



### sfml.LinesStrip

```lua
global sfml.LinesStrip: cint
```



### sfml.TrianglesStrip

```lua
global sfml.TrianglesStrip: cint
```



### sfml.TrianglesFan

```lua
global sfml.TrianglesFan: cint
```



### sfml.RenderStates

```lua
global sfml.RenderStates: type = @record {
  blendMode: sfml.BlendMode,
  transform: sfml.Transform,
  texture: *sfml.Texture,
  shader: *sfml.Shader
}
```



### sfml.FontInfo

```lua
global sfml.FontInfo: type = @record {
  family: cstring
}
```



### sfml.Black

```lua
global sfml.Black: sfml.Color
```

Color: Constants

### sfml.White

```lua
global sfml.White: sfml.Color
```



### sfml.Red

```lua
global sfml.Red: sfml.Color
```



### sfml.Green

```lua
global sfml.Green: sfml.Color
```



### sfml.Blue

```lua
global sfml.Blue: sfml.Color
```



### sfml.Yellow

```lua
global sfml.Yellow: sfml.Color
```



### sfml.Magenta

```lua
global sfml.Magenta: sfml.Color
```



### sfml.Cyan

```lua
global sfml.Cyan: sfml.Color
```



### sfml.Transparent

```lua
global sfml.Transparent: sfml.Color
```



### sfml.Color.from_rgb

```lua
function sfml.Color.from_rgb(red: sfml.Uint8, green: sfml.Uint8, blue: sfml.Uint8): sfml.Color
```

Color

### sfml.Color.from_rgba

```lua
function sfml.Color.from_rgba(red: sfml.Uint8, green: sfml.Uint8, blue: sfml.Uint8, alpha: sfml.Uint8): sfml.Color
```



### sfml.Color.from_integer

```lua
function sfml.Color.from_integer(color: sfml.Uint32): sfml.Color
```



### sfml.Color.to_integer

```lua
function sfml.Color.to_integer(color: sfml.Color): sfml.Uint32
```



### sfml.Color.add

```lua
function sfml.Color.add(color1: sfml.Color, color2: sfml.Color): sfml.Color
```



### sfml.Color.subtract

```lua
function sfml.Color.subtract(color1: sfml.Color, color2: sfml.Color): sfml.Color
```



### sfml.Color.modulate

```lua
function sfml.Color.modulate(color1: sfml.Color, color2: sfml.Color): sfml.Color
```



### sfml.VertexArray.create

```lua
function sfml.VertexArray.create(): *sfml.VertexArray
```

Vertex Array

### sfml.VertexArray.copy

```lua
function sfml.VertexArray.copy(self: *sfml.VertexArray <const>): *sfml.VertexArray
```



### sfml.VertexArray.destroy

```lua
function sfml.VertexArray.destroy(self: *sfml.VertexArray): void
```



### sfml.VertexArray.get_vertex_count

```lua
function sfml.VertexArray.get_vertex_count(self: *sfml.VertexArray <const>): csize
```



### sfml.VertexArray.get_vertex

```lua
function sfml.VertexArray.get_vertex(self: *sfml.VertexArray, index: csize): *sfml.Vertex
```



### sfml.VertexArray.clear

```lua
function sfml.VertexArray.clear(self: *sfml.VertexArray): void
```



### sfml.VertexArray.resize

```lua
function sfml.VertexArray.resize(self: *sfml.VertexArray, vertexCount: csize): void
```



### sfml.VertexArray.append

```lua
function sfml.VertexArray.append(self: *sfml.VertexArray, vertex: sfml.Vertex): void
```



### sfml.VertexArray.get_primitive_type

```lua
function sfml.VertexArray.get_primitive_type(self: *sfml.VertexArray): sfml.PrimitiveType
```



### sfml.VertexArray.set_primitive_type

```lua
function sfml.VertexArray.set_primitive_type(self: *sfml.VertexArray, type: sfml.PrimitiveType): void
```



### sfml.VertexArray.get_bounds

```lua
function sfml.VertexArray.get_bounds(self: *sfml.VertexArray): sfml.FloatRect
```



### sfml.Transformable.create

```lua
function sfml.Transformable.create(): *sfml.Transformable
```

Transformable

### sfml.Transformable.copy

```lua
function sfml.Transformable.copy(self: *sfml.Transformable <const>): *sfml.Transformable
```



### sfml.Transformable.destroy

```lua
function sfml.Transformable.destroy(self: *sfml.Transformable): void
```



### sfml.Transformable.get_position

```lua
function sfml.Transformable.get_position(self: *sfml.Transformable <const>): sfml.Vector2f
```



### sfml.Transformable.set_position

```lua
function sfml.Transformable.set_position(self: *sfml.Transformable, position: sfml.Vector2f): void
```



### sfml.Transformable.get_rotation

```lua
function sfml.Transformable.get_rotation(self: *sfml.Transformable <const>): float32
```



### sfml.Transformable.set_rotation

```lua
function sfml.Transformable.set_rotation(self: *sfml.Transformable, angle: float32): void
```



### sfml.Transformable.get_scale

```lua
function sfml.Transformable.get_scale(self: *sfml.Transformable <const>): sfml.Vector2f
```



### sfml.Transformable.set_scale

```lua
function sfml.Transformable.set_scale(self: *sfml.Transformable, scale: sfml.Vector2f): void
```



### sfml.Transformable.get_origin

```lua
function sfml.Transformable.get_origin(self: *sfml.Transformable <const>): sfml.Vector2f
```



### sfml.Transformable.set_origin

```lua
function sfml.Transformable.set_origin(self: *sfml.Transformable, origin: sfml.Vector2f): void
```



### sfml.Transformable.move

```lua
function sfml.Transformable.move(self: *sfml.Transformable, offset: sfml.Vector2f): void
```



### sfml.Transformable.rotate

```lua
function sfml.Transformable.rotate(self: *sfml.Transformable, angle: float32): void
```



### sfml.Transformable.scale

```lua
function sfml.Transformable.scale(self: *sfml.Transformable, factors: sfml.Vector2f): void
```



### sfml.Transformable.get_transform

```lua
function sfml.Transformable.get_transform(self: *sfml.Transformable <const>): sfml.Transform
```



### sfml.Transformable.get_inverse_transform

```lua
function sfml.Transformable.get_inverse_transform(self: *sfml.Transformable <const>): sfml.Transform
```



### sfml.Transform_Identity

```lua
global sfml.Transform_Identity: sfml.Transform
```

Transform

### sfml.Transform.from_matrix

```lua
function sfml.Transform.from_matrix(a00: float32, a01: float32, a02: float32, a10: float32, a11: float32, a12: float32, a20: float32, a21: float32, a22: float32): sfml.Transform
```



### sfml.Transform.get_matrix

```lua
function sfml.Transform.get_matrix(self: *sfml.Transform <const>, matrix: *[0]float32): void
```



### sfml.Transform.get_inverse

```lua
function sfml.Transform.get_inverse(self: *sfml.Transform <const>): sfml.Transform
```



### sfml.Transform.transform_point

```lua
function sfml.Transform.transform_point(self: *sfml.Transform <const>, point: sfml.Vector2f): sfml.Vector2f
```



### sfml.Transform.transform_rect

```lua
function sfml.Transform.transform_rect(self: *sfml.Transform <const>, rectangle: sfml.FloatRect): sfml.FloatRect
```



### sfml.Transform.combine

```lua
function sfml.Transform.combine(self: *sfml.Transform, other: *sfml.Transform <const>): sfml.FloatRect
```



### sfml.Transform.translate

```lua
function sfml.Transform.translate(self: *sfml.Transform, x: float32, y: float32): void
```



### sfml.Transform.rotate

```lua
function sfml.Transform.rotate(self: *sfml.Transform, angle: float32): void
```



### sfml.Transform.rotate_with_center

```lua
function sfml.Transform.rotate_with_center(self: *sfml.Transform, angle: float32, centerX: float32, centerY: float32): void
```



### sfml.Transform.scale

```lua
function sfml.Transform.scale(self: *sfml.Transform, scaleX: float32, scaleY: float32): void
```



### sfml.Transform.scale_with_center

```lua
function sfml.Transform.scale_with_center(self: *sfml.Transform, scaleX: float32, scaleY: float32, centerX: float32, centerY: float32): void
```



### sfml.Transform.equal

```lua
function sfml.Transform.equal(self: *sfml.Transform, right: *sfml.Transform): sfml.Bool
```



### sfml.GlslVec2

```lua
global sfml.GlslVec2: type = @sfml.Vector2f
```

OpenGL

### sfml.GlslIvec2

```lua
global sfml.GlslIvec2: type = @sfml.Vector2i
```



### sfml.GlslBvec2

```lua
global sfml.GlslBvec2: type = @record {
  x: sfml.Bool,
  y: sfml.Bool
}
```



### sfml.GlslVec3

```lua
global sfml.GlslVec3: type = @sfml.Vector3f
```



### sfml.GlslIvec3

```lua
global sfml.GlslIvec3: type = @record {
  x: cint,
  y: cint,
  z: cint
}
```



### sfml.GlslBvec3

```lua
global sfml.GlslBvec3: type = @record {
  x: sfml.Bool,
  y: sfml.Bool,
  z: sfml.Bool
}
```



### sfml.GlslVec4

```lua
global sfml.GlslVec4: type = @record {
  x: float32,
  y: float32,
  z: float32,
  w: float32
}
```



### sfml.GlslIvec4

```lua
global sfml.GlslIvec4: type = @record {
  x: cint,
  y: cint,
  z: cint,
  w: cint
}
```



### sfml.GlslBvec4

```lua
global sfml.GlslBvec4: type = @record {
  x: sfml.Bool,
  y: sfml.Bool,
  z: sfml.Bool,
  w: sfml.Bool
}
```



### sfml.GlslMat3

```lua
global sfml.GlslMat3: type = @record {
  array: [9]float32
}
```



### sfml.GlslMat4

```lua
global sfml.GlslMat4: type = @record {
  array: [16]float32
}
```



### sfml.View.create

```lua
function sfml.View.create(): *sfml.View
```

View

### sfml.View.create_from_rect

```lua
function sfml.View.create_from_rect(rectangle: sfml.FloatRect): *sfml.View
```



### sfml.View.copy

```lua
function sfml.View.copy(self: *sfml.View <const>): *sfml.View
```



### sfml.View.destroy

```lua
function sfml.View.destroy(self: *sfml.View): void
```



### sfml.View.get_center

```lua
function sfml.View.get_center(self: *sfml.View <const>): sfml.Vector2f
```



### sfml.View.set_center

```lua
function sfml.View.set_center(self: *sfml.View, center: sfml.Vector2f): void
```



### sfml.View.get_size

```lua
function sfml.View.get_size(self: *sfml.View <const>): sfml.Vector2f
```



### sfml.View.set_size

```lua
function sfml.View.set_size(self: *sfml.View, size: sfml.Vector2f): void
```



### sfml.View.get_rotation

```lua
function sfml.View.get_rotation(self: *sfml.View <const>): float32
```



### sfml.View.set_rotation

```lua
function sfml.View.set_rotation(self: *sfml.View, angle: float32): void
```



### sfml.View.get_viewport

```lua
function sfml.View.get_viewport(self: *sfml.View <const>): sfml.FloatRect
```



### sfml.View.set_viewport

```lua
function sfml.View.set_viewport(self: *sfml.View, viewport: sfml.FloatRect): void
```



### sfml.View.reset

```lua
function sfml.View.reset(self: *sfml.View, rectangle: sfml.FloatRect): void
```



### sfml.View.move

```lua
function sfml.View.move(self: *sfml.View, offset: sfml.Vector2f): void
```



### sfml.View.rotate

```lua
function sfml.View.rotate(self: *sfml.View, angle: float32): void
```



### sfml.View.zoom

```lua
function sfml.View.zoom(self: *sfml.View, factor: float32): void
```



### sfml.Font.create_from_file

```lua
function sfml.Font.create_from_file(filename: cstring <const>): *sfml.Font
```

Font

### sfml.Font.create_from_memory

```lua
function sfml.Font.create_from_memory(data: pointer <const>, sizeInBytes: csize): *sfml.Font
```



### sfml.Font.create_from_stream

```lua
function sfml.Font.create_from_stream(stream: *sfml.InputStream): *sfml.Font
```



### sfml.Font.copy

```lua
function sfml.Font.copy(self: *sfml.Font <const>): *sfml.Font
```



### sfml.Font.destroy

```lua
function sfml.Font.destroy(self: *sfml.Font): void
```



### sfml.Font.get_glyph

```lua
function sfml.Font.get_glyph(self: *sfml.Font <const>, codePoint: sfml.Uint32, characterSize: cuint, bold: sfml.Bool, outlineThickness: float32): sfml.Glyph
```



### sfml.Font.get_kerning

```lua
function sfml.Font.get_kerning(self: *sfml.Font <const>, first: sfml.Uint32, second: sfml.Uint32, characterSize: cuint): float32
```



### sfml.Font.get_line_spacing

```lua
function sfml.Font.get_line_spacing(self: *sfml.Font <const>, characterSize: cuint): float32
```



### sfml.Font.get_underline_position

```lua
function sfml.Font.get_underline_position(self: *sfml.Font <const>, characterSize: cuint): float32
```



### sfml.Font.get_underline_thickness

```lua
function sfml.Font.get_underline_thickness(self: *sfml.Font <const>, characterSize: cuint): float32
```



### sfml.Font.get_texture

```lua
function sfml.Font.get_texture(self: *sfml.Font <const>, characterSize: cuint): *sfml.Texture
```



### sfml.Font.get_info

```lua
function sfml.Font.get_info(self: *sfml.Font <const>): sfml.FontInfo
```



### sfml.Image.create

```lua
function sfml.Image.create(width: cuint, height: cuint): *sfml.Image
```

Image

### sfml.Image.create_from_color

```lua
function sfml.Image.create_from_color(width: cuint, height: cuint, color: sfml.Color): *sfml.Image
```



### sfml.Image.create_from_pixels

```lua
function sfml.Image.create_from_pixels(width: cuint, height: cuint, pixels: *[0]sfml.Uint8): *sfml.Image
```



### sfml.Image.create_from_file

```lua
function sfml.Image.create_from_file(filename: cstring <const>): *sfml.Image
```



### sfml.Image.create_from_memory

```lua
function sfml.Image.create_from_memory(data: pointer <const>, size: csize): *sfml.Image
```



### sfml.Image.create_from_stream

```lua
function sfml.Image.create_from_stream(stream: *sfml.InputStream): *sfml.Image
```



### sfml.Image.copy

```lua
function sfml.Image.copy(self: *sfml.Image <const>): *sfml.Image
```



### sfml.Image.destroy

```lua
function sfml.Image.destroy(self: *sfml.Image): void
```



### sfml.Image.save_to_file

```lua
function sfml.Image.save_to_file(self: *sfml.Image <const>, filename: cstring <const>): sfml.Bool
```



### sfml.Image.get_size

```lua
function sfml.Image.get_size(self: *sfml.Image <const>): sfml.Vector2u
```



### sfml.Image.create_mask_from_color

```lua
function sfml.Image.create_mask_from_color(self: *sfml.Image, color: sfml.Color, alpha: sfml.Uint8): void
```



### sfml.Image.copy_image

```lua
function sfml.Image.copy_image(self: *sfml.Image, source: *sfml.Image <const>, destX: cuint, destY: cuint, sourceRect: sfml.IntRect, applyAlpha: sfml.Bool): void
```



### sfml.Image.get_pixel

```lua
function sfml.Image.get_pixel(self: *sfml.Image <const>, x: cuint, y: cuint): sfml.Color
```



### sfml.Image.set_pixel

```lua
function sfml.Image.set_pixel(self: *sfml.Image, x: cuint, y: cuint, color: sfml.Color): void
```



### sfml.Image.get_pixels_ptr

```lua
function sfml.Image.get_pixels_ptr(self: *sfml.Image <const>): *[0]sfml.Uint8
```



### sfml.Image.flip_horizontally

```lua
function sfml.Image.flip_horizontally(self: *sfml.Image): void
```



### sfml.Image.flip_vertically

```lua
function sfml.Image.flip_vertically(self: *sfml.Image): void
```



### sfml.CircleShape.create

```lua
function sfml.CircleShape.create(): *sfml.CircleShape
```

Shape: Circle

### sfml.CircleShape.copy

```lua
function sfml.CircleShape.copy(self: *sfml.CircleShape <const>): *sfml.CircleShape
```



### sfml.CircleShape.destroy

```lua
function sfml.CircleShape.destroy(self: *sfml.CircleShape): void
```



### sfml.CircleShape.get_position

```lua
function sfml.CircleShape.get_position(self: *sfml.CircleShape <const>): sfml.Vector2f
```



### sfml.CircleShape.set_position

```lua
function sfml.CircleShape.set_position(self: *sfml.CircleShape, position: sfml.Vector2f): void
```



### sfml.CircleShape.get_rotation

```lua
function sfml.CircleShape.get_rotation(self: *sfml.CircleShape <const>): float32
```



### sfml.CircleShape.set_rotation

```lua
function sfml.CircleShape.set_rotation(self: *sfml.CircleShape, angle: float32): void
```



### sfml.CircleShape.get_scale

```lua
function sfml.CircleShape.get_scale(self: *sfml.CircleShape <const>): sfml.Vector2f
```



### sfml.CircleShape.set_scale

```lua
function sfml.CircleShape.set_scale(self: *sfml.CircleShape, scale: sfml.Vector2f): void
```



### sfml.CircleShape.get_origin

```lua
function sfml.CircleShape.get_origin(self: *sfml.CircleShape <const>): sfml.Vector2f
```



### sfml.CircleShape.set_origin

```lua
function sfml.CircleShape.set_origin(self: *sfml.CircleShape, origin: sfml.Vector2f): void
```



### sfml.CircleShape.get_transform

```lua
function sfml.CircleShape.get_transform(self: *sfml.CircleShape <const>): sfml.Transform
```



### sfml.CircleShape.get_inverse_transform

```lua
function sfml.CircleShape.get_inverse_transform(self: *sfml.CircleShape <const>): sfml.Transform
```



### sfml.CircleShape.get_texture

```lua
function sfml.CircleShape.get_texture(self: *sfml.CircleShape <const>): *sfml.Texture
```



### sfml.CircleShape.set_texture

```lua
function sfml.CircleShape.set_texture(self: *sfml.CircleShape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.CircleShape.get_texture_rect

```lua
function sfml.CircleShape.get_texture_rect(self: *sfml.CircleShape <const>): sfml.IntRect
```



### sfml.CircleShape.set_texture_rect

```lua
function sfml.CircleShape.set_texture_rect(self: *sfml.CircleShape, rect: sfml.IntRect): void
```



### sfml.CircleShape.get_fill_color

```lua
function sfml.CircleShape.get_fill_color(self: *sfml.CircleShape <const>): sfml.Color
```



### sfml.CircleShape.set_fill_color

```lua
function sfml.CircleShape.set_fill_color(self: *sfml.CircleShape, color: sfml.Color): void
```



### sfml.CircleShape.get_radius

```lua
function sfml.CircleShape.get_radius(self: *sfml.CircleShape <const>): float32
```



### sfml.CircleShape.set_radius

```lua
function sfml.CircleShape.set_radius(self: *sfml.CircleShape, radius: float32): void
```



### sfml.CircleShape.move

```lua
function sfml.CircleShape.move(self: *sfml.CircleShape, offset: sfml.Vector2f): void
```



### sfml.CircleShape.rotate

```lua
function sfml.CircleShape.rotate(self: *sfml.CircleShape, angle: float32): void
```



### sfml.CircleShape.scale

```lua
function sfml.CircleShape.scale(self: *sfml.CircleShape, factors: sfml.Vector2f): void
```



### sfml.CircleShape.set_outline_color

```lua
function sfml.CircleShape.set_outline_color(self: *sfml.CircleShape, color: sfml.Color): void
```



### sfml.CircleShape.set_outline_thickness

```lua
function sfml.CircleShape.set_outline_thickness(self: *sfml.CircleShape, thickness: float32): void
```



### sfml.CircleShape.get_outline_color

```lua
function sfml.CircleShape.get_outline_color(self: *sfml.CircleShape <const>): sfml.Color
```



### sfml.CircleShape.get_outline_thickness

```lua
function sfml.CircleShape.get_outline_thickness(self: *sfml.CircleShape <const>): float32
```



### sfml.CircleShape.get_point_count

```lua
function sfml.CircleShape.get_point_count(self: *sfml.CircleShape <const>): csize
```



### sfml.CircleShape.get_point

```lua
function sfml.CircleShape.get_point(self: *sfml.CircleShape <const>, index: csize): sfml.Vector2f
```



### sfml.CircleShape.set_point_count

```lua
function sfml.CircleShape.set_point_count(self: *sfml.CircleShape, count: csize): void
```



### sfml.CircleShape.get_local_bounds

```lua
function sfml.CircleShape.get_local_bounds(self: *sfml.CircleShape <const>): sfml.FloatRect
```



### sfml.CircleShape.get_global_bounds

```lua
function sfml.CircleShape.get_global_bounds(self: *sfml.CircleShape <const>): sfml.FloatRect
```



### sfml.ConvexShape.create

```lua
function sfml.ConvexShape.create(): *sfml.ConvexShape
```

Shape: Convex

### sfml.ConvexShape.copy

```lua
function sfml.ConvexShape.copy(self: *sfml.ConvexShape <const>): *sfml.ConvexShape
```



### sfml.ConvexShape.destroy

```lua
function sfml.ConvexShape.destroy(self: *sfml.ConvexShape): void
```



### sfml.ConvexShape.get_position

```lua
function sfml.ConvexShape.get_position(self: *sfml.ConvexShape <const>): sfml.Vector2f
```



### sfml.ConvexShape.set_position

```lua
function sfml.ConvexShape.set_position(self: *sfml.ConvexShape, position: sfml.Vector2f): void
```



### sfml.ConvexShape.get_rotation

```lua
function sfml.ConvexShape.get_rotation(self: *sfml.ConvexShape <const>): float32
```



### sfml.ConvexShape.set_rotation

```lua
function sfml.ConvexShape.set_rotation(self: *sfml.ConvexShape, angle: float32): void
```



### sfml.ConvexShape.get_scale

```lua
function sfml.ConvexShape.get_scale(self: *sfml.ConvexShape <const>): sfml.Vector2f
```



### sfml.ConvexShape.set_scale

```lua
function sfml.ConvexShape.set_scale(self: *sfml.ConvexShape, scale: sfml.Vector2f): void
```



### sfml.ConvexShape.get_origin

```lua
function sfml.ConvexShape.get_origin(self: *sfml.ConvexShape <const>): sfml.Vector2f
```



### sfml.ConvexShape.set_origin

```lua
function sfml.ConvexShape.set_origin(self: *sfml.ConvexShape, origin: sfml.Vector2f): void
```



### sfml.ConvexShape.get_texture

```lua
function sfml.ConvexShape.get_texture(self: *sfml.ConvexShape <const>): *sfml.Texture
```



### sfml.ConvexShape.set_texture

```lua
function sfml.ConvexShape.set_texture(self: *sfml.ConvexShape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.ConvexShape.get_fill_color

```lua
function sfml.ConvexShape.get_fill_color(self: *sfml.ConvexShape <const>): sfml.Color
```



### sfml.ConvexShape.set_fill_color

```lua
function sfml.ConvexShape.set_fill_color(self: *sfml.ConvexShape, color: sfml.Color): void
```



### sfml.ConvexShape.get_outline_color

```lua
function sfml.ConvexShape.get_outline_color(self: *sfml.ConvexShape <const>): sfml.Color
```



### sfml.ConvexShape.set_outline_color

```lua
function sfml.ConvexShape.set_outline_color(self: *sfml.ConvexShape, color: sfml.Color): void
```



### sfml.ConvexShape.get_outline_thickness

```lua
function sfml.ConvexShape.get_outline_thickness(self: *sfml.ConvexShape <const>): float32
```



### sfml.ConvexShape.set_outline_thickness

```lua
function sfml.ConvexShape.set_outline_thickness(self: *sfml.ConvexShape, thickness: float32): void
```



### sfml.ConvexShape.get_texture_rect

```lua
function sfml.ConvexShape.get_texture_rect(self: *sfml.ConvexShape <const>): sfml.IntRect
```



### sfml.ConvexShape.set_texture_rect

```lua
function sfml.ConvexShape.set_texture_rect(self: *sfml.ConvexShape, rect: sfml.IntRect): void
```



### sfml.ConvexShape.get_radius

```lua
function sfml.ConvexShape.get_radius(self: *sfml.ConvexShape <const>): float32
```



### sfml.ConvexShape.set_radius

```lua
function sfml.ConvexShape.set_radius(self: *sfml.ConvexShape, radius: float32): void
```



### sfml.ConvexShape.get_point_count

```lua
function sfml.ConvexShape.get_point_count(self: *sfml.ConvexShape <const>): csize
```



### sfml.ConvexShape.set_point_count

```lua
function sfml.ConvexShape.set_point_count(self: *sfml.ConvexShape, count: csize): void
```



### sfml.ConvexShape.get_transform

```lua
function sfml.ConvexShape.get_transform(self: *sfml.ConvexShape <const>): sfml.Transform
```



### sfml.ConvexShape.get_inverse_transform

```lua
function sfml.ConvexShape.get_inverse_transform(self: *sfml.ConvexShape <const>): sfml.Transform
```



### sfml.ConvexShape.move

```lua
function sfml.ConvexShape.move(self: *sfml.ConvexShape, offset: sfml.Vector2f): void
```



### sfml.ConvexShape.rotate

```lua
function sfml.ConvexShape.rotate(self: *sfml.ConvexShape, angle: float32): void
```



### sfml.ConvexShape.scale

```lua
function sfml.ConvexShape.scale(self: *sfml.ConvexShape, factors: sfml.Vector2f): void
```



### sfml.ConvexShape.get_point

```lua
function sfml.ConvexShape.get_point(self: *sfml.ConvexShape <const>, index: csize): sfml.Vector2f
```



### sfml.ConvexShape.get_local_bounds

```lua
function sfml.ConvexShape.get_local_bounds(self: *sfml.ConvexShape <const>): sfml.FloatRect
```



### sfml.ConvexShape.get_global_bounds

```lua
function sfml.ConvexShape.get_global_bounds(self: *sfml.ConvexShape <const>): sfml.FloatRect
```



### sfml.RectangleShape.create

```lua
function sfml.RectangleShape.create(): *sfml.RectangleShape
```

Rectangle

### sfml.RectangleShape.copy

```lua
function sfml.RectangleShape.copy(self: *sfml.RectangleShape <const>): *sfml.RectangleShape
```



### sfml.RectangleShape.destroy

```lua
function sfml.RectangleShape.destroy(self: *sfml.RectangleShape): void
```



### sfml.RectangleShape.get_position

```lua
function sfml.RectangleShape.get_position(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_position

```lua
function sfml.RectangleShape.set_position(self: *sfml.RectangleShape, position: sfml.Vector2f): void
```



### sfml.RectangleShape.get_rotation

```lua
function sfml.RectangleShape.get_rotation(self: *sfml.RectangleShape <const>): float32
```



### sfml.RectangleShape.set_rotation

```lua
function sfml.RectangleShape.set_rotation(self: *sfml.RectangleShape, angle: float32): void
```



### sfml.RectangleShape.get_scale

```lua
function sfml.RectangleShape.get_scale(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_scale

```lua
function sfml.RectangleShape.set_scale(self: *sfml.RectangleShape, scale: sfml.Vector2f): void
```



### sfml.RectangleShape.get_origin

```lua
function sfml.RectangleShape.get_origin(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_origin

```lua
function sfml.RectangleShape.set_origin(self: *sfml.RectangleShape, origin: sfml.Vector2f): void
```



### sfml.RectangleShape.get_texture

```lua
function sfml.RectangleShape.get_texture(self: *sfml.RectangleShape <const>): *sfml.Texture
```



### sfml.RectangleShape.set_texture

```lua
function sfml.RectangleShape.set_texture(self: *sfml.RectangleShape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.RectangleShape.get_texture_rect

```lua
function sfml.RectangleShape.get_texture_rect(self: *sfml.RectangleShape <const>): sfml.IntRect
```



### sfml.RectangleShape.set_texture_rect

```lua
function sfml.RectangleShape.set_texture_rect(self: *sfml.RectangleShape, rect: sfml.IntRect): void
```



### sfml.RectangleShape.get_fill_color

```lua
function sfml.RectangleShape.get_fill_color(self: *sfml.RectangleShape <const>): sfml.Color
```



### sfml.RectangleShape.set_fill_color

```lua
function sfml.RectangleShape.set_fill_color(self: *sfml.RectangleShape, color: sfml.Color): void
```



### sfml.RectangleShape.get_outline_color

```lua
function sfml.RectangleShape.get_outline_color(self: *sfml.RectangleShape <const>): sfml.Color
```



### sfml.RectangleShape.set_outline_color

```lua
function sfml.RectangleShape.set_outline_color(self: *sfml.RectangleShape, color: sfml.Color): void
```



### sfml.RectangleShape.get_outline_thickness

```lua
function sfml.RectangleShape.get_outline_thickness(self: *sfml.RectangleShape <const>): float32
```



### sfml.RectangleShape.set_outline_thickness

```lua
function sfml.RectangleShape.set_outline_thickness(self: *sfml.RectangleShape, thickness: float32): void
```



### sfml.RectangleShape.get_size

```lua
function sfml.RectangleShape.get_size(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_size

```lua
function sfml.RectangleShape.set_size(self: *sfml.RectangleShape, size: sfml.Vector2f): void
```



### sfml.RectangleShape.get_point_count

```lua
function sfml.RectangleShape.get_point_count(self: *sfml.RectangleShape <const>): csize
```



### sfml.RectangleShape.set_point_count

```lua
function sfml.RectangleShape.set_point_count(self: *sfml.RectangleShape, count: csize): void
```



### sfml.RectangleShape.move

```lua
function sfml.RectangleShape.move(self: *sfml.RectangleShape, offset: sfml.Vector2f): void
```



### sfml.RectangleShape.rotate

```lua
function sfml.RectangleShape.rotate(self: *sfml.RectangleShape, angle: float32): void
```



### sfml.RectangleShape.scale

```lua
function sfml.RectangleShape.scale(self: *sfml.RectangleShape, factors: sfml.Vector2f): void
```



### sfml.RectangleShape.get_transform

```lua
function sfml.RectangleShape.get_transform(self: *sfml.RectangleShape <const>): sfml.Transform
```



### sfml.RectangleShape.get_inverse_transform

```lua
function sfml.RectangleShape.get_inverse_transform(self: *sfml.RectangleShape <const>): sfml.Transform
```



### sfml.RectangleShape.get_point

```lua
function sfml.RectangleShape.get_point(self: *sfml.RectangleShape <const>, index: csize): sfml.Vector2f
```



### sfml.RectangleShape.get_local_bounds

```lua
function sfml.RectangleShape.get_local_bounds(self: *sfml.RectangleShape <const>): sfml.FloatRect
```



### sfml.RectangleShape.get_global_bounds

```lua
function sfml.RectangleShape.get_global_bounds(self: *sfml.RectangleShape <const>): sfml.FloatRect
```



### sfml.RenderTexture.create

```lua
function sfml.RenderTexture.create(width: cuint, height: cuint, depthBuffer: sfml.Bool): *sfml.RenderTexture
```

Render Texture

### sfml.RenderTexture.create_with_settings

```lua
function sfml.RenderTexture.create_with_settings(width: cuint, height: cuint, settings: *sfml.ContextSettings <const>): *sfml.RenderTexture
```



### sfml.RenderTexture.destroy

```lua
function sfml.RenderTexture.destroy(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.get_size

```lua
function sfml.RenderTexture.get_size(self: *sfml.RenderTexture <const>): sfml.Vector2u
```



### sfml.RenderTexture.set_active

```lua
function sfml.RenderTexture.set_active(self: *sfml.RenderTexture, active: sfml.Bool): sfml.Vector2u
```



### sfml.RenderTexture.display

```lua
function sfml.RenderTexture.display(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.clear

```lua
function sfml.RenderTexture.clear(self: *sfml.RenderTexture, color: sfml.Color): void
```



### sfml.RenderTexture.get_view

```lua
function sfml.RenderTexture.get_view(self: *sfml.RenderTexture <const>): *sfml.View
```



### sfml.RenderTexture.set_view

```lua
function sfml.RenderTexture.set_view(self: *sfml.RenderTexture, view: *sfml.View <const>): void
```



### sfml.RenderTexture.get_default_view

```lua
function sfml.RenderTexture.get_default_view(self: *sfml.RenderTexture <const>): *sfml.View
```



### sfml.RenderTexture.get_viewport

```lua
function sfml.RenderTexture.get_viewport(self: *sfml.RenderTexture <const>, view: *sfml.View <const>): sfml.IntRect
```



### sfml.RenderTexture.map_pixel_to_coords

```lua
function sfml.RenderTexture.map_pixel_to_coords(self: *sfml.RenderTexture <const>, point: sfml.Vector2i, view: *sfml.View <const>): sfml.Vector2f
```



### sfml.RenderTexture.map_coords_to_pixel

```lua
function sfml.RenderTexture.map_coords_to_pixel(self: *sfml.RenderTexture <const>, point: sfml.Vector2f, view: *sfml.View <const>): sfml.Vector2i
```



### sfml.RenderTexture.draw_sprite

```lua
function sfml.RenderTexture.draw_sprite(self: *sfml.RenderTexture, object: *sfml.Sprite <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_text

```lua
function sfml.RenderTexture.draw_text(self: *sfml.RenderTexture, object: *sfml.Text <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_shape

```lua
function sfml.RenderTexture.draw_shape(self: *sfml.RenderTexture, object: *sfml.Shape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_circle_shape

```lua
function sfml.RenderTexture.draw_circle_shape(self: *sfml.RenderTexture, object: *sfml.CircleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_convex_shape

```lua
function sfml.RenderTexture.draw_convex_shape(self: *sfml.RenderTexture, object: *sfml.ConvexShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_rectangle_shape

```lua
function sfml.RenderTexture.draw_rectangle_shape(self: *sfml.RenderTexture, object: *sfml.RectangleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_vertex_array

```lua
function sfml.RenderTexture.draw_vertex_array(self: *sfml.RenderTexture, object: *sfml.VertexArray <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_vertex_buffer

```lua
function sfml.RenderTexture.draw_vertex_buffer(self: *sfml.RenderTexture, object: *sfml.VertexBuffer <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_primitives

```lua
function sfml.RenderTexture.draw_primitives(self: *sfml.RenderTexture, vertices: *[0]sfml.Vertex <const>, vertexCount: csize, type: sfml.PrimitiveType, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.push_gl_states

```lua
function sfml.RenderTexture.push_gl_states(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.pop_gl_states

```lua
function sfml.RenderTexture.pop_gl_states(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.reset_gl_states

```lua
function sfml.RenderTexture.reset_gl_states(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.get_texture

```lua
function sfml.RenderTexture.get_texture(self: *sfml.RenderTexture <const>): *sfml.Texture
```



### sfml.RenderTexture.get_maximum_antialiasing_level

```lua
function sfml.RenderTexture.get_maximum_antialiasing_level(): cuint
```



### sfml.RenderTexture.is_smooth

```lua
function sfml.RenderTexture.is_smooth(self: *sfml.RenderTexture <const>): sfml.Bool
```



### sfml.RenderTexture.set_smooth

```lua
function sfml.RenderTexture.set_smooth(self: *sfml.RenderTexture, smooth: sfml.Bool): void
```



### sfml.RenderTexture.is_repeated

```lua
function sfml.RenderTexture.is_repeated(self: *sfml.RenderTexture <const>): sfml.Bool
```



### sfml.RenderTexture.set_repeated

```lua
function sfml.RenderTexture.set_repeated(self: *sfml.RenderTexture, repeated: sfml.Bool): void
```



### sfml.RenderTexture.generate_mipmap

```lua
function sfml.RenderTexture.generate_mipmap(self: *sfml.RenderTexture): sfml.Bool
```



### sfml.RenderWindow.create

```lua
function sfml.RenderWindow.create(mode: sfml.VideoMode, title: cstring <const>, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.RenderWindow
```

Render Window

### sfml.RenderWindow.create_unicode

```lua
function sfml.RenderWindow.create_unicode(mode: sfml.VideoMode, title: *sfml.Uint32, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.RenderWindow
```



### sfml.RenderWindow.create_from_handle

```lua
function sfml.RenderWindow.create_from_handle(handle: sfml.WindowHandle, settings: *sfml.ContextSettings <const>): *sfml.RenderWindow
```



### sfml.RenderWindow.destroy

```lua
function sfml.RenderWindow.destroy(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.close

```lua
function sfml.RenderWindow.close(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.is_open

```lua
function sfml.RenderWindow.is_open(self: *sfml.RenderWindow <const>): sfml.Bool
```



### sfml.RenderWindow.get_settings

```lua
function sfml.RenderWindow.get_settings(self: *sfml.RenderWindow <const>): sfml.ContextSettings
```



### sfml.RenderWindow.poll_event

```lua
function sfml.RenderWindow.poll_event(self: *sfml.RenderWindow, event: *sfml.Event): sfml.Bool
```



### sfml.RenderWindow.wait_event

```lua
function sfml.RenderWindow.wait_event(self: *sfml.RenderWindow, event: *sfml.Event): sfml.Bool
```



### sfml.RenderWindow.get_position

```lua
function sfml.RenderWindow.get_position(self: *sfml.RenderWindow <const>): sfml.Vector2i
```



### sfml.RenderWindow.set_position

```lua
function sfml.RenderWindow.set_position(self: *sfml.RenderWindow, position: sfml.Vector2i): void
```



### sfml.RenderWindow.get_size

```lua
function sfml.RenderWindow.get_size(self: *sfml.RenderWindow <const>): sfml.Vector2u
```



### sfml.RenderWindow.set_size

```lua
function sfml.RenderWindow.set_size(self: *sfml.RenderWindow, size: sfml.Vector2u): void
```



### sfml.RenderWindow.set_unicode_title

```lua
function sfml.RenderWindow.set_unicode_title(self: *sfml.RenderWindow, title: *sfml.Uint32 <const>): void
```



### sfml.RenderWindow.set_icon

```lua
function sfml.RenderWindow.set_icon(self: *sfml.RenderWindow, width: cuint, height: cuint, pixels: *[0]sfml.Uint8 <const>): void
```



### sfml.RenderWindow.set_visible

```lua
function sfml.RenderWindow.set_visible(self: *sfml.RenderWindow, visible: sfml.Bool): void
```



### sfml.RenderWindow.set_vsync_enabled

```lua
function sfml.RenderWindow.set_vsync_enabled(self: *sfml.RenderWindow, enabled: sfml.Bool): void
```



### sfml.RenderWindow.set_mouse_cursor_visible

```lua
function sfml.RenderWindow.set_mouse_cursor_visible(self: *sfml.RenderWindow, show: sfml.Bool): void
```



### sfml.RenderWindow.set_mouse_cursor_grabbed

```lua
function sfml.RenderWindow.set_mouse_cursor_grabbed(self: *sfml.RenderWindow, grabbed: sfml.Bool): void
```



### sfml.RenderWindow.set_mouse_cursor

```lua
function sfml.RenderWindow.set_mouse_cursor(self: *sfml.RenderWindow, cursor: *sfml.Cursor <const>): void
```



### sfml.RenderWindow.set_key_repeat_enabled

```lua
function sfml.RenderWindow.set_key_repeat_enabled(self: *sfml.RenderWindow, enabled: sfml.Bool): void
```



### sfml.RenderWindow.set_framerate_limit

```lua
function sfml.RenderWindow.set_framerate_limit(self: *sfml.RenderWindow, limit: cuint): void
```



### sfml.RenderWindow.set_joystick_threshold

```lua
function sfml.RenderWindow.set_joystick_threshold(self: *sfml.RenderWindow, threshold: float32): void
```



### sfml.RenderWindow.set_active

```lua
function sfml.RenderWindow.set_active(self: *sfml.RenderWindow, active: sfml.Bool): void
```



### sfml.RenderWindow.has_focus

```lua
function sfml.RenderWindow.has_focus(self: *sfml.RenderWindow <const>): sfml.Bool
```



### sfml.RenderWindow.request_focus

```lua
function sfml.RenderWindow.request_focus(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.display

```lua
function sfml.RenderWindow.display(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.get_system_handle

```lua
function sfml.RenderWindow.get_system_handle(self: *sfml.RenderWindow <const>): sfml.WindowHandle
```



### sfml.RenderWindow.clear

```lua
function sfml.RenderWindow.clear(self: *sfml.RenderWindow, color: sfml.Color): void
```



### sfml.RenderWindow.get_view

```lua
function sfml.RenderWindow.get_view(self: *sfml.RenderWindow <const>): *sfml.View
```



### sfml.RenderWindow.set_view

```lua
function sfml.RenderWindow.set_view(self: *sfml.RenderWindow, view: *sfml.View): void
```



### sfml.RenderWindow.get_default_view

```lua
function sfml.RenderWindow.get_default_view(self: *sfml.RenderWindow <const>): *sfml.View
```



### sfml.RenderWindow.get_viewport

```lua
function sfml.RenderWindow.get_viewport(self: *sfml.RenderWindow <const>, view: *sfml.View <const>): sfml.IntRect
```



### sfml.RenderWindow.map_pixel_to_coords

```lua
function sfml.RenderWindow.map_pixel_to_coords(self: *sfml.RenderWindow <const>, point: sfml.Vector2i, view: *sfml.View <const>): sfml.Vector2f
```



### sfml.RenderWindow.map_coords_to_pixel

```lua
function sfml.RenderWindow.map_coords_to_pixel(self: *sfml.RenderWindow <const>, point: sfml.Vector2f, view: *sfml.View <const>): sfml.Vector2i
```



### sfml.RenderWindow.draw_sprite

```lua
function sfml.RenderWindow.draw_sprite(self: *sfml.RenderWindow, object: *sfml.Sprite <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_text

```lua
function sfml.RenderWindow.draw_text(self: *sfml.RenderWindow, object: *sfml.Text <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_shape

```lua
function sfml.RenderWindow.draw_shape(self: *sfml.RenderWindow, object: *sfml.Shape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_circle_shape

```lua
function sfml.RenderWindow.draw_circle_shape(self: *sfml.RenderWindow, object: *sfml.CircleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_convex_shape

```lua
function sfml.RenderWindow.draw_convex_shape(self: *sfml.RenderWindow, object: *sfml.ConvexShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_rectangle_shape

```lua
function sfml.RenderWindow.draw_rectangle_shape(self: *sfml.RenderWindow, object: *sfml.RectangleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_vertex_array

```lua
function sfml.RenderWindow.draw_vertex_array(self: *sfml.RenderWindow, object: *sfml.VertexArray <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_vertex_buffer

```lua
function sfml.RenderWindow.draw_vertex_buffer(self: *sfml.RenderWindow, object: *sfml.VertexBuffer <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_primitives

```lua
function sfml.RenderWindow.draw_primitives(self: *sfml.RenderWindow, vertices: *sfml.Vertex <const>, vertexCount: csize, type: sfml.PrimitiveType, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.push_gl_states

```lua
function sfml.RenderWindow.push_gl_states(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.pop_gl_states

```lua
function sfml.RenderWindow.pop_gl_states(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.reset_gl_states

```lua
function sfml.RenderWindow.reset_gl_states(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.capture

```lua
function sfml.RenderWindow.capture(self: *sfml.RenderWindow <const>): *sfml.Image
```



### sfml.Mouse.get_position_render_window

```lua
function sfml.Mouse.get_position_render_window(relativeTo: *sfml.RenderWindow <const>): sfml.Vector2i
```

Render Window: Mouse

### sfml.Mouse.set_position_render_window

```lua
function sfml.Mouse.set_position_render_window(position: sfml.Vector2i, relativeTo: *sfml.RenderWindow <const>): void
```



### sfml.Touch.get_position_render_window

```lua
function sfml.Touch.get_position_render_window(finger: cuint, relativeTo: *sfml.RenderWindow <const>): sfml.Vector2i
```



### sfml.Shader.create_from_file

```lua
function sfml.Shader.create_from_file(vertexShaderFilename: cstring <const>, geometryShaderFilename: cstring <const>, fragmentShaderFilename: cstring <const>): *sfml.Shader
```

Shader

### sfml.Shader.create_from_memory

```lua
function sfml.Shader.create_from_memory(vertexShader: cstring <const>, geometryShader: cstring <const>, fragmentShader: cstring <const>): *sfml.Shader
```



### sfml.Shader.create_from_stream

```lua
function sfml.Shader.create_from_stream(vertexShader: *sfml.InputStream, geometryShader: *sfml.InputStream, fragmentShader: *sfml.InputStream): *sfml.Shader
```



### sfml.Shader.destroy

```lua
function sfml.Shader.destroy(self: *sfml.Shader): void
```



### sfml.Shader.set_float_uniform

```lua
function sfml.Shader.set_float_uniform(self: *sfml.Shader, name: cstring <const>, x: float32): void
```



### sfml.Shader.set_vec3_uniform

```lua
function sfml.Shader.set_vec3_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslVec3): void
```



### sfml.Shader.set_vec4_uniform

```lua
function sfml.Shader.set_vec4_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslVec4): void
```



### sfml.Shader.set_color_uniform

```lua
function sfml.Shader.set_color_uniform(self: *sfml.Shader, name: cstring <const>, color: sfml.Color): void
```



### sfml.Shader.set_int_uniform

```lua
function sfml.Shader.set_int_uniform(self: *sfml.Shader, name: cstring <const>, x: cint): void
```



### sfml.Shader.set_ivec2_uniform

```lua
function sfml.Shader.set_ivec2_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslIvec2): void
```



### sfml.Shader.set_ivec3_uniform

```lua
function sfml.Shader.set_ivec3_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslIvec3): void
```



### sfml.Shader.set_ivec4_uniform

```lua
function sfml.Shader.set_ivec4_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslIvec4): void
```



### sfml.Shader.set_int_color_uniform

```lua
function sfml.Shader.set_int_color_uniform(self: *sfml.Shader, name: cstring <const>, color: sfml.Color): void
```



### sfml.Shader.set_bool_uniform

```lua
function sfml.Shader.set_bool_uniform(self: *sfml.Shader, name: cstring <const>, x: sfml.Bool): void
```



### sfml.Shader.set_bvec2_uniform

```lua
function sfml.Shader.set_bvec2_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslBvec2): void
```



### sfml.Shader.set_bvec3_uniform

```lua
function sfml.Shader.set_bvec3_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslBvec3): void
```



### sfml.Shader.set_bvec4_uniform

```lua
function sfml.Shader.set_bvec4_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslBvec4): void
```



### sfml.Shader.set_mat3_uniform

```lua
function sfml.Shader.set_mat3_uniform(self: *sfml.Shader, name: cstring <const>, matrix: *sfml.GlslMat3 <const>): void
```



### sfml.Shader.set_mat4_uniform

```lua
function sfml.Shader.set_mat4_uniform(self: *sfml.Shader, name: cstring <const>, matrix: *sfml.GlslMat4 <const>): void
```



### sfml.Shader.set_texture_uniform

```lua
function sfml.Shader.set_texture_uniform(self: *sfml.Shader, name: cstring <const>, texture: *sfml.Texture <const>): void
```



### sfml.Shader.set_current_texture_uniform

```lua
function sfml.Shader.set_current_texture_uniform(self: *sfml.Shader, name: cstring <const>): void
```



### sfml.Shader.set_float_uniform_array

```lua
function sfml.Shader.set_float_uniform_array(self: *sfml.Shader, name: cstring <const>, scalarArray: *[0]float32, length: csize): void
```



### sfml.Shader.set_vec2_uniform_array

```lua
function sfml.Shader.set_vec2_uniform_array(self: *sfml.Shader, name: cstring <const>, vectorArray: *[0]sfml.GlslVec2, length: csize): void
```



### sfml.Shader.set_vec3_uniform_array

```lua
function sfml.Shader.set_vec3_uniform_array(self: *sfml.Shader, name: cstring <const>, vectorArray: *[0]sfml.GlslVec3, length: csize): void
```



### sfml.Shader.set_vec4_uniform_array

```lua
function sfml.Shader.set_vec4_uniform_array(self: *sfml.Shader, name: cstring <const>, vectorArray: *[0]sfml.GlslVec4, length: csize): void
```



### sfml.Shader.set_mat3_uniform_array

```lua
function sfml.Shader.set_mat3_uniform_array(self: *sfml.Shader, name: cstring <const>, matrixArray: *[0]sfml.GlslMat3, length: csize): void
```



### sfml.Shader.set_mat4_uniform_array

```lua
function sfml.Shader.set_mat4_uniform_array(self: *sfml.Shader, name: cstring <const>, matrixArray: *[0]sfml.GlslMat4, length: csize): void
```



### sfml.Shader.set_float_parameter

```lua
function sfml.Shader.set_float_parameter(self: *sfml.Shader, name: cstring <const>, x: float32): void
```



### sfml.Shader.set_float2_parameter

```lua
function sfml.Shader.set_float2_parameter(self: *sfml.Shader, name: cstring <const>, x: float32, y: float32): void
```



### sfml.Shader.set_float3_parameter

```lua
function sfml.Shader.set_float3_parameter(self: *sfml.Shader, name: cstring <const>, x: float32, y: float32, z: float32): void
```



### sfml.Shader.set_float4_parameter

```lua
function sfml.Shader.set_float4_parameter(self: *sfml.Shader, name: cstring <const>, x: float32, y: float32, z: float32, w: float32): void
```



### sfml.Shader.set_vector2_parameter

```lua
function sfml.Shader.set_vector2_parameter(self: *sfml.Shader, name: cstring <const>, vector: sfml.Vector2f): void
```



### sfml.Shader.set_vector3_parameter

```lua
function sfml.Shader.set_vector3_parameter(self: *sfml.Shader, name: cstring <const>, vector: sfml.Vector3f): void
```



### sfml.Shader.set_color_parameter

```lua
function sfml.Shader.set_color_parameter(self: *sfml.Shader, name: cstring <const>, color: sfml.Color): void
```



### sfml.Shader.set_transform_parameter

```lua
function sfml.Shader.set_transform_parameter(self: *sfml.Shader, name: cstring <const>, transform: sfml.Transform): void
```



### sfml.Shader.set_texture_parameter

```lua
function sfml.Shader.set_texture_parameter(self: *sfml.Shader, name: cstring <const>, texture: *sfml.Texture <const>): void
```



### sfml.Shader.set_current_texture_parameter

```lua
function sfml.Shader.set_current_texture_parameter(self: *sfml.Shader, name: cstring <const>): void
```



### sfml.Shader.get_native_handle

```lua
function sfml.Shader.get_native_handle(self: *sfml.Shader <const>): cuint
```



### sfml.Shader.bind

```lua
function sfml.Shader.bind(self: *sfml.Shader <const>): void
```



### sfml.Shader.is_available

```lua
function sfml.Shader.is_available(): sfml.Bool
```



### sfml.Shader.is_geometry_available

```lua
function sfml.Shader.is_geometry_available(): sfml.Bool
```



### sfml.ShapeGetPointCountCallback

```lua
global sfml.ShapeGetPointCountCallback: type = @function(pointer): csize
```

Shape

### sfml.ShapeGetPointCallback

```lua
global sfml.ShapeGetPointCallback: type = @function(csize, pointer): sfml.Vector2f
```



### sfml.Shape.create

```lua
function sfml.Shape.create(getPointCount: sfml.ShapeGetPointCountCallback, getPoint: sfml.ShapeGetPointCallback, userData: pointer): *sfml.Shape
```



### sfml.Shape.destroy

```lua
function sfml.Shape.destroy(self: *sfml.Shape): void
```



### sfml.Shape.get_position

```lua
function sfml.Shape.get_position(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_position

```lua
function sfml.Shape.set_position(self: *sfml.Shape, position: sfml.Vector2f): void
```



### sfml.Shape.get_rotation

```lua
function sfml.Shape.get_rotation(self: *sfml.Shape <const>): float32
```



### sfml.Shape.set_rotation

```lua
function sfml.Shape.set_rotation(self: *sfml.Shape, angle: float32): void
```



### sfml.Shape.get_scale

```lua
function sfml.Shape.get_scale(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_scale

```lua
function sfml.Shape.set_scale(self: *sfml.Shape, scale: sfml.Vector2f): void
```



### sfml.Shape.get_origin

```lua
function sfml.Shape.get_origin(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_origin

```lua
function sfml.Shape.set_origin(self: *sfml.Shape, origin: sfml.Vector2f): void
```



### sfml.Shape.get_size

```lua
function sfml.Shape.get_size(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_size

```lua
function sfml.Shape.set_size(self: *sfml.Shape, size: float32): void
```



### sfml.Shape.get_texture

```lua
function sfml.Shape.get_texture(self: *sfml.Shape <const>): *sfml.Texture
```



### sfml.Shape.set_texture

```lua
function sfml.Shape.set_texture(self: *sfml.Shape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.Shape.get_texture_rect

```lua
function sfml.Shape.get_texture_rect(self: *sfml.Shape <const>): sfml.IntRect
```



### sfml.Shape.set_texture_rect

```lua
function sfml.Shape.set_texture_rect(self: *sfml.Shape, rect: sfml.IntRect): void
```



### sfml.Shape.get_fill_color

```lua
function sfml.Shape.get_fill_color(self: *sfml.Shape <const>): sfml.Color
```



### sfml.Shape.set_fill_color

```lua
function sfml.Shape.set_fill_color(self: *sfml.Shape, color: sfml.Color): void
```



### sfml.Shape.get_outline_color

```lua
function sfml.Shape.get_outline_color(self: *sfml.Shape <const>): sfml.Color
```



### sfml.Shape.set_outline_color

```lua
function sfml.Shape.set_outline_color(self: *sfml.Shape, color: sfml.Color): void
```



### sfml.Shape.get_outline_thickness

```lua
function sfml.Shape.get_outline_thickness(self: *sfml.Shape <const>): float32
```



### sfml.Shape.set_outline_thickness

```lua
function sfml.Shape.set_outline_thickness(self: *sfml.Shape, thickness: float32): void
```



### sfml.Shape.get_point_count

```lua
function sfml.Shape.get_point_count(self: *sfml.Shape <const>): csize
```



### sfml.Shape.set_point_count

```lua
function sfml.Shape.set_point_count(self: *sfml.Shape, count: csize): void
```



### sfml.Shape.move

```lua
function sfml.Shape.move(self: *sfml.Shape, offset: sfml.Vector2f): void
```



### sfml.Shape.rotate

```lua
function sfml.Shape.rotate(self: *sfml.Shape, angle: float32): void
```



### sfml.Shape.scale

```lua
function sfml.Shape.scale(self: *sfml.Shape, factors: sfml.Vector2f): void
```



### sfml.Shape.get_transform

```lua
function sfml.Shape.get_transform(self: *sfml.Shape <const>): sfml.Transform
```



### sfml.Shape.get_inverse_transform

```lua
function sfml.Shape.get_inverse_transform(self: *sfml.Shape <const>): sfml.Transform
```



### sfml.Shape.get_point

```lua
function sfml.Shape.get_point(self: *sfml.Shape <const>, index: csize): sfml.Vector2f
```



### sfml.Shape.get_local_bounds

```lua
function sfml.Shape.get_local_bounds(self: *sfml.Shape <const>): sfml.FloatRect
```



### sfml.Shape.get_global_bounds

```lua
function sfml.Shape.get_global_bounds(self: *sfml.Shape <const>): sfml.FloatRect
```



### sfml.Shape.update

```lua
function sfml.Shape.update(self: *sfml.Shape): void
```



### sfml.Sprite.create

```lua
function sfml.Sprite.create(): *sfml.Sprite
```

Sprite

### sfml.Sprite.copy

```lua
function sfml.Sprite.copy(self: *sfml.Sprite <const>): *sfml.Sprite
```



### sfml.Sprite.destroy

```lua
function sfml.Sprite.destroy(self: *sfml.Sprite): void
```



### sfml.Sprite.get_position

```lua
function sfml.Sprite.get_position(self: *sfml.Sprite <const>): sfml.Vector2f
```



### sfml.Sprite.set_position

```lua
function sfml.Sprite.set_position(self: *sfml.Sprite, position: sfml.Vector2f): void
```



### sfml.Sprite.get_rotation

```lua
function sfml.Sprite.get_rotation(self: *sfml.Sprite <const>): float32
```



### sfml.Sprite.set_rotation

```lua
function sfml.Sprite.set_rotation(self: *sfml.Sprite, angle: float32): void
```



### sfml.Sprite.get_scale

```lua
function sfml.Sprite.get_scale(self: *sfml.Sprite <const>): sfml.Vector2f
```



### sfml.Sprite.set_scale

```lua
function sfml.Sprite.set_scale(self: *sfml.Sprite, scale: sfml.Vector2f): void
```



### sfml.Sprite.get_origin

```lua
function sfml.Sprite.get_origin(self: *sfml.Sprite <const>): sfml.Vector2f
```



### sfml.Sprite.set_origin

```lua
function sfml.Sprite.set_origin(self: *sfml.Sprite, origin: sfml.Vector2f): void
```



### sfml.Sprite.get_texture

```lua
function sfml.Sprite.get_texture(self: *sfml.Sprite <const>): *sfml.Texture
```



### sfml.Sprite.set_texture

```lua
function sfml.Sprite.set_texture(self: *sfml.Sprite, texture: *sfml.Texture, resetRect: sfml.Bool): void
```



### sfml.Sprite.get_texture_rect

```lua
function sfml.Sprite.get_texture_rect(self: *sfml.Sprite <const>): sfml.IntRect
```



### sfml.Sprite.set_texture_rect

```lua
function sfml.Sprite.set_texture_rect(self: *sfml.Sprite, rectangle: sfml.IntRect): void
```



### sfml.Sprite.get_color

```lua
function sfml.Sprite.get_color(self: *sfml.Sprite <const>): sfml.Color
```



### sfml.Sprite.set_color

```lua
function sfml.Sprite.set_color(self: *sfml.Sprite, color: sfml.Color): void
```



### sfml.Sprite.move

```lua
function sfml.Sprite.move(self: *sfml.Sprite, offset: sfml.Vector2f): void
```



### sfml.Sprite.rotate

```lua
function sfml.Sprite.rotate(self: *sfml.Sprite, angle: float32): void
```



### sfml.Sprite.scale

```lua
function sfml.Sprite.scale(self: *sfml.Sprite, factors: sfml.Vector2f): void
```



### sfml.Sprite.get_transform

```lua
function sfml.Sprite.get_transform(self: *sfml.Sprite <const>): sfml.Transform
```



### sfml.Sprite.get_inverse_transform

```lua
function sfml.Sprite.get_inverse_transform(self: *sfml.Sprite <const>): sfml.Transform
```



### sfml.Sprite.get_local_bounds

```lua
function sfml.Sprite.get_local_bounds(self: *sfml.Sprite <const>): sfml.FloatRect
```



### sfml.Sprite.get_global_bounds

```lua
function sfml.Sprite.get_global_bounds(self: *sfml.Sprite <const>): sfml.FloatRect
```



### sfml.TextStyle

```lua
global sfml.TextStyle: type = @enum(cint) {
  Regular       = 0,
  Bold          = 1 << 0,
  Italic        = 1 << 1,
  Underlined    = 1 << 2,
  StrikeThrough = 1 << 3
}
```

Text

### sfml.Text.create

```lua
function sfml.Text.create(): *sfml.Text
```



### sfml.Text.copy

```lua
function sfml.Text.copy(self: *sfml.Text <const>): *sfml.Text
```



### sfml.Text.destroy

```lua
function sfml.Text.destroy(self: *sfml.Text): void
```



### sfml.Text.get_position

```lua
function sfml.Text.get_position(self: *sfml.Text <const>): sfml.Vector2f
```



### sfml.Text.set_position

```lua
function sfml.Text.set_position(self: *sfml.Text, position: sfml.Vector2f): void
```



### sfml.Text.get_rotation

```lua
function sfml.Text.get_rotation(self: *sfml.Text <const>): float32
```



### sfml.Text.set_rotation

```lua
function sfml.Text.set_rotation(self: *sfml.Text, angle: float32): void
```



### sfml.Text.get_scale

```lua
function sfml.Text.get_scale(self: *sfml.Text <const>): sfml.Vector2f
```



### sfml.Text.set_scale

```lua
function sfml.Text.set_scale(self: *sfml.Text, scale: sfml.Vector2f): void
```



### sfml.Text.get_origin

```lua
function sfml.Text.get_origin(self: *sfml.Text <const>): sfml.Vector2f
```



### sfml.Text.set_origin

```lua
function sfml.Text.set_origin(self: *sfml.Text, origin: sfml.Vector2f): void
```



### sfml.Text.get_string

```lua
function sfml.Text.get_string(self: *sfml.Text <const>): cstring
```



### sfml.Text.set_string

```lua
function sfml.Text.set_string(self: *sfml.Text, string: cstring <const>): void
```



### sfml.Text.get_unicod_string

```lua
function sfml.Text.get_unicod_string(self: *sfml.Text <const>): *sfml.Uint32
```



### sfml.Text.set_unicod_string

```lua
function sfml.Text.set_unicod_string(self: *sfml.Text, string: *sfml.Uint32 <const>): void
```



### sfml.Text.get_font

```lua
function sfml.Text.get_font(self: *sfml.Text <const>): *sfml.Font
```



### sfml.Text.set_font

```lua
function sfml.Text.set_font(self: *sfml.Text, font: *sfml.Font <const>): void
```



### sfml.Text.get_character_size

```lua
function sfml.Text.get_character_size(self: *sfml.Text <const>): cuint
```



### sfml.Text.set_character_size

```lua
function sfml.Text.set_character_size(self: *sfml.Text, size: cuint): void
```



### sfml.Text.get_line_spacing

```lua
function sfml.Text.get_line_spacing(self: *sfml.Text <const>): float32
```



### sfml.Text.set_line_spacing

```lua
function sfml.Text.set_line_spacing(self: *sfml.Text, spacingFactor: float32): void
```



### sfml.Text.get_letter_spacing

```lua
function sfml.Text.get_letter_spacing(self: *sfml.Text <const>): float32
```



### sfml.Text.set_letter_spacing

```lua
function sfml.Text.set_letter_spacing(self: *sfml.Text, spacingFactor: float32): void
```



### sfml.Text.get_style

```lua
function sfml.Text.get_style(self: *sfml.Text <const>): sfml.Uint32
```



### sfml.Text.set_style

```lua
function sfml.Text.set_style(self: *sfml.Text, style: sfml.Uint32): void
```



### sfml.Text.get_color

```lua
function sfml.Text.get_color(self: *sfml.Text <const>): sfml.Color
```



### sfml.Text.set_color

```lua
function sfml.Text.set_color(self: *sfml.Text, color: sfml.Color): void
```



### sfml.Text.get_fill_color

```lua
function sfml.Text.get_fill_color(self: *sfml.Text <const>): sfml.Color
```



### sfml.Text.set_fill_color

```lua
function sfml.Text.set_fill_color(self: *sfml.Text, color: sfml.Color): void
```



### sfml.Text.get_outline_color

```lua
function sfml.Text.get_outline_color(self: *sfml.Text <const>): sfml.Color
```



### sfml.Text.set_outline_color

```lua
function sfml.Text.set_outline_color(self: *sfml.Text, color: sfml.Color): void
```



### sfml.Text.get_outline_thickness

```lua
function sfml.Text.get_outline_thickness(self: *sfml.Text <const>): float32
```



### sfml.Text.set_outline_thickness

```lua
function sfml.Text.set_outline_thickness(self: *sfml.Text, thickness: float32): void
```



### sfml.Text.move

```lua
function sfml.Text.move(self: *sfml.Text, offset: sfml.Vector2f): void
```



### sfml.Text.rotate

```lua
function sfml.Text.rotate(self: *sfml.Text, angle: float32): void
```



### sfml.Text.scale

```lua
function sfml.Text.scale(self: *sfml.Text, factors: sfml.Vector2f): void
```



### sfml.Text.get_transform

```lua
function sfml.Text.get_transform(self: *sfml.Text <const>): sfml.Transform
```



### sfml.Text.get_inverse_transform

```lua
function sfml.Text.get_inverse_transform(self: *sfml.Text <const>): sfml.Transform
```



### sfml.Text.find_character_pos

```lua
function sfml.Text.find_character_pos(text: cstring <const>, index: csize): sfml.Vector2f
```



### sfml.Text.get_local_bounds

```lua
function sfml.Text.get_local_bounds(text: cstring <const>): sfml.FloatRect
```



### sfml.Text.get_global_bounds

```lua
function sfml.Text.get_global_bounds(text: cstring <const>): sfml.FloatRect
```



### sfml.Texture.create

```lua
function sfml.Texture.create(width: cuint, height: cuint): *sfml.Texture
```

Texture

### sfml.Texture.create_from_file

```lua
function sfml.Texture.create_from_file(filename: cstring <const>, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.create_from_memory

```lua
function sfml.Texture.create_from_memory(data: pointer <const>, sizeInBytes: csize, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.create_from_stream

```lua
function sfml.Texture.create_from_stream(stream: *sfml.InputStream, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.create_from_image

```lua
function sfml.Texture.create_from_image(image: *sfml.Image <const>, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.copy

```lua
function sfml.Texture.copy(self: *sfml.Texture <const>): *sfml.Texture
```



### sfml.Texture.destroy

```lua
function sfml.Texture.destroy(self: *sfml.Texture): void
```



### sfml.Texture.getSize

```lua
function sfml.Texture.getSize(self: *sfml.Texture <const>): sfml.Vector2u
```



### sfml.Texture.copy_to_image

```lua
function sfml.Texture.copy_to_image(self: *sfml.Texture <const>): *sfml.Image
```



### sfml.Texture.update_from_pixels

```lua
function sfml.Texture.update_from_pixels(self: *sfml.Texture, pixels: *[0]sfml.Uint8 <const>, width: cuint, height: cuint, x: cuint, y: cuint): void
```



### sfml.Texture.update_from_image

```lua
function sfml.Texture.update_from_image(self: *sfml.Texture, source: *sfml.Texture, x: cuint, y: cuint): void
```



### sfml.Texture.update_from_window

```lua
function sfml.Texture.update_from_window(self: *sfml.Texture, window: *sfml.Window <const>, x: cuint, y: cuint): void
```



### sfml.Texture.update_from_render_window

```lua
function sfml.Texture.update_from_render_window(self: *sfml.Texture, renderWindow: *sfml.RenderWindow <const>, x: cuint, y: cuint): void
```



### sfml.Texture.is_smooth

```lua
function sfml.Texture.is_smooth(self: *sfml.Texture <const>): sfml.Bool
```



### sfml.Texture.set_smooth

```lua
function sfml.Texture.set_smooth(self: *sfml.Texture, smooth: sfml.Bool): void
```



### sfml.Texture.is_srgb

```lua
function sfml.Texture.is_srgb(self: *sfml.Texture <const>): sfml.Bool
```



### sfml.Texture.set_srgb

```lua
function sfml.Texture.set_srgb(self: *sfml.Texture, sRgb: sfml.Bool): void
```



### sfml.Texture.is_repeated

```lua
function sfml.Texture.is_repeated(self: *sfml.Texture <const>): sfml.Bool
```



### sfml.Texture.set_repeated

```lua
function sfml.Texture.set_repeated(self: *sfml.Texture, repeated: sfml.Bool): void
```



### sfml.Texture.generate_mipmap

```lua
function sfml.Texture.generate_mipmap(self: *sfml.Texture): sfml.Bool
```



### sfml.Texture.swap

```lua
function sfml.Texture.swap(self: *sfml.Texture, right: *sfml.Texture): void
```



### sfml.Texture.get_native_handle

```lua
function sfml.Texture.get_native_handle(self: *sfml.Texture <const>): cuint
```



### sfml.Texture.get_maximum_size

```lua
function sfml.Texture.get_maximum_size(): cuint
```



### sfml.VertexBufferUsage

```lua
global sfml.VertexBufferUsage: type = @enum(cint) {
  Stream = 0,
  Dynamic,
  Static
}
```

Vertex Buffer

### sfml.VertexBuffer.create

```lua
function sfml.VertexBuffer.create(vertexCount: cuint, type: sfml.PrimitiveType, usage: sfml.VertexBufferUsage): *sfml.VertexBuffer
```



### sfml.VertexBuffer.copy

```lua
function sfml.VertexBuffer.copy(self: *sfml.VertexBuffer <const>): *sfml.VertexBuffer
```



### sfml.VertexBuffer.destroy

```lua
function sfml.VertexBuffer.destroy(self: *sfml.VertexBuffer): void
```



### sfml.VertexBuffer.get_vertex_count

```lua
function sfml.VertexBuffer.get_vertex_count(self: *sfml.VertexBuffer <const>): cuint
```



### sfml.VertexBuffer.update

```lua
function sfml.VertexBuffer.update(self: *sfml.VertexBuffer , vertices: *[0]sfml.Vertex <const>, vertexCount: cuint, offset: cuint): sfml.Bool
```



### sfml.VertexBuffer.update_from_vertex_buffer

```lua
function sfml.VertexBuffer.update_from_vertex_buffer(self: *sfml.VertexBuffer, other: *sfml.VertexBuffer <const>): sfml.Bool
```



### sfml.VertexBuffer.swap

```lua
function sfml.VertexBuffer.swap(self: *sfml.VertexBuffer, right: *sfml.VertexBuffer): void
```



### sfml.VertexBuffer.get_native_handle

```lua
function sfml.VertexBuffer.get_native_handle(self: *sfml.VertexBuffer): cuint
```



### sfml.VertexBuffer.get_primitive_type

```lua
function sfml.VertexBuffer.get_primitive_type(self: *sfml.VertexBuffer <const>): sfml.PrimitiveType
```



### sfml.VertexBuffer.set_primitive_type

```lua
function sfml.VertexBuffer.set_primitive_type(self: *sfml.VertexBuffer, type: sfml.PrimitiveType): void
```



### sfml.VertexBuffer.get_usage

```lua
function sfml.VertexBuffer.get_usage(self: *sfml.VertexBuffer <const>): sfml.VertexBufferUsage
```



### sfml.VertexBuffer.set_usage

```lua
function sfml.VertexBuffer.set_usage(self: *sfml.VertexBuffer, usage: sfml.VertexBufferUsage): void
```



### sfml.VertexBuffer.bind

```lua
function sfml.VertexBuffer.bind(self: *sfml.VertexBuffer <const>): void
```



### sfml.VertexBuffer.is_available

```lua
function sfml.VertexBuffer.is_available(): sfml.Bool
```



---
