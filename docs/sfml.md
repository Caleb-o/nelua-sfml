# SFML
This is a binding of the CSFML library
### sfml

```nelua
global sfml = @record{}
```



### sfml.VERSION_MAJOR

```nelua
global sfml.VERSION_MAJOR: cint
```

Global Information

### sfml.VERSION_MINOR

```nelua
global sfml.VERSION_MINOR: cint
```



### sfml.VERSION_PATCH

```nelua
global sfml.VERSION_PATCH: cint
```



### sfml.SYSTEM_WINDOWS

```nelua
global sfml.SYSTEM_WINDOWS: cint
```



### sfml.SYSTEM_LINUX

```nelua
global sfml.SYSTEM_LINUX: cint
```



### sfml.SYSTEM_MACOS

```nelua
global sfml.SYSTEM_MACOS: cint
```



### sfml.SYSTEM_FREEBSD

```nelua
global sfml.SYSTEM_FREEBSD: cint
```



### sfml.Bool

```nelua
global sfml.Bool: type = @boolean
```

Types

### sfml.False

```nelua
global sfml.False: boolean
```



### sfml.True

```nelua
global sfml.True: boolean
```



### sfml.Int8

```nelua
global sfml.Int8: type = @int8
```



### sfml.Uint8

```nelua
global sfml.Uint8: type = @byte
```



### sfml.Int16

```nelua
global sfml.Int16: type = @int16
```



### sfml.Uint16

```nelua
global sfml.Uint16: type = @uint16
```



### sfml.Int32

```nelua
global sfml.Int32: type = @int32
```



### sfml.Uint32

```nelua
global sfml.Uint32: type = @uint32
```



### sfml.Int64

```nelua
global sfml.Int64: type = @int64
```



### sfml.Uint64

```nelua
global sfml.Uint64: type = @uint64
```



### sfml.Time

```nelua
global sfml.Time: type = @record {
  microseconds: sfml.Int64
}
```

Time

### sfml.Time.zero

```nelua
global sfml.Time.zero: sfml.Time
```



### sfml.Time.as_seconds

```nelua
function sfml.Time.as_seconds(self: sfml.Time): float32
```



### sfml.Time.as_milliseconds

```nelua
function sfml.Time.as_milliseconds(self: sfml.Time): sfml.Int32
```



### sfml.Time.as_microseconds

```nelua
function sfml.Time.as_microseconds(self: sfml.Time): sfml.Int64
```



### sfml.Time.seconds

```nelua
function sfml.Time.seconds(amount: float32): sfml.Time
```



### sfml.Time.milliseconds

```nelua
function sfml.Time.milliseconds(amount: sfml.Int32): sfml.Time
```



### sfml.Time.microseconds

```nelua
function sfml.Time.microseconds(amount: sfml.Int64): sfml.Time
```



### sfml.Clock

```nelua
global sfml.Clock: type = @record {}
```

Clock

### sfml.Clock.create

```nelua
function sfml.Clock.create(): *sfml.Clock
```



### sfml.Clock.copy

```nelua
function sfml.Clock.copy(self: *sfml.Clock <const>): *sfml.Clock
```



### sfml.Clock.destroy

```nelua
function sfml.Clock.destroy(self: *sfml.Clock): void
```



### sfml.Clock.get_elapsed_time

```nelua
function sfml.Clock.get_elapsed_time(self: *sfml.Clock <const>): sfml.Time
```



### sfml.Clock.restart

```nelua
function sfml.Clock.restart(self: *sfml.Clock): sfml.Time
```



### sfml.InputStreamReadFunc

```nelua
global sfml.InputStreamReadFunc: type = @function(pointer, sfml.Int64, pointer): sfml.Int64
```

InputStream

### sfml.InputStreamSeekFunc

```nelua
global sfml.InputStreamSeekFunc: type = @function(sfml.Int64, pointer): sfml.Int64
```



### sfml.InputStreamTellFunc

```nelua
global sfml.InputStreamTellFunc: type = @function(pointer): sfml.Int64
```



### sfml.InputStreamGetSizeFunc

```nelua
global sfml.InputStreamGetSizeFunc: type = @function(pointer): sfml.Int64
```



### sfml.InputStream

```nelua
global sfml.InputStream: type = @record {
  read: sfml.InputStreamReadFunc,
  seek: sfml.InputStreamSeekFunc,
  tell: sfml.InputStreamTellFunc,
  getSize: sfml.InputStreamGetSizeFunc,
  userData: pointer
}
```



### sfml.Mutex

```nelua
global sfml.Mutex: type = @record {}
```

Mutex

### sfml.Mutex.create

```nelua
function sfml.Mutex.create(): *sfml.Mutex
```



### sfml.Mutex.destroy

```nelua
function sfml.Mutex.destroy(self: *sfml.Mutex): void
```



### sfml.Mutex.lock

```nelua
function sfml.Mutex.lock(self: *sfml.Mutex): void
```



### sfml.Mutex.unlock

```nelua
function sfml.Mutex.unlock(self: *sfml.Mutex): void
```



### sfml.Time.sleep

```nelua
function sfml.Time.sleep(duration: sfml.Time): void
```



### sfml.Thread

```nelua
global sfml.Thread: type = @record {}
```

Thread

### sfml.Thread.create

```nelua
function sfml.Thread.create(f: function(pointer): void, userdata: pointer): *sfml.Thread
```



### sfml.Thread.destroy

```nelua
function sfml.Thread.destroy(self: *sfml.Thread): void
```



### sfml.Thread.launch

```nelua
function sfml.Thread.launch(self: *sfml.Thread): void
```



### sfml.Thread.wait

```nelua
function sfml.Thread.wait(self: *sfml.Thread): void
```



### sfml.Thread.terminate

```nelua
function sfml.Thread.terminate(self: *sfml.Thread): void
```



### sfml.Vector2i

```nelua
global sfml.Vector2i: type = @record {
  x: cint,
  y: cint
}
```

Vector

### sfml.Vector2u

```nelua
global sfml.Vector2u: type = @record {
  x: cuint,
  y: cuint
}
```



### sfml.Vector2f

```nelua
global sfml.Vector2f: type = @record {
  x: float32,
  y: float32
}
```



### sfml.Vector3f

```nelua
global sfml.Vector3f: type = @record {
  x: float32,
  y: float32,
  z: float32
}
```



### sfml.FtpDirectoryResponse

```nelua
global sfml.FtpDirectoryResponse: type = @record {}
```

Network

### sfml.FtpListingResponse

```nelua
global sfml.FtpListingResponse: type = @record {}
```



### sfml.FtpResponse

```nelua
global sfml.FtpResponse: type = @record {}
```



### sfml.Ftp

```nelua
global sfml.Ftp: type = @record {}
```



### sfml.HttpRequest

```nelua
global sfml.HttpRequest: type = @record {}
```



### sfml.HttpResponse

```nelua
global sfml.HttpResponse: type = @record {}
```



### sfml.Http

```nelua
global sfml.Http: type = @record {}
```



### sfml.Packet

```nelua
global sfml.Packet: type = @record {}
```



### sfml.SocketSelector

```nelua
global sfml.SocketSelector: type = @record {}
```



### sfml.TcpListener

```nelua
global sfml.TcpListener: type = @record {}
```



### sfml.TcpSocket

```nelua
global sfml.TcpSocket: type = @record {}
```



### sfml.UdpSocket

```nelua
global sfml.UdpSocket: type = @record {}
```



### sfml.IpAddress

```nelua
global sfml.IpAddress: type = @record {
  address: [16]byte
}
```

Network: IpAddress

### sfml.IpAddress.None

```nelua
global sfml.IpAddress.None: sfml.IpAddress
```



### sfml.IpAddress.Any

```nelua
global sfml.IpAddress.Any: sfml.IpAddress
```



### sfml.IpAddress.LocalHost

```nelua
global sfml.IpAddress.LocalHost: sfml.IpAddress
```



### sfml.IpAddress.Broadcast

```nelua
global sfml.IpAddress.Broadcast: sfml.IpAddress
```



### sfml.IpAddress.from_string

```nelua
function sfml.IpAddress.from_string(address: cstring <const>): sfml.IpAddress
```



### sfml.IpAddress.from_bytes

```nelua
function sfml.IpAddress.from_bytes(byte0: sfml.Uint8, byte1: sfml.Uint8, byte2: sfml.Uint8, byte3: sfml.Uint8): sfml.IpAddress
```



### sfml.IpAddress.from_integer

```nelua
function sfml.IpAddress.from_integer(address: sfml.Uint32): sfml.IpAddress
```



### sfml.IpAddress.to_string

```nelua
function sfml.IpAddress.to_string(self: sfml.IpAddress, string: cstring): void
```



### sfml.IpAddress.to_integer

```nelua
function sfml.IpAddress.to_integer(self: sfml.IpAddress): sfml.Uint32
```



### sfml.IpAddress.get_local_address

```nelua
function sfml.IpAddress.get_local_address(): sfml.IpAddress
```



### sfml.IpAddress.get_public_address

```nelua
function sfml.IpAddress.get_public_address(timeout: sfml.Time): sfml.IpAddress
```



### sfml.FtpTransferMode

```nelua
global sfml.FtpTransferMode: type = @enum(cint) {
  Binary = 0,
  Ascii,
  Ebcdic
}
```

Network: FTP

### sfml.FtpStatus

```nelua
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

```nelua
function sfml.FtpListingResponse.destroy(self: *sfml.FtpListingResponse): void
```



### sfml.FtpListingResponse.is_ok

```nelua
function sfml.FtpListingResponse.is_ok(self: *sfml.FtpListingResponse <const>): sfml.Bool
```



### sfml.FtpListingResponse.get_status

```nelua
function sfml.FtpListingResponse.get_status(self: *sfml.FtpListingResponse <const>): sfml.FtpStatus
```



### sfml.FtpListingResponse.get_message

```nelua
function sfml.FtpListingResponse.get_message(self: *sfml.FtpListingResponse <const>): cstring
```



### sfml.FtpListingResponse.get_count

```nelua
function sfml.FtpListingResponse.get_count(self: *sfml.FtpListingResponse <const>): csize
```



### sfml.FtpListingResponse.get_name

```nelua
function sfml.FtpListingResponse.get_name(self: *sfml.FtpListingResponse <const>, index: csize): cstring
```



### sfml.FtpDirectoryResponse.destroy

```nelua
function sfml.FtpDirectoryResponse.destroy(self: *sfml.FtpListingResponse): void
```



### sfml.FtpDirectoryResponse.is_ok

```nelua
function sfml.FtpDirectoryResponse.is_ok(self: *sfml.FtpListingResponse <const>): sfml.Bool
```



### sfml.FtpDirectoryResponse.get_status

```nelua
function sfml.FtpDirectoryResponse.get_status(self: *sfml.FtpListingResponse <const>): sfml.FtpStatus
```



### sfml.FtpDirectoryResponse.get_message

```nelua
function sfml.FtpDirectoryResponse.get_message(self: *sfml.FtpListingResponse <const>): cstring
```



### sfml.FtpDirectoryResponse.get_directory

```nelua
function sfml.FtpDirectoryResponse.get_directory(self: *sfml.FtpListingResponse <const>): cstring
```



### sfml.FtpResponse.destroy

```nelua
function sfml.FtpResponse.destroy(self: *sfml.FtpResponse): void
```



### sfml.FtpResponse.is_ok

```nelua
function sfml.FtpResponse.is_ok(self: *sfml.FtpResponse <const>): sfml.Bool
```



### sfml.FtpResponse.get_status

```nelua
function sfml.FtpResponse.get_status(self: *sfml.FtpResponse <const>): sfml.FtpStatus
```



### sfml.FtpResponse.get_message

```nelua
function sfml.FtpResponse.get_message(self: *sfml.FtpResponse <const>): cstring
```



### sfml.Ftp.create

```nelua
function sfml.Ftp.create(): *sfml.Ftp
```



### sfml.Ftp.destroy

```nelua
function sfml.Ftp.destroy(self: *sfml.Ftp): void
```



### sfml.Ftp.connect

```nelua
function sfml.Ftp.connect(self: *sfml.Ftp, server: sfml.IpAddress, port: cushort, timeout: sfml.Time): *sfml.FtpResponse
```



### sfml.Ftp.login_anonymous

```nelua
function sfml.Ftp.login_anonymous(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.login

```nelua
function sfml.Ftp.login(self: *sfml.Ftp, name: cstring <const>, password: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.disconnect

```nelua
function sfml.Ftp.disconnect(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.keep_alive

```nelua
function sfml.Ftp.keep_alive(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.get_working_directory

```nelua
function sfml.Ftp.get_working_directory(self: *sfml.Ftp): *sfml.FtpDirectoryResponse
```



### sfml.Ftp.get_directory_listing

```nelua
function sfml.Ftp.get_directory_listing(self: *sfml.Ftp, directory: cstring <const>): *sfml.FtpListingResponse
```



### sfml.Ftp.change_directory

```nelua
function sfml.Ftp.change_directory(self: *sfml.Ftp, directory: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.parent_directory

```nelua
function sfml.Ftp.parent_directory(self: *sfml.Ftp): *sfml.FtpResponse
```



### sfml.Ftp.create_directory

```nelua
function sfml.Ftp.create_directory(self: *sfml.Ftp, name: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.delete_directory

```nelua
function sfml.Ftp.delete_directory(self: *sfml.Ftp, name: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.rename_file

```nelua
function sfml.Ftp.rename_file(self: *sfml.Ftp, file: cstring <const>, newName: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.delete_file

```nelua
function sfml.Ftp.delete_file(self: *sfml.Ftp, file: cstring <const>): *sfml.FtpResponse
```



### sfml.Ftp.download

```nelua
function sfml.Ftp.download(self: *sfml.Ftp, remoteFile: cstring <const>, localPath: cstring <const>, mode: sfml.FtpTransferMode): *sfml.FtpResponse
```



### sfml.Ftp.upload

```nelua
function sfml.Ftp.upload(self: *sfml.Ftp, localFile: cstring <const>, remotePath: cstring <const>, mode: sfml.FtpTransferMode, append: sfml.Bool): *sfml.FtpResponse
```



### sfml.Ftp.send_command

```nelua
function sfml.Ftp.send_command(self: *sfml.Ftp, command: cstring <const>, parameter: cstring <const>): *sfml.FtpResponse
```



### sfml.HttpMethod

```nelua
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

```nelua
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

```nelua
function sfml.HttpRequest.create(): *sfml.HttpRequest
```



### sfml.HttpRequest.destroy

```nelua
function sfml.HttpRequest.destroy(self: *sfml.HttpRequest): void
```



### sfml.HttpRequest.set_field

```nelua
function sfml.HttpRequest.set_field(self: *sfml.HttpRequest, field: cstring <const>, value: cstring <const>): void
```



### sfml.HttpRequest.set_method

```nelua
function sfml.HttpRequest.set_method(self: *sfml.HttpRequest, method: sfml.HttpMethod): void
```



### sfml.HttpRequest.set_uri

```nelua
function sfml.HttpRequest.set_uri(self: *sfml.HttpRequest, uri: cstring <const>): void
```



### sfml.HttpRequest.set_http_version

```nelua
function sfml.HttpRequest.set_http_version(self: *sfml.HttpRequest, major: cuint, minor: cuint): void
```



### sfml.HttpRequest.set_body

```nelua
function sfml.HttpRequest.set_body(self: *sfml.HttpRequest, body: cstring <const>): void
```



### sfml.HttpResponse.destroy

```nelua
function sfml.HttpResponse.destroy(self: *sfml.HttpResponse): void
```



### sfml.HttpResponse.get_field

```nelua
function sfml.HttpResponse.get_field(self: *sfml.HttpResponse <const>, field: cstring <const>): cstring
```



### sfml.HttpResponse.get_status

```nelua
function sfml.HttpResponse.get_status(self: *sfml.HttpResponse <const>): sfml.HttpStatus
```



### sfml.HttpResponse.get_major_version

```nelua
function sfml.HttpResponse.get_major_version(self: *sfml.HttpResponse <const>): cuint
```



### sfml.HttpResponse.get_minor_version

```nelua
function sfml.HttpResponse.get_minor_version(self: *sfml.HttpResponse <const>): cuint
```



### sfml.HttpResponse.get_body

```nelua
function sfml.HttpResponse.get_body(self: *sfml.HttpResponse <const>): cstring
```



### sfml.Http.create

```nelua
function sfml.Http.create(): *sfml.Http
```



### sfml.Http.destroy

```nelua
function sfml.Http.destroy(http: *sfml.Http): void
```



### sfml.Http.set_host

```nelua
function sfml.Http.set_host(http: *sfml.Http, host: cstring <const>, port: cuint): void
```



### sfml.Http.send_request

```nelua
function sfml.Http.send_request(http: *sfml.Http, request: *sfml.HttpRequest <const>, timeout: sfml.Time): *sfml.HttpResponse
```



### sfml.Packet.create

```nelua
function sfml.Packet.create(): *sfml.Packet
```

Network: Packet

### sfml.Packet.copy

```nelua
function sfml.Packet.copy(self: *sfml.Packet <const>): *sfml.Packet
```



### sfml.Packet.destroy

```nelua
function sfml.Packet.destroy(self: *sfml.Packet): void
```



### sfml.Packet.append

```nelua
function sfml.Packet.append(self: *sfml.Packet, data: pointer, sizeInBytes: csize): void
```



### sfml.Packet.clear

```nelua
function sfml.Packet.clear(self: *sfml.Packet): void
```



### sfml.Packet.get_data

```nelua
function sfml.Packet.get_data(self: *sfml.Packet <const>): pointer
```



### sfml.Packet.get_data_size

```nelua
function sfml.Packet.get_data_size(self: *sfml.Packet <const>): csize
```



### sfml.Packet.end_of_packet

```nelua
function sfml.Packet.end_of_packet(self: *sfml.Packet <const>): sfml.Bool
```



### sfml.Packet.can_read

```nelua
function sfml.Packet.can_read(self: *sfml.Packet <const>): sfml.Bool
```



### sfml.Packet.read_bool

```nelua
function sfml.Packet.read_bool(self: *sfml.Packet): sfml.Bool
```



### sfml.Packet.read_int8

```nelua
function sfml.Packet.read_int8(self: *sfml.Packet): sfml.Int8
```



### sfml.Packet.read_uint8

```nelua
function sfml.Packet.read_uint8(self: *sfml.Packet): sfml.Uint8
```



### sfml.Packet.read_int16

```nelua
function sfml.Packet.read_int16(self: *sfml.Packet): sfml.Int16
```



### sfml.Packet.read_uint16

```nelua
function sfml.Packet.read_uint16(self: *sfml.Packet): sfml.Uint16
```



### sfml.Packet.read_int32

```nelua
function sfml.Packet.read_int32(self: *sfml.Packet): sfml.Int32
```



### sfml.Packet.read_uint32

```nelua
function sfml.Packet.read_uint32(self: *sfml.Packet): sfml.Uint32
```



### sfml.Packet.read_float

```nelua
function sfml.Packet.read_float(self: *sfml.Packet): float32
```



### sfml.Packet.read_double

```nelua
function sfml.Packet.read_double(self: *sfml.Packet): float64
```



### sfml.Packet.read_string

```nelua
function sfml.Packet.read_string(self: *sfml.Packet, str: cstring): void
```



### sfml.Packet.read_wide_string

```nelua
function sfml.Packet.read_wide_string(self: *sfml.Packet, str: *[0]cint): void
```



### sfml.Packet.write_bool

```nelua
function sfml.Packet.write_bool(self: *sfml.Packet, data: sfml.Bool): void
```



### sfml.Packet.write_int8

```nelua
function sfml.Packet.write_int8(self: *sfml.Packet, data: sfml.Int8): void
```



### sfml.Packet.write_uint8

```nelua
function sfml.Packet.write_uint8(self: *sfml.Packet, data: sfml.Uint8): void
```



### sfml.Packet.write_int16

```nelua
function sfml.Packet.write_int16(self: *sfml.Packet, data: sfml.Int16): void
```



### sfml.Packet.write_uint16

```nelua
function sfml.Packet.write_uint16(self: *sfml.Packet, data: sfml.Uint16): void
```



### sfml.Packet.write_int32

```nelua
function sfml.Packet.write_int32(self: *sfml.Packet, data: sfml.Int32): void
```



### sfml.Packet.write_uint32

```nelua
function sfml.Packet.write_uint32(self: *sfml.Packet, data: sfml.Uint32): void
```



### sfml.Packet.write_float

```nelua
function sfml.Packet.write_float(self: *sfml.Packet, data: float32): void
```



### sfml.Packet.write_double

```nelua
function sfml.Packet.write_double(self: *sfml.Packet, data: float64): void
```



### sfml.Packet.write_string

```nelua
function sfml.Packet.write_string(self: *sfml.Packet, data: cstring <const>): void
```



### sfml.Packet.write_wide_string

```nelua
function sfml.Packet.write_wide_string(self: *sfml.Packet, data: *[0]cint): void
```



### sfml.SocketStatus

```nelua
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

```nelua
function sfml.SocketSelector.create(): *sfml.SocketSelector
```



### sfml.SocketSelector.copy

```nelua
function sfml.SocketSelector.copy(self: *sfml.SocketSelector <const>): *sfml.SocketSelector
```



### sfml.SocketSelector.destroy

```nelua
function sfml.SocketSelector.destroy(self: *sfml.SocketSelector): void
```



### sfml.SocketSelector.add_tcp_listener

```nelua
function sfml.SocketSelector.add_tcp_listener(self: *sfml.SocketSelector, socket: *sfml.TcpListener): void
```



### sfml.SocketSelector.add_tcp_socket

```nelua
function sfml.SocketSelector.add_tcp_socket(self: *sfml.SocketSelector, socket: *sfml.TcpSocket): void
```



### sfml.SocketSelector.add_udp_socket

```nelua
function sfml.SocketSelector.add_udp_socket(self: *sfml.SocketSelector, socket: *sfml.UdpSocket): void
```



### sfml.SocketSelector.remove_tcp_listener

```nelua
function sfml.SocketSelector.remove_tcp_listener(self: *sfml.SocketSelector, socket: *sfml.TcpListener): void
```



### sfml.SocketSelector.remove_tcp_socket

```nelua
function sfml.SocketSelector.remove_tcp_socket(self: *sfml.SocketSelector, socket: *sfml.TcpSocket): void
```



### sfml.SocketSelector.remove_udp_socket

```nelua
function sfml.SocketSelector.remove_udp_socket(self: *sfml.SocketSelector, socket: *sfml.UdpSocket): void
```



### sfml.SocketSelector.clear

```nelua
function sfml.SocketSelector.clear(self: *sfml.SocketSelector): void
```



### sfml.SocketSelector.wait

```nelua
function sfml.SocketSelector.wait(self: *sfml.SocketSelector, timeout: sfml.Time): sfml.Bool
```



### sfml.SocketSelector.is_tcp_listener_ready

```nelua
function sfml.SocketSelector.is_tcp_listener_ready(self: *sfml.SocketSelector <const>, socket: *sfml.TcpListener): void
```



### sfml.SocketSelector.is_tcp_socket_ready

```nelua
function sfml.SocketSelector.is_tcp_socket_ready(self: *sfml.SocketSelector <const>, socket: *sfml.TcpSocket): void
```



### sfml.SocketSelector.is_udp_socket_ready

```nelua
function sfml.SocketSelector.is_udp_socket_ready(self: *sfml.SocketSelector <const>, socket: *sfml.UdpSocket): void
```



### sfml.TcpListener.create

```nelua
function sfml.TcpListener.create(): *sfml.TcpListener
```



### sfml.TcpListener.destroy

```nelua
function sfml.TcpListener.destroy(self: *sfml.TcpListener): void
```



### sfml.TcpListener.set_blocking

```nelua
function sfml.TcpListener.set_blocking(self: *sfml.TcpListener, blocking: sfml.Bool): void
```



### sfml.TcpListener.is_blocking

```nelua
function sfml.TcpListener.is_blocking(self: *sfml.TcpListener <const>): sfml.Bool
```



### sfml.TcpListener.get_local_port

```nelua
function sfml.TcpListener.get_local_port(self: *sfml.TcpListener <const>): cushort
```



### sfml.TcpListener.listen

```nelua
function sfml.TcpListener.listen(self: *sfml.TcpListener <const>, port: cushort, address: sfml.IpAddress): sfml.SocketStatus
```



### sfml.TcpListener.accept

```nelua
function sfml.TcpListener.accept(self: *sfml.TcpListener <const>, connected: *[0]*sfml.TcpSocket): sfml.SocketStatus
```



### sfml.TcpSocket.create

```nelua
function sfml.TcpSocket.create(): *sfml.TcpSocket
```



### sfml.TcpSocket.destroy

```nelua
function sfml.TcpSocket.destroy(self: *sfml.TcpSocket): void
```



### sfml.TcpSocket.set_blocking

```nelua
function sfml.TcpSocket.set_blocking(self: *sfml.TcpSocket, blocking: sfml.Bool): void
```



### sfml.TcpSocket.is_blocking

```nelua
function sfml.TcpSocket.is_blocking(self: *sfml.TcpSocket <const>): sfml.Bool
```



### sfml.TcpSocket.get_local_port

```nelua
function sfml.TcpSocket.get_local_port(self: *sfml.TcpSocket <const>): cushort
```



### sfml.TcpSocket.get_remote_address

```nelua
function sfml.TcpSocket.get_remote_address(self: *sfml.TcpSocket <const>): sfml.IpAddress
```



### sfml.TcpSocket.get_remote_port

```nelua
function sfml.TcpSocket.get_remote_port(self: *sfml.TcpSocket <const>): cushort
```



### sfml.TcpSocket.connect

```nelua
function sfml.TcpSocket.connect(self: *sfml.TcpSocket, remoteAddress: sfml.IpAddress, remotePort: cushort, timeout: sfml.Time): sfml.SocketStatus
```



### sfml.TcpSocket.disconnect

```nelua
function sfml.TcpSocket.disconnect(self: *sfml.TcpSocket): void
```



### sfml.TcpSocket.send

```nelua
function sfml.TcpSocket.send(self: *sfml.TcpSocket, data: pointer <const>, size: csize): sfml.SocketStatus
```



### sfml.TcpSocket.send_partial

```nelua
function sfml.TcpSocket.send_partial(self: *sfml.TcpSocket, data: pointer <const>, size: csize, received: *csize): sfml.SocketStatus
```



### sfml.TcpSocket.receive

```nelua
function sfml.TcpSocket.receive(self: *sfml.TcpSocket, data: pointer <const>, size: csize, received: *csize): sfml.SocketStatus
```



### sfml.TcpSocket.send_packet

```nelua
function sfml.TcpSocket.send_packet(self: *sfml.TcpSocket, packet: *sfml.Packet): sfml.SocketStatus
```



### sfml.TcpSocket.receive_packet

```nelua
function sfml.TcpSocket.receive_packet(self: *sfml.TcpSocket, packet: *sfml.Packet): sfml.SocketStatus
```



### sfml.UdpSocket.create

```nelua
function sfml.UdpSocket.create(): *sfml.UdpSocket
```



### sfml.UdpSocket.destroy

```nelua
function sfml.UdpSocket.destroy(self: *sfml.UdpSocket): void
```



### sfml.UdpSocket.set_blocking

```nelua
function sfml.UdpSocket.set_blocking(self: *sfml.UdpSocket, blocking: sfml.Bool): void
```



### sfml.UdpSocket.is_blocking

```nelua
function sfml.UdpSocket.is_blocking(self: *sfml.UdpSocket <const>): sfml.Bool
```



### sfml.UdpSocket.get_local_port

```nelua
function sfml.UdpSocket.get_local_port(self: *sfml.UdpSocket <const>): cushort
```



### sfml.UdpSocket.bind

```nelua
function sfml.UdpSocket.bind(self: *sfml.UdpSocket <const>, port: cushort, address: sfml.IpAddress): sfml.SocketStatus
```



### sfml.UdpSocket.unbind

```nelua
function sfml.UdpSocket.unbind(self: *sfml.UdpSocket): void
```



### sfml.UdpSocket.send

```nelua
function sfml.UdpSocket.send(self: *sfml.UdpSocket, data: pointer<const>, size: csize, remoteAddress: sfml.IpAddress, remotePort: cushort): sfml.SocketStatus
```



### sfml.UdpSocket.receive

```nelua
function sfml.UdpSocket.receive(self: *sfml.UdpSocket, data: pointer, size: csize, received: *csize, remoteAddress: *sfml.IpAddress, remotePort: *cushort): sfml.SocketStatus
```



### sfml.UdpSocket.send_packet

```nelua
function sfml.UdpSocket.send_packet(self: *sfml.UdpSocket, packet: *sfml.Packet, remoteAddress: sfml.IpAddress, remotePort: cushort): sfml.SocketStatus
```



### sfml.UdpSocket.receive_packet

```nelua
function sfml.UdpSocket.receive_packet(self: *sfml.UdpSocket, packet: *sfml.Packet, remoteAddress: *sfml.IpAddress, remotePort: *cushort): sfml.SocketStatus
```



### sfml.UdpSocket.max_datagram_size

```nelua
function sfml.UdpSocket.max_datagram_size(): cuint
```



### sfml.SoundStatus

```nelua
global sfml.SoundStatus: type = @enum(cint) {
  Stopped = 0,
  Paused,
  Playing
}
```

Audio

### sfml.TimeSpan

```nelua
global sfml.TimeSpan: type = @record {
  offset: sfml.Time,
  length: sfml.Time
}
```



### sfml.Listener

```nelua
global sfml.Listener = @record{}
```

Audio: Listener

### sfml.Listener.set_global_volume

```nelua
function sfml.Listener.set_global_volume(volume: float32): void
```



### sfml.Listener.get_global_volume

```nelua
function sfml.Listener.get_global_volume(): float32
```



### sfml.Listener.set_position

```nelua
function sfml.Listener.set_position(position: sfml.Vector3f): void
```



### sfml.Listener.get_position

```nelua
function sfml.Listener.get_position(): sfml.Vector3f
```



### sfml.Listener.set_direction

```nelua
function sfml.Listener.set_direction(direction: sfml.Vector3f): void
```



### sfml.Listener.get_direction

```nelua
function sfml.Listener.get_direction(): sfml.Vector3f
```



### sfml.Listener.set_up_vector

```nelua
function sfml.Listener.set_up_vector(upVector: sfml.Vector3f): void
```



### sfml.Listener.get_up_vector

```nelua
function sfml.Listener.get_up_vector(): sfml.Vector3f
```



### sfml.Music

```nelua
global sfml.Music: type = @record {}
```

Audio: Music

### sfml.Sound

```nelua
global sfml.Sound: type = @record {}
```



### sfml.SoundBuffer

```nelua
global sfml.SoundBuffer: type = @record {}
```



### sfml.SoundBufferRecorder

```nelua
global sfml.SoundBufferRecorder: type = @record {}
```



### sfml.SoundRecorder

```nelua
global sfml.SoundRecorder: type = @record {}
```



### sfml.SoundStream

```nelua
global sfml.SoundStream: type = @record {}
```



### sfml.Music.create_from_file

```nelua
function sfml.Music.create_from_file(filename: cstring <const>): *sfml.Music
```



### sfml.Music.create_from_memory

```nelua
function sfml.Music.create_from_memory(data: pointer <const>, sizeInBytes: csize): *sfml.Music
```



### sfml.Music.create_from_stream

```nelua
function sfml.Music.create_from_stream(stream: *sfml.InputStream): *sfml.Music
```



### sfml.Music.destroy

```nelua
function sfml.Music.destroy(self: *sfml.Music): void
```



### sfml.Music.get_loop

```nelua
function sfml.Music.get_loop(self: *sfml.Music <const>): sfml.Bool
```



### sfml.Music.set_loop

```nelua
function sfml.Music.set_loop(self: *sfml.Music, loop: sfml.Bool): void
```



### sfml.Music.get_duration

```nelua
function sfml.Music.get_duration(self: *sfml.Music <const>): sfml.Time
```



### sfml.Music.get_loop_points

```nelua
function sfml.Music.get_loop_points(self: *sfml.Music <const>): sfml.TimeSpan
```



### sfml.Music.set_loop_points

```nelua
function sfml.Music.set_loop_points(self: *sfml.Music, timePoints: sfml.TimeSpan): void
```



### sfml.Music.play

```nelua
function sfml.Music.play(self: *sfml.Music): void
```



### sfml.Music.pause

```nelua
function sfml.Music.pause(self: *sfml.Music): void
```



### sfml.Music.stop

```nelua
function sfml.Music.stop(self: *sfml.Music): void
```



### sfml.Music.get_channel_count

```nelua
function sfml.Music.get_channel_count(self: *sfml.Music <const>): cuint
```



### sfml.Music.get_sample_rate

```nelua
function sfml.Music.get_sample_rate(self: *sfml.Music <const>): cuint
```



### sfml.Music.get_status

```nelua
function sfml.Music.get_status(self: *sfml.Music <const>): sfml.SoundStatus
```



### sfml.Music.get_playing_offset

```nelua
function sfml.Music.get_playing_offset(self: *sfml.Music <const>): sfml.Time
```



### sfml.Music.set_playing_offset

```nelua
function sfml.Music.set_playing_offset(self: *sfml.Music, timeOffset: sfml.Time): void
```



### sfml.Music.get_pitch

```nelua
function sfml.Music.get_pitch(self: *sfml.Music <const>): float32
```



### sfml.Music.set_pitch

```nelua
function sfml.Music.set_pitch(self: *sfml.Music, pitch: float32): void
```



### sfml.Music.get_volume

```nelua
function sfml.Music.get_volume(self: *sfml.Music <const>): float32
```



### sfml.Music.set_volume

```nelua
function sfml.Music.set_volume(self: *sfml.Music, volume: float32): void
```



### sfml.Music.get_position

```nelua
function sfml.Music.get_position(self: *sfml.Music <const>): sfml.Vector3f
```



### sfml.Music.set_position

```nelua
function sfml.Music.set_position(self: *sfml.Music, position: sfml.Vector3f): void
```



### sfml.Music.set_relative_to_listener

```nelua
function sfml.Music.set_relative_to_listener(music: *sfml.Music, relative: sfml.Bool): void
```



### sfml.Music.get_min_distance

```nelua
function sfml.Music.get_min_distance(self: *sfml.Music <const>): float32
```



### sfml.Music.set_min_distance

```nelua
function sfml.Music.set_min_distance(self: *sfml.Music, distance: float32): void
```



### sfml.Music.get_attenuation

```nelua
function sfml.Music.get_attenuation(self: *sfml.Music <const>): float32
```



### sfml.Music.set_attenuation

```nelua
function sfml.Music.set_attenuation(self: *sfml.Music, attenuation: float32): void
```



### sfml.Music.is_relative_to_listener

```nelua
function sfml.Music.is_relative_to_listener(self: *sfml.Music <const>): sfml.Bool
```



### sfml.Sound.create

```nelua
function sfml.Sound.create(): *sfml.Sound
```

Audio: Sound

### sfml.Sound.copy

```nelua
function sfml.Sound.copy(self: *sfml.Sound <const>): *sfml.Sound
```



### sfml.Sound.destroy

```nelua
function sfml.Sound.destroy(self: *sfml.Sound): void
```



### sfml.Sound.play

```nelua
function sfml.Sound.play(self: *sfml.Sound): void
```



### sfml.Sound.pause

```nelua
function sfml.Sound.pause(self: *sfml.Sound): void
```



### sfml.Sound.stop

```nelua
function sfml.Sound.stop(self: *sfml.Sound): void
```



### sfml.Sound.get_buffer

```nelua
function sfml.Sound.get_buffer(self: *sfml.Sound <const>): *sfml.SoundBuffer
```



### sfml.Sound.set_buffer

```nelua
function sfml.Sound.set_buffer(self: *sfml.Sound, buffer: *sfml.SoundBuffer <const>): void
```



### sfml.Sound.set_loop

```nelua
function sfml.Sound.set_loop(self: *sfml.Sound, loop: sfml.Bool): void
```



### sfml.Sound.get_loop

```nelua
function sfml.Sound.get_loop(self: *sfml.Sound <const>): sfml.Bool
```



### sfml.Sound.get_status

```nelua
function sfml.Sound.get_status(self: *sfml.Sound <const>): sfml.SoundStatus
```



### sfml.Sound.get_pitch

```nelua
function sfml.Sound.get_pitch(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_pitch

```nelua
function sfml.Sound.set_pitch(self: *sfml.Sound, pitch: float32): void
```



### sfml.Sound.get_volume

```nelua
function sfml.Sound.get_volume(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_volume

```nelua
function sfml.Sound.set_volume(self: *sfml.Sound, volume: float32): void
```



### sfml.Sound.get_position

```nelua
function sfml.Sound.get_position(self: *sfml.Sound <const>): sfml.Vector3f
```



### sfml.Sound.set_position

```nelua
function sfml.Sound.set_position(self: *sfml.Sound, position: sfml.Vector3f): void
```



### sfml.Sound.get_min_distance

```nelua
function sfml.Sound.get_min_distance(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_min_distance

```nelua
function sfml.Sound.set_min_distance(self: *sfml.Sound, distance: float32): void
```



### sfml.Sound.get_attenuation

```nelua
function sfml.Sound.get_attenuation(self: *sfml.Sound <const>): float32
```



### sfml.Sound.set_attenuation

```nelua
function sfml.Sound.set_attenuation(self: *sfml.Sound, attenuation: float32): void
```



### sfml.Sound.get_playing_offset

```nelua
function sfml.Sound.get_playing_offset(self: *sfml.Sound <const>): sfml.Time
```



### sfml.Sound.set_playing_offset

```nelua
function sfml.Sound.set_playing_offset(self: *sfml.Sound, timeOffset: sfml.Time): void
```



### sfml.Sound.set_relative_to_listener

```nelua
function sfml.Sound.set_relative_to_listener(self: *sfml.Sound, relative: sfml.Bool): void
```



### sfml.Sound.is_relative_to_listener

```nelua
function sfml.Sound.is_relative_to_listener(self: *sfml.Sound <const>): sfml.Bool
```



### sfml.SoundBuffer.create_from_file

```nelua
function sfml.SoundBuffer.create_from_file(filename: cstring <const>): *sfml.SoundBuffer
```

Audio: Sound Buffer

### sfml.SoundBuffer.create_from_memory

```nelua
function sfml.SoundBuffer.create_from_memory(data: pointer <const>, sizeInBytes: csize): *sfml.SoundBuffer
```



### sfml.SoundBuffer.create_from_stream

```nelua
function sfml.SoundBuffer.create_from_stream(stream: *sfml.InputStream): *sfml.SoundBuffer
```



### sfml.SoundBuffer.create_from_samples

```nelua
function sfml.SoundBuffer.create_from_samples(samples: *[0]sfml.Int16, sampleCount: sfml.Uint64, channelCount: cuint, sampleRate: cuint): *sfml.SoundBuffer
```



### sfml.SoundBuffer.copy

```nelua
function sfml.SoundBuffer.copy(self: *sfml.SoundBuffer <const>): *sfml.SoundBuffer
```



### sfml.SoundBuffer.destroy

```nelua
function sfml.SoundBuffer.destroy(self: *sfml.SoundBuffer): void
```



### sfml.SoundBuffer.save_to_file

```nelua
function sfml.SoundBuffer.save_to_file(self: *sfml.SoundBuffer <const>, filename: cstring <const>): sfml.Bool
```



### sfml.SoundBuffer.get_samples

```nelua
function sfml.SoundBuffer.get_samples(self: *sfml.SoundBuffer <const>): *[0]sfml.Int16
```



### sfml.SoundBuffer.get_sample_count

```nelua
function sfml.SoundBuffer.get_sample_count(self: *sfml.SoundBuffer <const>): sfml.Uint64
```



### sfml.SoundBuffer.get_sample_rate

```nelua
function sfml.SoundBuffer.get_sample_rate(self: *sfml.SoundBuffer <const>): cuint
```



### sfml.SoundBuffer.get_channel_count

```nelua
function sfml.SoundBuffer.get_channel_count(self: *sfml.SoundBuffer <const>): cuint
```



### sfml.SoundBuffer.get_duration

```nelua
function sfml.SoundBuffer.get_duration(self: *sfml.SoundBuffer <const>): sfml.Time
```



### sfml.SoundBufferRecorder.create

```nelua
function sfml.SoundBufferRecorder.create(): *sfml.SoundBufferRecorder
```

Audio: Sound Buffer Recorder

### sfml.SoundBufferRecorder.destroy

```nelua
function sfml.SoundBufferRecorder.destroy(self: *sfml.SoundBufferRecorder): void
```



### sfml.SoundBufferRecorder.start

```nelua
function sfml.SoundBufferRecorder.start(self: *sfml.SoundBufferRecorder, sampleRate: cuint): sfml.Bool
```



### sfml.SoundBufferRecorder.stop

```nelua
function sfml.SoundBufferRecorder.stop(self: *sfml.SoundBufferRecorder): void
```



### sfml.SoundBufferRecorder.get_sample_rate

```nelua
function sfml.SoundBufferRecorder.get_sample_rate(self: *sfml.SoundBufferRecorder <const>): cuint
```



### sfml.SoundBufferRecorder.get_buffer

```nelua
function sfml.SoundBufferRecorder.get_buffer(self: *sfml.SoundBufferRecorder <const>): *sfml.SoundBuffer
```



### sfml.SoundBufferRecorder.set_device

```nelua
function sfml.SoundBufferRecorder.set_device(self: *sfml.SoundBufferRecorder <const>, name: cstring <const>): sfml.Bool
```



### sfml.SoundBufferRecorder.get_device

```nelua
function sfml.SoundBufferRecorder.get_device(self: *sfml.SoundBufferRecorder): cstring
```



### sfml.SoundRecorderStartCallback

```nelua
global sfml.SoundRecorderStartCallback: type = @function(pointer): sfml.Bool
```



### sfml.SoundRecorderProcessCallback

```nelua
global sfml.SoundRecorderProcessCallback: type = @function(*[0]sfml.Int16, csize, pointer): sfml.Bool
```



### sfml.SoundRecorderStopCallback

```nelua
global sfml.SoundRecorderStopCallback: type = @function(pointer): void
```



### sfml.SoundRecorder.create

```nelua
function sfml.SoundRecorder.create(onStart: sfml.SoundRecorderStartCallback, onProcess: sfml.SoundRecorderProcessCallback, onStop: sfml.SoundRecorderStopCallback, userData: pointer): *sfml.SoundRecorder
```

Audio: Sound Recorder

### sfml.SoundRecorder.destroy

```nelua
function sfml.SoundRecorder.destroy(self: *sfml.SoundRecorder): void
```



### sfml.SoundRecorder.start

```nelua
function sfml.SoundRecorder.start(self: *sfml.SoundRecorder, sampleRate: cuint): sfml.Bool
```



### sfml.SoundRecorder.stop

```nelua
function sfml.SoundRecorder.stop(self: *sfml.SoundRecorder): void
```



### sfml.SoundRecorder.get_sample_rate

```nelua
function sfml.SoundRecorder.get_sample_rate(self: *sfml.SoundRecorder <const>): cuint
```



### sfml.SoundRecorder.is_available

```nelua
function sfml.SoundRecorder.is_available(): sfml.Bool
```



### sfml.SoundRecorder.set_processing_interval

```nelua
function sfml.SoundRecorder.set_processing_interval(self: *sfml.SoundRecorder, interval: sfml.Time): void
```



### sfml.SoundRecorder.get_available_devices

```nelua
function sfml.SoundRecorder.get_available_devices(count: csize): *[0]cstring
```



### sfml.SoundRecorder.get_default_device

```nelua
function sfml.SoundRecorder.get_default_device(): cstring
```



### sfml.SoundRecorder.get_device

```nelua
function sfml.SoundRecorder.get_device(self: *sfml.SoundRecorder): cstring
```



### sfml.SoundRecorder.set_device

```nelua
function sfml.SoundRecorder.set_device(self: *sfml.SoundRecorder, name: cstring <const>): sfml.Bool
```



### sfml.SoundRecorder.get_channel_count

```nelua
function sfml.SoundRecorder.get_channel_count(self: *sfml.SoundRecorder <const>): cuint
```



### sfml.SoundRecorder.set_channel_count

```nelua
function sfml.SoundRecorder.set_channel_count(self: *sfml.SoundRecorder, channelCount: cuint): void
```



### sfml.SoundStreamChunk

```nelua
global sfml.SoundStreamChunk: type = @record {
  samples: *[0]sfml.Int16,
  sampleCount: cuint
}
```

Audio: SoundStream

### sfml.SoundStreamGetDataCallback

```nelua
global sfml.SoundStreamGetDataCallback: type = @function(*sfml.SoundStreamChunk, pointer): sfml.Bool
```



### sfml.SoundStreamSeekCallback

```nelua
global sfml.SoundStreamSeekCallback: type = @function(sfml.Time, pointer): void
```



### sfml.SoundStream.create

```nelua
function sfml.SoundStream.create(onGetData: sfml.SoundStreamGetDataCallback, onSeek: sfml.SoundStreamSeekCallback, channelCount: cuint, sampleRate: cuint, userData: pointer): *sfml.SoundStream
```



### sfml.SoundStream.destroy

```nelua
function sfml.SoundStream.destroy(self: *sfml.SoundStream): void
```



### sfml.SoundStream.play

```nelua
function sfml.SoundStream.play(self: *sfml.SoundStream): void
```



### sfml.SoundStream.pause

```nelua
function sfml.SoundStream.pause(self: *sfml.SoundStream): void
```



### sfml.SoundStream.stop

```nelua
function sfml.SoundStream.stop(self: *sfml.SoundStream): void
```



### sfml.SoundStream.get_status

```nelua
function sfml.SoundStream.get_status(self: *sfml.SoundStream <const>): sfml.SoundStatus
```



### sfml.SoundStream.get_channel_count

```nelua
function sfml.SoundStream.get_channel_count(self: *sfml.SoundStream <const>): cuint
```



### sfml.SoundStream.get_pitch

```nelua
function sfml.SoundStream.get_pitch(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_pitch

```nelua
function sfml.SoundStream.set_pitch(self: *sfml.SoundStream, pitch: float32): void
```



### sfml.SoundStream.get_volume

```nelua
function sfml.SoundStream.get_volume(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_volume

```nelua
function sfml.SoundStream.set_volume(self: *sfml.SoundStream, volume: float32): void
```



### sfml.SoundStream.get_position

```nelua
function sfml.SoundStream.get_position(self: *sfml.SoundStream <const>): sfml.Vector3f
```



### sfml.SoundStream.set_position

```nelua
function sfml.SoundStream.set_position(self: *sfml.SoundStream, position: sfml.Vector3f): void
```



### sfml.SoundStream.get_min_distance

```nelua
function sfml.SoundStream.get_min_distance(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_min_distance

```nelua
function sfml.SoundStream.set_min_distance(self: *sfml.SoundStream, distance: float32): void
```



### sfml.SoundStream.get_playing_offset

```nelua
function sfml.SoundStream.get_playing_offset(self: *sfml.SoundStream <const>): sfml.Time
```



### sfml.SoundStream.set_playing_offset

```nelua
function sfml.SoundStream.set_playing_offset(self: *sfml.SoundStream, timeOffset: sfml.Time): void
```



### sfml.SoundStream.get_loop

```nelua
function sfml.SoundStream.get_loop(self: *sfml.SoundStream <const>): sfml.Bool
```



### sfml.SoundStream.set_loop

```nelua
function sfml.SoundStream.set_loop(self: *sfml.SoundStream, loop: sfml.Bool): void
```



### sfml.SoundStream.get_attenuation

```nelua
function sfml.SoundStream.get_attenuation(self: *sfml.SoundStream <const>): float32
```



### sfml.SoundStream.set_attenuation

```nelua
function sfml.SoundStream.set_attenuation(self: *sfml.SoundStream, attenuation: float32): void
```



### sfml.SoundStream.is_relative_to_listener

```nelua
function sfml.SoundStream.is_relative_to_listener(self: *sfml.SoundStream <const>): sfml.Bool
```



### sfml.SoundStream.set_relative_to_listener

```nelua
function sfml.SoundStream.set_relative_to_listener(self: *sfml.SoundStream, relative: sfml.Bool): void
```



### sfml.Context

```nelua
global sfml.Context: type = @record {}
```

Clipboard

### sfml.Cursor

```nelua
global sfml.Cursor: type = @record {}
```



### sfml.Window

```nelua
global sfml.Window: type = @record {}
```



### sfml.Clipboard

```nelua
global sfml.Clipboard = @record{}
```



### sfml.Clipboard.get_string

```nelua
function sfml.Clipboard.get_string(): cstring
```



### sfml.Clipboard.get_unicode_string

```nelua
function sfml.Clipboard.get_unicode_string(): *[0]sfml.Uint32
```



### sfml.Clipboard.set_string

```nelua
function sfml.Clipboard.set_string(text: cstring <const>): void
```



### sfml.Clipboard.set_unicode_string

```nelua
function sfml.Clipboard.set_unicode_string(text: *[0]sfml.Uint32): void
```



### sfml.WindowHandle

```nelua
global sfml.WindowHandle: type = @culong
```



### sfml.WindowHandle

```nelua
global sfml.WindowHandle: type = @pointer
```



### sfml.VideoMode

```nelua
global sfml.VideoMode: type = @record {
  width: cuint,
  height: cuint,
  bitsPerPixel: cuint
}
```

Video Mode

### sfml.VideoMode.get_desktop_mode

```nelua
function sfml.VideoMode.get_desktop_mode(): sfml.VideoMode
```



### sfml.VideoMode.get_fullscreen_modes

```nelua
function sfml.VideoMode.get_fullscreen_modes(count: *csize): *[0]sfml.VideoMode
```



### sfml.VideoMode.is_valid

```nelua
function sfml.VideoMode.is_valid(mode: sfml.VideoMode): sfml.Bool
```



### sfml.JoystickIdentification

```nelua
global sfml.JoystickIdentification: type = @record {
  name: cstring,
  vendorId: cuint,
  productId: cuint
}
```

Control: Joystick

### sfml.JoystickCount

```nelua
global sfml.JoystickCount: cint
```



### sfml.JoystickButtonCount

```nelua
global sfml.JoystickButtonCount: cint
```



### sfml.JoystickAxisCount

```nelua
global sfml.JoystickAxisCount: cint
```



### sfml.JoystickAxis

```nelua
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

```nelua
global sfml.Joystick = @record{}
```



### sfml.Joystick.is_connected

```nelua
function sfml.Joystick.is_connected(joystick: cuint): sfml.Bool
```



### sfml.Joystick.get_button_count

```nelua
function sfml.Joystick.get_button_count(joystick: cuint): cuint
```



### sfml.Joystick.has_axis

```nelua
function sfml.Joystick.has_axis(joystick: cuint, axis: sfml.JoystickAxis): sfml.Bool
```



### sfml.Joystick.is_button_pressed

```nelua
function sfml.Joystick.is_button_pressed(joystick: cuint, button: cuint): sfml.Bool
```



### sfml.Joystick.get_axis_position

```nelua
function sfml.Joystick.get_axis_position(joystick: cuint, axis: sfml.JoystickAxis): float32
```



### sfml.Joystick.get_identification

```nelua
function sfml.Joystick.get_identification(joystick: cuint): sfml.JoystickIdentification
```



### sfml.Joystick.update

```nelua
function sfml.Joystick.update(): void
```



### sfml.KeyCode

```nelua
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

```nelua
global sfml.KeyDash: cint
```



### sfml.KeyBack

```nelua
global sfml.KeyBack: cint
```



### sfml.KeyBackSlash

```nelua
global sfml.KeyBackSlash: cint
```



### sfml.KeySemiColon

```nelua
global sfml.KeySemiColon: cint
```



### sfml.KeyReturn

```nelua
global sfml.KeyReturn: cint
```



### sfml.Keyboard

```nelua
global sfml.Keyboard = @record{}
```



### sfml.Keyboard.is_key_pressed

```nelua
function sfml.Keyboard.is_key_pressed(key: sfml.KeyCode): sfml.Bool
```



### sfml.Keyboard.set_virtual_keyboard_visible

```nelua
function sfml.Keyboard.set_virtual_keyboard_visible(visible: sfml.Bool): void
```



### sfml.MouseButton

```nelua
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

```nelua
global sfml.MouseWheel: type = @enum(cint) {
  VerticalWheel = 0,
  HorizontalWheel
}
```



### sfml.Mouse

```nelua
global sfml.Mouse = @record{}
```



### sfml.Mouse.is_button_pressed

```nelua
function sfml.Mouse.is_button_pressed(button: sfml.MouseButton): sfml.Bool
```



### sfml.Mouse.get_position

```nelua
function sfml.Mouse.get_position(relativeTo: *sfml.Window <const>): sfml.Vector2i
```



### sfml.Mouse.set_position

```nelua
function sfml.Mouse.set_position(position: sfml.Vector2i, relativeTo: *sfml.Window <const>): void
```



### sfml.CursorType

```nelua
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

```nelua
function sfml.Cursor.create_from_pixels(pixels: *[0]sfml.Uint8 <const>, size: sfml.Vector2u, hotspot: sfml.Vector2u): *sfml.Cursor
```



### sfml.Cursor.create_from_system

```nelua
function sfml.Cursor.create_from_system(cursor_type: sfml.CursorType): *sfml.Cursor
```



### sfml.Cursor.destroy

```nelua
function sfml.Cursor.destroy(cursor: *sfml.Cursor): void
```



### sfml.SensorType

```nelua
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

```nelua
global sfml.Sensor = @record{}
```



### sfml.Sensor.is_available

```nelua
function sfml.Sensor.is_available(sensor: sfml.SensorType): sfml.Bool
```



### sfml.Sensor.set_enabled

```nelua
function sfml.Sensor.set_enabled(sensor: sfml.SensorType, enabled: sfml.Bool): void
```



### sfml.Sensor.get_value

```nelua
function sfml.Sensor.get_value(sensor: sfml.SensorType): sfml.Vector3f
```



### sfml.Touch

```nelua
global sfml.Touch = @record{}
```



### sfml.Touch.is_down

```nelua
function sfml.Touch.is_down(finger: cuint): sfml.Bool
```



### sfml.Touch.get_position

```nelua
function sfml.Touch.get_position(finger: cuint, relativeTo: *sfml.Window <const>): sfml.Vector2i
```



### sfml.EventType

```nelua
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

```nelua
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

```nelua
global sfml.TextEvent: type = @record {
  type: sfml.EventType,
  unicode: sfml.Uint32
}
```



### sfml.MouseMoveEvent

```nelua
global sfml.MouseMoveEvent: type = @record {
  type: sfml.EventType,
  x: cint,
  y: cint
}
```



### sfml.MouseButtonEvent

```nelua
global sfml.MouseButtonEvent: type = @record {
  type: sfml.EventType,
  button: sfml.MouseButton,
  x: cint,
  y: cint
}
```



### sfml.MouseWheelEvent

```nelua
global sfml.MouseWheelEvent: type = @record {
  type: sfml.EventType,
  delta: cint,
  x: cint,
  y: cint
}
```



### sfml.MouseWheelScrollEvent

```nelua
global sfml.MouseWheelScrollEvent: type = @record {
  type: sfml.EventType,
  wheel: sfml.MouseWheel,
  delta: cint,
  x: cint,
  y: cint
}
```



### sfml.JoystickMoveEvent

```nelua
global sfml.JoystickMoveEvent: type = @record {
  type: sfml.EventType,
  joystickId: cuint,
  axis: sfml.JoystickAxis,
  position: float32
}
```



### sfml.JoystickButtonEvent

```nelua
global sfml.JoystickButtonEvent: type = @record {
  type: sfml.EventType,
  joystickId: cuint,
  button: cuint
}
```



### sfml.JoystickConnectEvent

```nelua
global sfml.JoystickConnectEvent: type = @record {
  type: sfml.EventType,
  joystickId: cuint
}
```



### sfml.SizeEvent

```nelua
global sfml.SizeEvent: type = @record {
  type: sfml.EventType,
  width: cuint,
  height: cuint
}
```



### sfml.TouchEvent

```nelua
global sfml.TouchEvent: type = @record {
  type: sfml.EventType,
  finger: cuint,
  x: cint,
  y: cint
}
```



### sfml.SensorEvent

```nelua
global sfml.SensorEvent: type = @record {
  type: sfml.EventType,
  sensorType: sfml.SensorType,
  x: float32,
  y: float32,
  z: float32
}
```



### sfml.Event

```nelua
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

```nelua
global sfml.WindowStyle: type = @enum(cint) {
  None = 0,
  Titlebar = 1 << 0,
  Resize = 1 << 1,
  Close = 1 << 2,
  Fullscreen = 1 << 3
}
```



### sfml.DefaultStyle

```nelua
global sfml.DefaultStyle: cint
```



### sfml.ContextAttribute

```nelua
global sfml.ContextAttribute: type = @enum(cint) {
  Default = 0,
  Core = 1 << 0,
  Debug = 1 << 2,
}
```



### sfml.ContextSettings

```nelua
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

```nelua
function sfml.Window.create(mode: sfml.VideoMode, title: cstring <const>, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.Window
```

Window

### sfml.Window.create_unicode

```nelua
function sfml.Window.create_unicode(mode: sfml.VideoMode, title: *[0]sfml.Uint32 <const>, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.Window
```



### sfml.Window.create_from_handle

```nelua
function sfml.Window.create_from_handle(handle: sfml.WindowHandle, settings: *sfml.ContextSettings <const>): *sfml.Window
```



### sfml.Window.destroy

```nelua
function sfml.Window.destroy(self: *sfml.Window): void
```



### sfml.Window.close

```nelua
function sfml.Window.close(self: *sfml.Window): void
```



### sfml.Window.is_open

```nelua
function sfml.Window.is_open(self: *sfml.Window <const>): sfml.Bool
```



### sfml.Window.get_settings

```nelua
function sfml.Window.get_settings(self: *sfml.Window <const>): sfml.ContextSettings
```



### sfml.Window.poll_event

```nelua
function sfml.Window.poll_event(self: *sfml.Window, event: *sfml.Event): sfml.Bool
```



### sfml.Window.wait_event

```nelua
function sfml.Window.wait_event(self: *sfml.Window, event: *sfml.Event): sfml.Bool
```



### sfml.Window.get_position

```nelua
function sfml.Window.get_position(self: *sfml.Window <const>): sfml.Vector2i
```



### sfml.Window.set_position

```nelua
function sfml.Window.set_position(self: *sfml.Window, position: sfml.Vector2i): void
```



### sfml.Window.get_size

```nelua
function sfml.Window.get_size(self: *sfml.Window <const>): sfml.Vector2u
```



### sfml.Window.set_size

```nelua
function sfml.Window.set_size(self: *sfml.Window, size: sfml.Vector2u): void
```



### sfml.Window.set_title

```nelua
function sfml.Window.set_title(self: *sfml.Window, title: cstring <const>): void
```



### sfml.Window.set_unicode_title

```nelua
function sfml.Window.set_unicode_title(self: *sfml.Window, title: *[0]sfml.Uint32 <const>): void
```



### sfml.Window.set_icon

```nelua
function sfml.Window.set_icon(self: *sfml.Window, width: cuint, height: cuint, pixels: *[0]sfml.Uint8): void
```



### sfml.Window.set_visible

```nelua
function sfml.Window.set_visible(self: *sfml.Window, visible: sfml.Bool): void
```



### sfml.Window.set_vsync_enabled

```nelua
function sfml.Window.set_vsync_enabled(self: *sfml.Window, enabled: sfml.Bool): void
```



### sfml.Window.set_mouse_cursor_visible

```nelua
function sfml.Window.set_mouse_cursor_visible(self: *sfml.Window, visible: sfml.Bool): void
```



### sfml.Window.set_mouse_cursor_grabbed

```nelua
function sfml.Window.set_mouse_cursor_grabbed(self: *sfml.Window, grabbed: sfml.Bool): void
```



### sfml.Window.set_mouse_cursor

```nelua
function sfml.Window.set_mouse_cursor(self: *sfml.Window, cursor: *sfml.Cursor <const>): void
```



### sfml.Window.set_key_repeat_enabled

```nelua
function sfml.Window.set_key_repeat_enabled(self: *sfml.Window, enabled: sfml.Bool): void
```



### sfml.Window.set_framerate_limit

```nelua
function sfml.Window.set_framerate_limit(self: *sfml.Window, threshold: float32): void
```



### sfml.Window.set_active

```nelua
function sfml.Window.set_active(self: *sfml.Window, active: sfml.Bool): void
```



### sfml.Window.request_focus

```nelua
function sfml.Window.request_focus(self: *sfml.Window): void
```



### sfml.Window.has_focus

```nelua
function sfml.Window.has_focus(self: *sfml.Window <const>): sfml.Bool
```



### sfml.Window.display

```nelua
function sfml.Window.display(self: *sfml.Window): void
```



### sfml.Window.get_system_handle

```nelua
function sfml.Window.get_system_handle(self: *sfml.Window <const>): sfml.WindowHandle
```



### sfml.Context.create

```nelua
function sfml.Context.create(): *sfml.Context
```

Context

### sfml.Context.destroy

```nelua
function sfml.Context.destroy(self: *sfml.Context): void
```



### sfml.Context.set_active

```nelua
function sfml.Context.set_active(self: *sfml.Context, active: sfml.Bool): sfml.Bool
```



### sfml.Context.get_settings

```nelua
function sfml.Context.get_settings(self: *sfml.Context <const>): sfml.ContextSettings
```



### sfml.Context.get_active_context_id

```nelua
function sfml.Context.get_active_context_id(): sfml.Uint64
```



### sfml.CircleShape

```nelua
global sfml.CircleShape: type = @record {}
```

Graphics

### sfml.ConvexShape

```nelua
global sfml.ConvexShape: type = @record {}
```



### sfml.Font

```nelua
global sfml.Font: type = @record {}
```



### sfml.Image

```nelua
global sfml.Image: type = @record {}
```



### sfml.Shader

```nelua
global sfml.Shader: type = @record {}
```



### sfml.RectangleShape

```nelua
global sfml.RectangleShape: type = @record {}
```



### sfml.RenderTexture

```nelua
global sfml.RenderTexture: type = @record {}
```



### sfml.RenderWindow

```nelua
global sfml.RenderWindow: type = @record {}
```



### sfml.Shape

```nelua
global sfml.Shape: type = @record {}
```



### sfml.Sprite

```nelua
global sfml.Sprite: type = @record {}
```



### sfml.Text

```nelua
global sfml.Text: type = @record {}
```



### sfml.Texture

```nelua
global sfml.Texture: type = @record {}
```



### sfml.Transformable

```nelua
global sfml.Transformable: type = @record {}
```



### sfml.VertexArray

```nelua
global sfml.VertexArray: type = @record {}
```



### sfml.VertexBuffer

```nelua
global sfml.VertexBuffer: type = @record {}
```



### sfml.View

```nelua
global sfml.View: type = @record {}
```



### sfml.BlendFactor

```nelua
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

```nelua
global sfml.BlendEquation: type = @enum(cint) {
  Add = 0,
  Subtract,
  ReverseSubtract
}
```



### sfml.BlendMode

```nelua
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

```nelua
global sfml.BlendAlpha: sfml.BlendMode
```



### sfml.BlendAdd

```nelua
global sfml.BlendAdd: sfml.BlendMode
```



### sfml.BlendMultiply

```nelua
global sfml.BlendMultiply: sfml.BlendMode
```



### sfml.BlendNone

```nelua
global sfml.BlendNone: sfml.BlendMode
```



### sfml.FloatRect

```nelua
global sfml.FloatRect: type = @record {
  left: float32,
  top: float32,
  width: float32,
  height: float32
}
```



### sfml.IntRect

```nelua
global sfml.IntRect: type = @record {
  left: cint,
  top: cint,
  width: cint,
  height: cint
}
```



### sfml.FloatRect.contains

```nelua
function sfml.FloatRect.contains(self: *sfml.FloatRect <const>, x: float32, y: float32): sfml.Bool
```



### sfml.IntRect.contains

```nelua
function sfml.IntRect.contains(self: *sfml.IntRect <const>, x: cint, y: cint): sfml.Bool
```



### sfml.FloatRect.intersects

```nelua
function sfml.FloatRect.intersects(self: *sfml.FloatRect <const>, rect2: *sfml.FloatRect <const>, intersection: *sfml.FloatRect): sfml.Bool
```



### sfml.IntRect.intersects

```nelua
function sfml.IntRect.intersects(self: *sfml.IntRect <const>, rect2: *sfml.IntRect <const>, intersection: *sfml.IntRect): sfml.Bool
```



### sfml.Color

```nelua
global sfml.Color: type = @record {
  r: sfml.Uint8,
  g: sfml.Uint8,
  b: sfml.Uint8,
  a: sfml.Uint8
}
```



### sfml.Transform

```nelua
global sfml.Transform: type = @record {
  matrix: [9]float32
}
```



### sfml.Glyph

```nelua
global sfml.Glyph: type = @record {
  advance: float32,
  bounds: sfml.FloatRect,
  textureRect: sfml.IntRect
}
```



### sfml.Vertex

```nelua
global sfml.Vertex: type = @record {
  position: sfml.Vector2f,
  color: sfml.Color,
  texCoords: sfml.Vector2f
}
```



### sfml.PrimitiveType

```nelua
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

```nelua
global sfml.LinesStrip: cint
```



### sfml.TrianglesStrip

```nelua
global sfml.TrianglesStrip: cint
```



### sfml.TrianglesFan

```nelua
global sfml.TrianglesFan: cint
```



### sfml.RenderStates

```nelua
global sfml.RenderStates: type = @record {
  blendMode: sfml.BlendMode,
  transform: sfml.Transform,
  texture: *sfml.Texture,
  shader: *sfml.Shader
}
```



### sfml.FontInfo

```nelua
global sfml.FontInfo: type = @record {
  family: cstring
}
```



### sfml.Black

```nelua
global sfml.Black: sfml.Color
```

Color: Constants

### sfml.White

```nelua
global sfml.White: sfml.Color
```



### sfml.Red

```nelua
global sfml.Red: sfml.Color
```



### sfml.Green

```nelua
global sfml.Green: sfml.Color
```



### sfml.Blue

```nelua
global sfml.Blue: sfml.Color
```



### sfml.Yellow

```nelua
global sfml.Yellow: sfml.Color
```



### sfml.Magenta

```nelua
global sfml.Magenta: sfml.Color
```



### sfml.Cyan

```nelua
global sfml.Cyan: sfml.Color
```



### sfml.Transparent

```nelua
global sfml.Transparent: sfml.Color
```



### sfml.Color.from_rgb

```nelua
function sfml.Color.from_rgb(red: sfml.Uint8, green: sfml.Uint8, blue: sfml.Uint8): sfml.Color
```

Color

### sfml.Color.from_rgba

```nelua
function sfml.Color.from_rgba(red: sfml.Uint8, green: sfml.Uint8, blue: sfml.Uint8, alpha: sfml.Uint8): sfml.Color
```



### sfml.Color.from_integer

```nelua
function sfml.Color.from_integer(color: sfml.Uint32): sfml.Color
```



### sfml.Color.to_integer

```nelua
function sfml.Color.to_integer(color: sfml.Color): sfml.Uint32
```



### sfml.Color.add

```nelua
function sfml.Color.add(color1: sfml.Color, color2: sfml.Color): sfml.Color
```



### sfml.Color.subtract

```nelua
function sfml.Color.subtract(color1: sfml.Color, color2: sfml.Color): sfml.Color
```



### sfml.Color.modulate

```nelua
function sfml.Color.modulate(color1: sfml.Color, color2: sfml.Color): sfml.Color
```



### sfml.VertexArray.create

```nelua
function sfml.VertexArray.create(): *sfml.VertexArray
```

Vertex Array

### sfml.VertexArray.copy

```nelua
function sfml.VertexArray.copy(self: *sfml.VertexArray <const>): *sfml.VertexArray
```



### sfml.VertexArray.destroy

```nelua
function sfml.VertexArray.destroy(self: *sfml.VertexArray): void
```



### sfml.VertexArray.get_vertex_count

```nelua
function sfml.VertexArray.get_vertex_count(self: *sfml.VertexArray <const>): csize
```



### sfml.VertexArray.get_vertex

```nelua
function sfml.VertexArray.get_vertex(self: *sfml.VertexArray, index: csize): *sfml.Vertex
```



### sfml.VertexArray.clear

```nelua
function sfml.VertexArray.clear(self: *sfml.VertexArray): void
```



### sfml.VertexArray.resize

```nelua
function sfml.VertexArray.resize(self: *sfml.VertexArray, vertexCount: csize): void
```



### sfml.VertexArray.append

```nelua
function sfml.VertexArray.append(self: *sfml.VertexArray, vertex: sfml.Vertex): void
```



### sfml.VertexArray.get_primitive_type

```nelua
function sfml.VertexArray.get_primitive_type(self: *sfml.VertexArray): sfml.PrimitiveType
```



### sfml.VertexArray.set_primitive_type

```nelua
function sfml.VertexArray.set_primitive_type(self: *sfml.VertexArray, type: sfml.PrimitiveType): void
```



### sfml.VertexArray.get_bounds

```nelua
function sfml.VertexArray.get_bounds(self: *sfml.VertexArray): sfml.FloatRect
```



### sfml.Transformable.create

```nelua
function sfml.Transformable.create(): *sfml.Transformable
```

Transformable

### sfml.Transformable.copy

```nelua
function sfml.Transformable.copy(self: *sfml.Transformable <const>): *sfml.Transformable
```



### sfml.Transformable.destroy

```nelua
function sfml.Transformable.destroy(self: *sfml.Transformable): void
```



### sfml.Transformable.get_position

```nelua
function sfml.Transformable.get_position(self: *sfml.Transformable <const>): sfml.Vector2f
```



### sfml.Transformable.set_position

```nelua
function sfml.Transformable.set_position(self: *sfml.Transformable, position: sfml.Vector2f): void
```



### sfml.Transformable.get_rotation

```nelua
function sfml.Transformable.get_rotation(self: *sfml.Transformable <const>): float32
```



### sfml.Transformable.set_rotation

```nelua
function sfml.Transformable.set_rotation(self: *sfml.Transformable, angle: float32): void
```



### sfml.Transformable.get_scale

```nelua
function sfml.Transformable.get_scale(self: *sfml.Transformable <const>): sfml.Vector2f
```



### sfml.Transformable.set_scale

```nelua
function sfml.Transformable.set_scale(self: *sfml.Transformable, scale: sfml.Vector2f): void
```



### sfml.Transformable.get_origin

```nelua
function sfml.Transformable.get_origin(self: *sfml.Transformable <const>): sfml.Vector2f
```



### sfml.Transformable.set_origin

```nelua
function sfml.Transformable.set_origin(self: *sfml.Transformable, origin: sfml.Vector2f): void
```



### sfml.Transformable.move

```nelua
function sfml.Transformable.move(self: *sfml.Transformable, offset: sfml.Vector2f): void
```



### sfml.Transformable.rotate

```nelua
function sfml.Transformable.rotate(self: *sfml.Transformable, angle: float32): void
```



### sfml.Transformable.scale

```nelua
function sfml.Transformable.scale(self: *sfml.Transformable, factors: sfml.Vector2f): void
```



### sfml.Transformable.get_transform

```nelua
function sfml.Transformable.get_transform(self: *sfml.Transformable <const>): sfml.Transform
```



### sfml.Transformable.get_inverse_transform

```nelua
function sfml.Transformable.get_inverse_transform(self: *sfml.Transformable <const>): sfml.Transform
```



### sfml.Transform_Identity

```nelua
global sfml.Transform_Identity: sfml.Transform
```

Transform

### sfml.Transform.from_matrix

```nelua
function sfml.Transform.from_matrix(a00: float32, a01: float32, a02: float32, a10: float32, a11: float32, a12: float32, a20: float32, a21: float32, a22: float32): sfml.Transform
```



### sfml.Transform.get_matrix

```nelua
function sfml.Transform.get_matrix(self: *sfml.Transform <const>, matrix: *[0]float32): void
```



### sfml.Transform.get_inverse

```nelua
function sfml.Transform.get_inverse(self: *sfml.Transform <const>): sfml.Transform
```



### sfml.Transform.transform_point

```nelua
function sfml.Transform.transform_point(self: *sfml.Transform <const>, point: sfml.Vector2f): sfml.Vector2f
```



### sfml.Transform.transform_rect

```nelua
function sfml.Transform.transform_rect(self: *sfml.Transform <const>, rectangle: sfml.FloatRect): sfml.FloatRect
```



### sfml.Transform.combine

```nelua
function sfml.Transform.combine(self: *sfml.Transform, other: *sfml.Transform <const>): sfml.FloatRect
```



### sfml.Transform.translate

```nelua
function sfml.Transform.translate(self: *sfml.Transform, x: float32, y: float32): void
```



### sfml.Transform.rotate

```nelua
function sfml.Transform.rotate(self: *sfml.Transform, angle: float32): void
```



### sfml.Transform.rotate_with_center

```nelua
function sfml.Transform.rotate_with_center(self: *sfml.Transform, angle: float32, centerX: float32, centerY: float32): void
```



### sfml.Transform.scale

```nelua
function sfml.Transform.scale(self: *sfml.Transform, scaleX: float32, scaleY: float32): void
```



### sfml.Transform.scale_with_center

```nelua
function sfml.Transform.scale_with_center(self: *sfml.Transform, scaleX: float32, scaleY: float32, centerX: float32, centerY: float32): void
```



### sfml.Transform.equal

```nelua
function sfml.Transform.equal(self: *sfml.Transform, right: *sfml.Transform): sfml.Bool
```



### sfml.GlslVec2

```nelua
global sfml.GlslVec2: type = @sfml.Vector2f
```

OpenGL

### sfml.GlslIvec2

```nelua
global sfml.GlslIvec2: type = @sfml.Vector2i
```



### sfml.GlslBvec2

```nelua
global sfml.GlslBvec2: type = @record {
  x: sfml.Bool,
  y: sfml.Bool
}
```



### sfml.GlslVec3

```nelua
global sfml.GlslVec3: type = @sfml.Vector3f
```



### sfml.GlslIvec3

```nelua
global sfml.GlslIvec3: type = @record {
  x: cint,
  y: cint,
  z: cint
}
```



### sfml.GlslBvec3

```nelua
global sfml.GlslBvec3: type = @record {
  x: sfml.Bool,
  y: sfml.Bool,
  z: sfml.Bool
}
```



### sfml.GlslVec4

```nelua
global sfml.GlslVec4: type = @record {
  x: float32,
  y: float32,
  z: float32,
  w: float32
}
```



### sfml.GlslIvec4

```nelua
global sfml.GlslIvec4: type = @record {
  x: cint,
  y: cint,
  z: cint,
  w: cint
}
```



### sfml.GlslBvec4

```nelua
global sfml.GlslBvec4: type = @record {
  x: sfml.Bool,
  y: sfml.Bool,
  z: sfml.Bool,
  w: sfml.Bool
}
```



### sfml.GlslMat3

```nelua
global sfml.GlslMat3: type = @record {
  array: [9]float32
}
```



### sfml.GlslMat4

```nelua
global sfml.GlslMat4: type = @record {
  array: [16]float32
}
```



### sfml.View.create

```nelua
function sfml.View.create(): *sfml.View
```

View

### sfml.View.create_from_rect

```nelua
function sfml.View.create_from_rect(rectangle: sfml.FloatRect): *sfml.View
```



### sfml.View.copy

```nelua
function sfml.View.copy(self: *sfml.View <const>): *sfml.View
```



### sfml.View.destroy

```nelua
function sfml.View.destroy(self: *sfml.View): void
```



### sfml.View.get_center

```nelua
function sfml.View.get_center(self: *sfml.View <const>): sfml.Vector2f
```



### sfml.View.set_center

```nelua
function sfml.View.set_center(self: *sfml.View, center: sfml.Vector2f): void
```



### sfml.View.get_size

```nelua
function sfml.View.get_size(self: *sfml.View <const>): sfml.Vector2f
```



### sfml.View.set_size

```nelua
function sfml.View.set_size(self: *sfml.View, size: sfml.Vector2f): void
```



### sfml.View.get_rotation

```nelua
function sfml.View.get_rotation(self: *sfml.View <const>): float32
```



### sfml.View.set_rotation

```nelua
function sfml.View.set_rotation(self: *sfml.View, angle: float32): void
```



### sfml.View.get_viewport

```nelua
function sfml.View.get_viewport(self: *sfml.View <const>): sfml.FloatRect
```



### sfml.View.set_viewport

```nelua
function sfml.View.set_viewport(self: *sfml.View, viewport: sfml.FloatRect): void
```



### sfml.View.reset

```nelua
function sfml.View.reset(self: *sfml.View, rectangle: sfml.FloatRect): void
```



### sfml.View.move

```nelua
function sfml.View.move(self: *sfml.View, offset: sfml.Vector2f): void
```



### sfml.View.rotate

```nelua
function sfml.View.rotate(self: *sfml.View, angle: float32): void
```



### sfml.View.zoom

```nelua
function sfml.View.zoom(self: *sfml.View, factor: float32): void
```



### sfml.Font.create_from_file

```nelua
function sfml.Font.create_from_file(filename: cstring <const>): *sfml.Font
```

Font

### sfml.Font.create_from_memory

```nelua
function sfml.Font.create_from_memory(data: pointer <const>, sizeInBytes: csize): *sfml.Font
```



### sfml.Font.create_from_stream

```nelua
function sfml.Font.create_from_stream(stream: *sfml.InputStream): *sfml.Font
```



### sfml.Font.copy

```nelua
function sfml.Font.copy(self: *sfml.Font <const>): *sfml.Font
```



### sfml.Font.destroy

```nelua
function sfml.Font.destroy(self: *sfml.Font): void
```



### sfml.Font.get_glyph

```nelua
function sfml.Font.get_glyph(self: *sfml.Font <const>, codePoint: sfml.Uint32, characterSize: cuint, bold: sfml.Bool, outlineThickness: float32): sfml.Glyph
```



### sfml.Font.get_kerning

```nelua
function sfml.Font.get_kerning(self: *sfml.Font <const>, first: sfml.Uint32, second: sfml.Uint32, characterSize: cuint): float32
```



### sfml.Font.get_line_spacing

```nelua
function sfml.Font.get_line_spacing(self: *sfml.Font <const>, characterSize: cuint): float32
```



### sfml.Font.get_underline_position

```nelua
function sfml.Font.get_underline_position(self: *sfml.Font <const>, characterSize: cuint): float32
```



### sfml.Font.get_underline_thickness

```nelua
function sfml.Font.get_underline_thickness(self: *sfml.Font <const>, characterSize: cuint): float32
```



### sfml.Font.get_texture

```nelua
function sfml.Font.get_texture(self: *sfml.Font <const>, characterSize: cuint): *sfml.Texture
```



### sfml.Font.get_info

```nelua
function sfml.Font.get_info(self: *sfml.Font <const>): sfml.FontInfo
```



### sfml.Image.create

```nelua
function sfml.Image.create(width: cuint, height: cuint): *sfml.Image
```

Image

### sfml.Image.create_from_color

```nelua
function sfml.Image.create_from_color(width: cuint, height: cuint, color: sfml.Color): *sfml.Image
```



### sfml.Image.create_from_pixels

```nelua
function sfml.Image.create_from_pixels(width: cuint, height: cuint, pixels: *[0]sfml.Uint8): *sfml.Image
```



### sfml.Image.create_from_file

```nelua
function sfml.Image.create_from_file(filename: cstring <const>): *sfml.Image
```



### sfml.Image.create_from_memory

```nelua
function sfml.Image.create_from_memory(data: pointer <const>, size: csize): *sfml.Image
```



### sfml.Image.create_from_stream

```nelua
function sfml.Image.create_from_stream(stream: *sfml.InputStream): *sfml.Image
```



### sfml.Image.copy

```nelua
function sfml.Image.copy(self: *sfml.Image <const>): *sfml.Image
```



### sfml.Image.destroy

```nelua
function sfml.Image.destroy(self: *sfml.Image): void
```



### sfml.Image.save_to_file

```nelua
function sfml.Image.save_to_file(self: *sfml.Image <const>, filename: cstring <const>): sfml.Bool
```



### sfml.Image.get_size

```nelua
function sfml.Image.get_size(self: *sfml.Image <const>): sfml.Vector2u
```



### sfml.Image.create_mask_from_color

```nelua
function sfml.Image.create_mask_from_color(self: *sfml.Image, color: sfml.Color, alpha: sfml.Uint8): void
```



### sfml.Image.copy_image

```nelua
function sfml.Image.copy_image(self: *sfml.Image, source: *sfml.Image <const>, destX: cuint, destY: cuint, sourceRect: sfml.IntRect, applyAlpha: sfml.Bool): void
```



### sfml.Image.get_pixel

```nelua
function sfml.Image.get_pixel(self: *sfml.Image <const>, x: cuint, y: cuint): sfml.Color
```



### sfml.Image.set_pixel

```nelua
function sfml.Image.set_pixel(self: *sfml.Image, x: cuint, y: cuint, color: sfml.Color): void
```



### sfml.Image.get_pixels_ptr

```nelua
function sfml.Image.get_pixels_ptr(self: *sfml.Image <const>): *[0]sfml.Uint8
```



### sfml.Image.flip_horizontally

```nelua
function sfml.Image.flip_horizontally(self: *sfml.Image): void
```



### sfml.Image.flip_vertically

```nelua
function sfml.Image.flip_vertically(self: *sfml.Image): void
```



### sfml.CircleShape.create

```nelua
function sfml.CircleShape.create(): *sfml.CircleShape
```

Shape: Circle

### sfml.CircleShape.copy

```nelua
function sfml.CircleShape.copy(self: *sfml.CircleShape <const>): *sfml.CircleShape
```



### sfml.CircleShape.destroy

```nelua
function sfml.CircleShape.destroy(self: *sfml.CircleShape): void
```



### sfml.CircleShape.get_position

```nelua
function sfml.CircleShape.get_position(self: *sfml.CircleShape <const>): sfml.Vector2f
```



### sfml.CircleShape.set_position

```nelua
function sfml.CircleShape.set_position(self: *sfml.CircleShape, position: sfml.Vector2f): void
```



### sfml.CircleShape.get_rotation

```nelua
function sfml.CircleShape.get_rotation(self: *sfml.CircleShape <const>): float32
```



### sfml.CircleShape.set_rotation

```nelua
function sfml.CircleShape.set_rotation(self: *sfml.CircleShape, angle: float32): void
```



### sfml.CircleShape.get_scale

```nelua
function sfml.CircleShape.get_scale(self: *sfml.CircleShape <const>): sfml.Vector2f
```



### sfml.CircleShape.set_scale

```nelua
function sfml.CircleShape.set_scale(self: *sfml.CircleShape, scale: sfml.Vector2f): void
```



### sfml.CircleShape.get_origin

```nelua
function sfml.CircleShape.get_origin(self: *sfml.CircleShape <const>): sfml.Vector2f
```



### sfml.CircleShape.set_origin

```nelua
function sfml.CircleShape.set_origin(self: *sfml.CircleShape, origin: sfml.Vector2f): void
```



### sfml.CircleShape.get_transform

```nelua
function sfml.CircleShape.get_transform(self: *sfml.CircleShape <const>): sfml.Transform
```



### sfml.CircleShape.get_inverse_transform

```nelua
function sfml.CircleShape.get_inverse_transform(self: *sfml.CircleShape <const>): sfml.Transform
```



### sfml.CircleShape.get_texture

```nelua
function sfml.CircleShape.get_texture(self: *sfml.CircleShape <const>): *sfml.Texture
```



### sfml.CircleShape.set_texture

```nelua
function sfml.CircleShape.set_texture(self: *sfml.CircleShape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.CircleShape.get_texture_rect

```nelua
function sfml.CircleShape.get_texture_rect(self: *sfml.CircleShape <const>): sfml.IntRect
```



### sfml.CircleShape.set_texture_rect

```nelua
function sfml.CircleShape.set_texture_rect(self: *sfml.CircleShape, rect: sfml.IntRect): void
```



### sfml.CircleShape.get_fill_color

```nelua
function sfml.CircleShape.get_fill_color(self: *sfml.CircleShape <const>): sfml.Color
```



### sfml.CircleShape.set_fill_color

```nelua
function sfml.CircleShape.set_fill_color(self: *sfml.CircleShape, color: sfml.Color): void
```



### sfml.CircleShape.get_radius

```nelua
function sfml.CircleShape.get_radius(self: *sfml.CircleShape <const>): float32
```



### sfml.CircleShape.set_radius

```nelua
function sfml.CircleShape.set_radius(self: *sfml.CircleShape, radius: float32): void
```



### sfml.CircleShape.move

```nelua
function sfml.CircleShape.move(self: *sfml.CircleShape, offset: sfml.Vector2f): void
```



### sfml.CircleShape.rotate

```nelua
function sfml.CircleShape.rotate(self: *sfml.CircleShape, angle: float32): void
```



### sfml.CircleShape.scale

```nelua
function sfml.CircleShape.scale(self: *sfml.CircleShape, factors: sfml.Vector2f): void
```



### sfml.CircleShape.set_outline_color

```nelua
function sfml.CircleShape.set_outline_color(self: *sfml.CircleShape, color: sfml.Color): void
```



### sfml.CircleShape.set_outline_thickness

```nelua
function sfml.CircleShape.set_outline_thickness(self: *sfml.CircleShape, thickness: float32): void
```



### sfml.CircleShape.get_outline_color

```nelua
function sfml.CircleShape.get_outline_color(self: *sfml.CircleShape <const>): sfml.Color
```



### sfml.CircleShape.get_outline_thickness

```nelua
function sfml.CircleShape.get_outline_thickness(self: *sfml.CircleShape <const>): float32
```



### sfml.CircleShape.get_point_count

```nelua
function sfml.CircleShape.get_point_count(self: *sfml.CircleShape <const>): csize
```



### sfml.CircleShape.get_point

```nelua
function sfml.CircleShape.get_point(self: *sfml.CircleShape <const>, index: csize): sfml.Vector2f
```



### sfml.CircleShape.set_point_count

```nelua
function sfml.CircleShape.set_point_count(self: *sfml.CircleShape, count: csize): void
```



### sfml.CircleShape.get_local_bounds

```nelua
function sfml.CircleShape.get_local_bounds(self: *sfml.CircleShape <const>): sfml.FloatRect
```



### sfml.CircleShape.get_global_bounds

```nelua
function sfml.CircleShape.get_global_bounds(self: *sfml.CircleShape <const>): sfml.FloatRect
```



### sfml.ConvexShape.create

```nelua
function sfml.ConvexShape.create(): *sfml.ConvexShape
```

Shape: Convex

### sfml.ConvexShape.copy

```nelua
function sfml.ConvexShape.copy(self: *sfml.ConvexShape <const>): *sfml.ConvexShape
```



### sfml.ConvexShape.destroy

```nelua
function sfml.ConvexShape.destroy(self: *sfml.ConvexShape): void
```



### sfml.ConvexShape.get_position

```nelua
function sfml.ConvexShape.get_position(self: *sfml.ConvexShape <const>): sfml.Vector2f
```



### sfml.ConvexShape.set_position

```nelua
function sfml.ConvexShape.set_position(self: *sfml.ConvexShape, position: sfml.Vector2f): void
```



### sfml.ConvexShape.get_rotation

```nelua
function sfml.ConvexShape.get_rotation(self: *sfml.ConvexShape <const>): float32
```



### sfml.ConvexShape.set_rotation

```nelua
function sfml.ConvexShape.set_rotation(self: *sfml.ConvexShape, angle: float32): void
```



### sfml.ConvexShape.get_scale

```nelua
function sfml.ConvexShape.get_scale(self: *sfml.ConvexShape <const>): sfml.Vector2f
```



### sfml.ConvexShape.set_scale

```nelua
function sfml.ConvexShape.set_scale(self: *sfml.ConvexShape, scale: sfml.Vector2f): void
```



### sfml.ConvexShape.get_origin

```nelua
function sfml.ConvexShape.get_origin(self: *sfml.ConvexShape <const>): sfml.Vector2f
```



### sfml.ConvexShape.set_origin

```nelua
function sfml.ConvexShape.set_origin(self: *sfml.ConvexShape, origin: sfml.Vector2f): void
```



### sfml.ConvexShape.get_texture

```nelua
function sfml.ConvexShape.get_texture(self: *sfml.ConvexShape <const>): *sfml.Texture
```



### sfml.ConvexShape.set_texture

```nelua
function sfml.ConvexShape.set_texture(self: *sfml.ConvexShape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.ConvexShape.get_fill_color

```nelua
function sfml.ConvexShape.get_fill_color(self: *sfml.ConvexShape <const>): sfml.Color
```



### sfml.ConvexShape.set_fill_color

```nelua
function sfml.ConvexShape.set_fill_color(self: *sfml.ConvexShape, color: sfml.Color): void
```



### sfml.ConvexShape.get_outline_color

```nelua
function sfml.ConvexShape.get_outline_color(self: *sfml.ConvexShape <const>): sfml.Color
```



### sfml.ConvexShape.set_outline_color

```nelua
function sfml.ConvexShape.set_outline_color(self: *sfml.ConvexShape, color: sfml.Color): void
```



### sfml.ConvexShape.get_outline_thickness

```nelua
function sfml.ConvexShape.get_outline_thickness(self: *sfml.ConvexShape <const>): float32
```



### sfml.ConvexShape.set_outline_thickness

```nelua
function sfml.ConvexShape.set_outline_thickness(self: *sfml.ConvexShape, thickness: float32): void
```



### sfml.ConvexShape.get_texture_rect

```nelua
function sfml.ConvexShape.get_texture_rect(self: *sfml.ConvexShape <const>): sfml.IntRect
```



### sfml.ConvexShape.set_texture_rect

```nelua
function sfml.ConvexShape.set_texture_rect(self: *sfml.ConvexShape, rect: sfml.IntRect): void
```



### sfml.ConvexShape.get_radius

```nelua
function sfml.ConvexShape.get_radius(self: *sfml.ConvexShape <const>): float32
```



### sfml.ConvexShape.set_radius

```nelua
function sfml.ConvexShape.set_radius(self: *sfml.ConvexShape, radius: float32): void
```



### sfml.ConvexShape.get_point_count

```nelua
function sfml.ConvexShape.get_point_count(self: *sfml.ConvexShape <const>): csize
```



### sfml.ConvexShape.set_point_count

```nelua
function sfml.ConvexShape.set_point_count(self: *sfml.ConvexShape, count: csize): void
```



### sfml.ConvexShape.get_transform

```nelua
function sfml.ConvexShape.get_transform(self: *sfml.ConvexShape <const>): sfml.Transform
```



### sfml.ConvexShape.get_inverse_transform

```nelua
function sfml.ConvexShape.get_inverse_transform(self: *sfml.ConvexShape <const>): sfml.Transform
```



### sfml.ConvexShape.move

```nelua
function sfml.ConvexShape.move(self: *sfml.ConvexShape, offset: sfml.Vector2f): void
```



### sfml.ConvexShape.rotate

```nelua
function sfml.ConvexShape.rotate(self: *sfml.ConvexShape, angle: float32): void
```



### sfml.ConvexShape.scale

```nelua
function sfml.ConvexShape.scale(self: *sfml.ConvexShape, factors: sfml.Vector2f): void
```



### sfml.ConvexShape.get_point

```nelua
function sfml.ConvexShape.get_point(self: *sfml.ConvexShape <const>, index: csize): sfml.Vector2f
```



### sfml.ConvexShape.get_local_bounds

```nelua
function sfml.ConvexShape.get_local_bounds(self: *sfml.ConvexShape <const>): sfml.FloatRect
```



### sfml.ConvexShape.get_global_bounds

```nelua
function sfml.ConvexShape.get_global_bounds(self: *sfml.ConvexShape <const>): sfml.FloatRect
```



### sfml.RectangleShape.create

```nelua
function sfml.RectangleShape.create(): *sfml.RectangleShape
```

Rectangle

### sfml.RectangleShape.copy

```nelua
function sfml.RectangleShape.copy(self: *sfml.RectangleShape <const>): *sfml.RectangleShape
```



### sfml.RectangleShape.destroy

```nelua
function sfml.RectangleShape.destroy(self: *sfml.RectangleShape): void
```



### sfml.RectangleShape.get_position

```nelua
function sfml.RectangleShape.get_position(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_position

```nelua
function sfml.RectangleShape.set_position(self: *sfml.RectangleShape, position: sfml.Vector2f): void
```



### sfml.RectangleShape.get_rotation

```nelua
function sfml.RectangleShape.get_rotation(self: *sfml.RectangleShape <const>): float32
```



### sfml.RectangleShape.set_rotation

```nelua
function sfml.RectangleShape.set_rotation(self: *sfml.RectangleShape, angle: float32): void
```



### sfml.RectangleShape.get_scale

```nelua
function sfml.RectangleShape.get_scale(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_scale

```nelua
function sfml.RectangleShape.set_scale(self: *sfml.RectangleShape, scale: sfml.Vector2f): void
```



### sfml.RectangleShape.get_origin

```nelua
function sfml.RectangleShape.get_origin(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_origin

```nelua
function sfml.RectangleShape.set_origin(self: *sfml.RectangleShape, origin: sfml.Vector2f): void
```



### sfml.RectangleShape.get_texture

```nelua
function sfml.RectangleShape.get_texture(self: *sfml.RectangleShape <const>): *sfml.Texture
```



### sfml.RectangleShape.set_texture

```nelua
function sfml.RectangleShape.set_texture(self: *sfml.RectangleShape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.RectangleShape.get_texture_rect

```nelua
function sfml.RectangleShape.get_texture_rect(self: *sfml.RectangleShape <const>): sfml.IntRect
```



### sfml.RectangleShape.set_texture_rect

```nelua
function sfml.RectangleShape.set_texture_rect(self: *sfml.RectangleShape, rect: sfml.IntRect): void
```



### sfml.RectangleShape.get_fill_color

```nelua
function sfml.RectangleShape.get_fill_color(self: *sfml.RectangleShape <const>): sfml.Color
```



### sfml.RectangleShape.set_fill_color

```nelua
function sfml.RectangleShape.set_fill_color(self: *sfml.RectangleShape, color: sfml.Color): void
```



### sfml.RectangleShape.get_outline_color

```nelua
function sfml.RectangleShape.get_outline_color(self: *sfml.RectangleShape <const>): sfml.Color
```



### sfml.RectangleShape.set_outline_color

```nelua
function sfml.RectangleShape.set_outline_color(self: *sfml.RectangleShape, color: sfml.Color): void
```



### sfml.RectangleShape.get_outline_thickness

```nelua
function sfml.RectangleShape.get_outline_thickness(self: *sfml.RectangleShape <const>): float32
```



### sfml.RectangleShape.set_outline_thickness

```nelua
function sfml.RectangleShape.set_outline_thickness(self: *sfml.RectangleShape, thickness: float32): void
```



### sfml.RectangleShape.get_size

```nelua
function sfml.RectangleShape.get_size(self: *sfml.RectangleShape <const>): sfml.Vector2f
```



### sfml.RectangleShape.set_size

```nelua
function sfml.RectangleShape.set_size(self: *sfml.RectangleShape, size: sfml.Vector2f): void
```



### sfml.RectangleShape.get_point_count

```nelua
function sfml.RectangleShape.get_point_count(self: *sfml.RectangleShape <const>): csize
```



### sfml.RectangleShape.set_point_count

```nelua
function sfml.RectangleShape.set_point_count(self: *sfml.RectangleShape, count: csize): void
```



### sfml.RectangleShape.move

```nelua
function sfml.RectangleShape.move(self: *sfml.RectangleShape, offset: sfml.Vector2f): void
```



### sfml.RectangleShape.rotate

```nelua
function sfml.RectangleShape.rotate(self: *sfml.RectangleShape, angle: float32): void
```



### sfml.RectangleShape.scale

```nelua
function sfml.RectangleShape.scale(self: *sfml.RectangleShape, factors: sfml.Vector2f): void
```



### sfml.RectangleShape.get_transform

```nelua
function sfml.RectangleShape.get_transform(self: *sfml.RectangleShape <const>): sfml.Transform
```



### sfml.RectangleShape.get_inverse_transform

```nelua
function sfml.RectangleShape.get_inverse_transform(self: *sfml.RectangleShape <const>): sfml.Transform
```



### sfml.RectangleShape.get_point

```nelua
function sfml.RectangleShape.get_point(self: *sfml.RectangleShape <const>, index: csize): sfml.Vector2f
```



### sfml.RectangleShape.get_local_bounds

```nelua
function sfml.RectangleShape.get_local_bounds(self: *sfml.RectangleShape <const>): sfml.FloatRect
```



### sfml.RectangleShape.get_global_bounds

```nelua
function sfml.RectangleShape.get_global_bounds(self: *sfml.RectangleShape <const>): sfml.FloatRect
```



### sfml.RenderTexture.create

```nelua
function sfml.RenderTexture.create(width: cuint, height: cuint, depthBuffer: sfml.Bool): *sfml.RenderTexture
```

Render Texture

### sfml.RenderTexture.create_with_settings

```nelua
function sfml.RenderTexture.create_with_settings(width: cuint, height: cuint, settings: *sfml.ContextSettings <const>): *sfml.RenderTexture
```



### sfml.RenderTexture.destroy

```nelua
function sfml.RenderTexture.destroy(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.get_size

```nelua
function sfml.RenderTexture.get_size(self: *sfml.RenderTexture <const>): sfml.Vector2u
```



### sfml.RenderTexture.set_active

```nelua
function sfml.RenderTexture.set_active(self: *sfml.RenderTexture, active: sfml.Bool): sfml.Vector2u
```



### sfml.RenderTexture.display

```nelua
function sfml.RenderTexture.display(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.clear

```nelua
function sfml.RenderTexture.clear(self: *sfml.RenderTexture, color: sfml.Color): void
```



### sfml.RenderTexture.get_view

```nelua
function sfml.RenderTexture.get_view(self: *sfml.RenderTexture <const>): *sfml.View
```



### sfml.RenderTexture.set_view

```nelua
function sfml.RenderTexture.set_view(self: *sfml.RenderTexture, view: *sfml.View <const>): void
```



### sfml.RenderTexture.get_default_view

```nelua
function sfml.RenderTexture.get_default_view(self: *sfml.RenderTexture <const>): *sfml.View
```



### sfml.RenderTexture.get_viewport

```nelua
function sfml.RenderTexture.get_viewport(self: *sfml.RenderTexture <const>, view: *sfml.View <const>): sfml.IntRect
```



### sfml.RenderTexture.map_pixel_to_coords

```nelua
function sfml.RenderTexture.map_pixel_to_coords(self: *sfml.RenderTexture <const>, point: sfml.Vector2i, view: *sfml.View <const>): sfml.Vector2f
```



### sfml.RenderTexture.map_coords_to_pixel

```nelua
function sfml.RenderTexture.map_coords_to_pixel(self: *sfml.RenderTexture <const>, point: sfml.Vector2f, view: *sfml.View <const>): sfml.Vector2i
```



### sfml.RenderTexture.draw_sprite

```nelua
function sfml.RenderTexture.draw_sprite(self: *sfml.RenderTexture, object: *sfml.Sprite <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_text

```nelua
function sfml.RenderTexture.draw_text(self: *sfml.RenderTexture, object: *sfml.Text <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_shape

```nelua
function sfml.RenderTexture.draw_shape(self: *sfml.RenderTexture, object: *sfml.Shape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_circle_shape

```nelua
function sfml.RenderTexture.draw_circle_shape(self: *sfml.RenderTexture, object: *sfml.CircleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_convex_shape

```nelua
function sfml.RenderTexture.draw_convex_shape(self: *sfml.RenderTexture, object: *sfml.ConvexShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_rectangle_shape

```nelua
function sfml.RenderTexture.draw_rectangle_shape(self: *sfml.RenderTexture, object: *sfml.RectangleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_vertex_array

```nelua
function sfml.RenderTexture.draw_vertex_array(self: *sfml.RenderTexture, object: *sfml.VertexArray <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_vertex_buffer

```nelua
function sfml.RenderTexture.draw_vertex_buffer(self: *sfml.RenderTexture, object: *sfml.VertexBuffer <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.draw_primitives

```nelua
function sfml.RenderTexture.draw_primitives(self: *sfml.RenderTexture, vertices: *[0]sfml.Vertex <const>, vertexCount: csize, type: sfml.PrimitiveType, states: *sfml.RenderStates <const>): void
```



### sfml.RenderTexture.push_gl_states

```nelua
function sfml.RenderTexture.push_gl_states(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.pop_gl_states

```nelua
function sfml.RenderTexture.pop_gl_states(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.reset_gl_states

```nelua
function sfml.RenderTexture.reset_gl_states(self: *sfml.RenderTexture): void
```



### sfml.RenderTexture.get_texture

```nelua
function sfml.RenderTexture.get_texture(self: *sfml.RenderTexture <const>): *sfml.Texture
```



### sfml.RenderTexture.get_maximum_antialiasing_level

```nelua
function sfml.RenderTexture.get_maximum_antialiasing_level(): cuint
```



### sfml.RenderTexture.is_smooth

```nelua
function sfml.RenderTexture.is_smooth(self: *sfml.RenderTexture <const>): sfml.Bool
```



### sfml.RenderTexture.set_smooth

```nelua
function sfml.RenderTexture.set_smooth(self: *sfml.RenderTexture, smooth: sfml.Bool): void
```



### sfml.RenderTexture.is_repeated

```nelua
function sfml.RenderTexture.is_repeated(self: *sfml.RenderTexture <const>): sfml.Bool
```



### sfml.RenderTexture.set_repeated

```nelua
function sfml.RenderTexture.set_repeated(self: *sfml.RenderTexture, repeated: sfml.Bool): void
```



### sfml.RenderTexture.generate_mipmap

```nelua
function sfml.RenderTexture.generate_mipmap(self: *sfml.RenderTexture): sfml.Bool
```



### sfml.RenderWindow.create

```nelua
function sfml.RenderWindow.create(mode: sfml.VideoMode, title: cstring <const>, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.RenderWindow
```

Render Window

### sfml.RenderWindow.create_unicode

```nelua
function sfml.RenderWindow.create_unicode(mode: sfml.VideoMode, title: *sfml.Uint32, style: sfml.Uint32, settings: *sfml.ContextSettings <const>): *sfml.RenderWindow
```



### sfml.RenderWindow.create_from_handle

```nelua
function sfml.RenderWindow.create_from_handle(handle: sfml.WindowHandle, settings: *sfml.ContextSettings <const>): *sfml.RenderWindow
```



### sfml.RenderWindow.destroy

```nelua
function sfml.RenderWindow.destroy(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.close

```nelua
function sfml.RenderWindow.close(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.is_open

```nelua
function sfml.RenderWindow.is_open(self: *sfml.RenderWindow <const>): sfml.Bool
```



### sfml.RenderWindow.get_settings

```nelua
function sfml.RenderWindow.get_settings(self: *sfml.RenderWindow <const>): sfml.ContextSettings
```



### sfml.RenderWindow.poll_event

```nelua
function sfml.RenderWindow.poll_event(self: *sfml.RenderWindow, event: *sfml.Event): sfml.Bool
```



### sfml.RenderWindow.wait_event

```nelua
function sfml.RenderWindow.wait_event(self: *sfml.RenderWindow, event: *sfml.Event): sfml.Bool
```



### sfml.RenderWindow.get_position

```nelua
function sfml.RenderWindow.get_position(self: *sfml.RenderWindow <const>): sfml.Vector2i
```



### sfml.RenderWindow.set_position

```nelua
function sfml.RenderWindow.set_position(self: *sfml.RenderWindow, position: sfml.Vector2i): void
```



### sfml.RenderWindow.get_size

```nelua
function sfml.RenderWindow.get_size(self: *sfml.RenderWindow <const>): sfml.Vector2u
```



### sfml.RenderWindow.set_size

```nelua
function sfml.RenderWindow.set_size(self: *sfml.RenderWindow, size: sfml.Vector2u): void
```



### sfml.RenderWindow.set_unicode_title

```nelua
function sfml.RenderWindow.set_unicode_title(self: *sfml.RenderWindow, title: *sfml.Uint32 <const>): void
```



### sfml.RenderWindow.set_icon

```nelua
function sfml.RenderWindow.set_icon(self: *sfml.RenderWindow, width: cuint, height: cuint, pixels: *[0]sfml.Uint8 <const>): void
```



### sfml.RenderWindow.set_visible

```nelua
function sfml.RenderWindow.set_visible(self: *sfml.RenderWindow, visible: sfml.Bool): void
```



### sfml.RenderWindow.set_vsync_enabled

```nelua
function sfml.RenderWindow.set_vsync_enabled(self: *sfml.RenderWindow, enabled: sfml.Bool): void
```



### sfml.RenderWindow.set_mouse_cursor_visible

```nelua
function sfml.RenderWindow.set_mouse_cursor_visible(self: *sfml.RenderWindow, show: sfml.Bool): void
```



### sfml.RenderWindow.set_mouse_cursor_grabbed

```nelua
function sfml.RenderWindow.set_mouse_cursor_grabbed(self: *sfml.RenderWindow, grabbed: sfml.Bool): void
```



### sfml.RenderWindow.set_mouse_cursor

```nelua
function sfml.RenderWindow.set_mouse_cursor(self: *sfml.RenderWindow, cursor: *sfml.Cursor <const>): void
```



### sfml.RenderWindow.set_key_repeat_enabled

```nelua
function sfml.RenderWindow.set_key_repeat_enabled(self: *sfml.RenderWindow, enabled: sfml.Bool): void
```



### sfml.RenderWindow.set_framerate_limit

```nelua
function sfml.RenderWindow.set_framerate_limit(self: *sfml.RenderWindow, limit: cuint): void
```



### sfml.RenderWindow.set_joystick_threshold

```nelua
function sfml.RenderWindow.set_joystick_threshold(self: *sfml.RenderWindow, threshold: float32): void
```



### sfml.RenderWindow.set_active

```nelua
function sfml.RenderWindow.set_active(self: *sfml.RenderWindow, active: sfml.Bool): void
```



### sfml.RenderWindow.has_focus

```nelua
function sfml.RenderWindow.has_focus(self: *sfml.RenderWindow <const>): sfml.Bool
```



### sfml.RenderWindow.request_focus

```nelua
function sfml.RenderWindow.request_focus(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.display

```nelua
function sfml.RenderWindow.display(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.get_system_handle

```nelua
function sfml.RenderWindow.get_system_handle(self: *sfml.RenderWindow <const>): sfml.WindowHandle
```



### sfml.RenderWindow.clear

```nelua
function sfml.RenderWindow.clear(self: *sfml.RenderWindow, color: sfml.Color): void
```



### sfml.RenderWindow.get_view

```nelua
function sfml.RenderWindow.get_view(self: *sfml.RenderWindow <const>): *sfml.View
```



### sfml.RenderWindow.set_view

```nelua
function sfml.RenderWindow.set_view(self: *sfml.RenderWindow, view: *sfml.View): void
```



### sfml.RenderWindow.get_default_view

```nelua
function sfml.RenderWindow.get_default_view(self: *sfml.RenderWindow <const>): *sfml.View
```



### sfml.RenderWindow.get_viewport

```nelua
function sfml.RenderWindow.get_viewport(self: *sfml.RenderWindow <const>, view: *sfml.View <const>): sfml.IntRect
```



### sfml.RenderWindow.map_pixel_to_coords

```nelua
function sfml.RenderWindow.map_pixel_to_coords(self: *sfml.RenderWindow <const>, point: sfml.Vector2i, view: *sfml.View <const>): sfml.Vector2f
```



### sfml.RenderWindow.map_coords_to_pixel

```nelua
function sfml.RenderWindow.map_coords_to_pixel(self: *sfml.RenderWindow <const>, point: sfml.Vector2f, view: *sfml.View <const>): sfml.Vector2i
```



### sfml.RenderWindow.draw_sprite

```nelua
function sfml.RenderWindow.draw_sprite(self: *sfml.RenderWindow, object: *sfml.Sprite <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_text

```nelua
function sfml.RenderWindow.draw_text(self: *sfml.RenderWindow, object: *sfml.Text <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_shape

```nelua
function sfml.RenderWindow.draw_shape(self: *sfml.RenderWindow, object: *sfml.Shape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_circle_shape

```nelua
function sfml.RenderWindow.draw_circle_shape(self: *sfml.RenderWindow, object: *sfml.CircleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_convex_shape

```nelua
function sfml.RenderWindow.draw_convex_shape(self: *sfml.RenderWindow, object: *sfml.ConvexShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_rectangle_shape

```nelua
function sfml.RenderWindow.draw_rectangle_shape(self: *sfml.RenderWindow, object: *sfml.RectangleShape <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_vertex_array

```nelua
function sfml.RenderWindow.draw_vertex_array(self: *sfml.RenderWindow, object: *sfml.VertexArray <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_vertex_buffer

```nelua
function sfml.RenderWindow.draw_vertex_buffer(self: *sfml.RenderWindow, object: *sfml.VertexBuffer <const>, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.draw_primitives

```nelua
function sfml.RenderWindow.draw_primitives(self: *sfml.RenderWindow, vertices: *sfml.Vertex <const>, vertexCount: csize, type: sfml.PrimitiveType, states: *sfml.RenderStates <const>): void
```



### sfml.RenderWindow.push_gl_states

```nelua
function sfml.RenderWindow.push_gl_states(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.pop_gl_states

```nelua
function sfml.RenderWindow.pop_gl_states(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.reset_gl_states

```nelua
function sfml.RenderWindow.reset_gl_states(self: *sfml.RenderWindow): void
```



### sfml.RenderWindow.capture

```nelua
function sfml.RenderWindow.capture(self: *sfml.RenderWindow <const>): *sfml.Image
```



### sfml.Mouse.get_position_render_window

```nelua
function sfml.Mouse.get_position_render_window(relativeTo: *sfml.RenderWindow <const>): sfml.Vector2i
```

Render Window: Mouse

### sfml.Mouse.set_position_render_window

```nelua
function sfml.Mouse.set_position_render_window(position: sfml.Vector2i, relativeTo: *sfml.RenderWindow <const>): void
```



### sfml.Touch.get_position_render_window

```nelua
function sfml.Touch.get_position_render_window(finger: cuint, relativeTo: *sfml.RenderWindow <const>): sfml.Vector2i
```



### sfml.Shader.create_from_file

```nelua
function sfml.Shader.create_from_file(vertexShaderFilename: cstring <const>, geometryShaderFilename: cstring <const>, fragmentShaderFilename: cstring <const>): *sfml.Shader
```

Shader

### sfml.Shader.create_from_memory

```nelua
function sfml.Shader.create_from_memory(vertexShader: cstring <const>, geometryShader: cstring <const>, fragmentShader: cstring <const>): *sfml.Shader
```



### sfml.Shader.create_from_stream

```nelua
function sfml.Shader.create_from_stream(vertexShader: *sfml.InputStream, geometryShader: *sfml.InputStream, fragmentShader: *sfml.InputStream): *sfml.Shader
```



### sfml.Shader.destroy

```nelua
function sfml.Shader.destroy(self: *sfml.Shader): void
```



### sfml.Shader.set_float_uniform

```nelua
function sfml.Shader.set_float_uniform(self: *sfml.Shader, name: cstring <const>, x: float32): void
```



### sfml.Shader.set_vec3_uniform

```nelua
function sfml.Shader.set_vec3_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslVec3): void
```



### sfml.Shader.set_vec4_uniform

```nelua
function sfml.Shader.set_vec4_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslVec4): void
```



### sfml.Shader.set_color_uniform

```nelua
function sfml.Shader.set_color_uniform(self: *sfml.Shader, name: cstring <const>, color: sfml.Color): void
```



### sfml.Shader.set_int_uniform

```nelua
function sfml.Shader.set_int_uniform(self: *sfml.Shader, name: cstring <const>, x: cint): void
```



### sfml.Shader.set_ivec2_uniform

```nelua
function sfml.Shader.set_ivec2_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslIvec2): void
```



### sfml.Shader.set_ivec3_uniform

```nelua
function sfml.Shader.set_ivec3_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslIvec3): void
```



### sfml.Shader.set_ivec4_uniform

```nelua
function sfml.Shader.set_ivec4_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslIvec4): void
```



### sfml.Shader.set_int_color_uniform

```nelua
function sfml.Shader.set_int_color_uniform(self: *sfml.Shader, name: cstring <const>, color: sfml.Color): void
```



### sfml.Shader.set_bool_uniform

```nelua
function sfml.Shader.set_bool_uniform(self: *sfml.Shader, name: cstring <const>, x: sfml.Bool): void
```



### sfml.Shader.set_bvec2_uniform

```nelua
function sfml.Shader.set_bvec2_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslBvec2): void
```



### sfml.Shader.set_bvec3_uniform

```nelua
function sfml.Shader.set_bvec3_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslBvec3): void
```



### sfml.Shader.set_bvec4_uniform

```nelua
function sfml.Shader.set_bvec4_uniform(self: *sfml.Shader, name: cstring <const>, vector: sfml.GlslBvec4): void
```



### sfml.Shader.set_mat3_uniform

```nelua
function sfml.Shader.set_mat3_uniform(self: *sfml.Shader, name: cstring <const>, matrix: *sfml.GlslMat3 <const>): void
```



### sfml.Shader.set_mat4_uniform

```nelua
function sfml.Shader.set_mat4_uniform(self: *sfml.Shader, name: cstring <const>, matrix: *sfml.GlslMat4 <const>): void
```



### sfml.Shader.set_texture_uniform

```nelua
function sfml.Shader.set_texture_uniform(self: *sfml.Shader, name: cstring <const>, texture: *sfml.Texture <const>): void
```



### sfml.Shader.set_current_texture_uniform

```nelua
function sfml.Shader.set_current_texture_uniform(self: *sfml.Shader, name: cstring <const>): void
```



### sfml.Shader.set_float_uniform_array

```nelua
function sfml.Shader.set_float_uniform_array(self: *sfml.Shader, name: cstring <const>, scalarArray: *[0]float32, length: csize): void
```



### sfml.Shader.set_vec2_uniform_array

```nelua
function sfml.Shader.set_vec2_uniform_array(self: *sfml.Shader, name: cstring <const>, vectorArray: *[0]sfml.GlslVec2, length: csize): void
```



### sfml.Shader.set_vec3_uniform_array

```nelua
function sfml.Shader.set_vec3_uniform_array(self: *sfml.Shader, name: cstring <const>, vectorArray: *[0]sfml.GlslVec3, length: csize): void
```



### sfml.Shader.set_vec4_uniform_array

```nelua
function sfml.Shader.set_vec4_uniform_array(self: *sfml.Shader, name: cstring <const>, vectorArray: *[0]sfml.GlslVec4, length: csize): void
```



### sfml.Shader.set_mat3_uniform_array

```nelua
function sfml.Shader.set_mat3_uniform_array(self: *sfml.Shader, name: cstring <const>, matrixArray: *[0]sfml.GlslMat3, length: csize): void
```



### sfml.Shader.set_mat4_uniform_array

```nelua
function sfml.Shader.set_mat4_uniform_array(self: *sfml.Shader, name: cstring <const>, matrixArray: *[0]sfml.GlslMat4, length: csize): void
```



### sfml.Shader.set_float_parameter

```nelua
function sfml.Shader.set_float_parameter(self: *sfml.Shader, name: cstring <const>, x: float32): void
```



### sfml.Shader.set_float2_parameter

```nelua
function sfml.Shader.set_float2_parameter(self: *sfml.Shader, name: cstring <const>, x: float32, y: float32): void
```



### sfml.Shader.set_float3_parameter

```nelua
function sfml.Shader.set_float3_parameter(self: *sfml.Shader, name: cstring <const>, x: float32, y: float32, z: float32): void
```



### sfml.Shader.set_float4_parameter

```nelua
function sfml.Shader.set_float4_parameter(self: *sfml.Shader, name: cstring <const>, x: float32, y: float32, z: float32, w: float32): void
```



### sfml.Shader.set_vector2_parameter

```nelua
function sfml.Shader.set_vector2_parameter(self: *sfml.Shader, name: cstring <const>, vector: sfml.Vector2f): void
```



### sfml.Shader.set_vector3_parameter

```nelua
function sfml.Shader.set_vector3_parameter(self: *sfml.Shader, name: cstring <const>, vector: sfml.Vector3f): void
```



### sfml.Shader.set_color_parameter

```nelua
function sfml.Shader.set_color_parameter(self: *sfml.Shader, name: cstring <const>, color: sfml.Color): void
```



### sfml.Shader.set_transform_parameter

```nelua
function sfml.Shader.set_transform_parameter(self: *sfml.Shader, name: cstring <const>, transform: sfml.Transform): void
```



### sfml.Shader.set_texture_parameter

```nelua
function sfml.Shader.set_texture_parameter(self: *sfml.Shader, name: cstring <const>, texture: *sfml.Texture <const>): void
```



### sfml.Shader.set_current_texture_parameter

```nelua
function sfml.Shader.set_current_texture_parameter(self: *sfml.Shader, name: cstring <const>): void
```



### sfml.Shader.get_native_handle

```nelua
function sfml.Shader.get_native_handle(self: *sfml.Shader <const>): cuint
```



### sfml.Shader.bind

```nelua
function sfml.Shader.bind(self: *sfml.Shader <const>): void
```



### sfml.Shader.is_available

```nelua
function sfml.Shader.is_available(): sfml.Bool
```



### sfml.Shader.is_geometry_available

```nelua
function sfml.Shader.is_geometry_available(): sfml.Bool
```



### sfml.ShapeGetPointCountCallback

```nelua
global sfml.ShapeGetPointCountCallback: type = @function(pointer): csize
```

Shape

### sfml.ShapeGetPointCallback

```nelua
global sfml.ShapeGetPointCallback: type = @function(csize, pointer): sfml.Vector2f
```



### sfml.Shape.create

```nelua
function sfml.Shape.create(getPointCount: sfml.ShapeGetPointCountCallback, getPoint: sfml.ShapeGetPointCallback, userData: pointer): *sfml.Shape
```



### sfml.Shape.destroy

```nelua
function sfml.Shape.destroy(self: *sfml.Shape): void
```



### sfml.Shape.get_position

```nelua
function sfml.Shape.get_position(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_position

```nelua
function sfml.Shape.set_position(self: *sfml.Shape, position: sfml.Vector2f): void
```



### sfml.Shape.get_rotation

```nelua
function sfml.Shape.get_rotation(self: *sfml.Shape <const>): float32
```



### sfml.Shape.set_rotation

```nelua
function sfml.Shape.set_rotation(self: *sfml.Shape, angle: float32): void
```



### sfml.Shape.get_scale

```nelua
function sfml.Shape.get_scale(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_scale

```nelua
function sfml.Shape.set_scale(self: *sfml.Shape, scale: sfml.Vector2f): void
```



### sfml.Shape.get_origin

```nelua
function sfml.Shape.get_origin(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_origin

```nelua
function sfml.Shape.set_origin(self: *sfml.Shape, origin: sfml.Vector2f): void
```



### sfml.Shape.get_size

```nelua
function sfml.Shape.get_size(self: *sfml.Shape <const>): sfml.Vector2f
```



### sfml.Shape.set_size

```nelua
function sfml.Shape.set_size(self: *sfml.Shape, size: float32): void
```



### sfml.Shape.get_texture

```nelua
function sfml.Shape.get_texture(self: *sfml.Shape <const>): *sfml.Texture
```



### sfml.Shape.set_texture

```nelua
function sfml.Shape.set_texture(self: *sfml.Shape, texture: *sfml.Texture <const>, resetRect: sfml.Bool): void
```



### sfml.Shape.get_texture_rect

```nelua
function sfml.Shape.get_texture_rect(self: *sfml.Shape <const>): sfml.IntRect
```



### sfml.Shape.set_texture_rect

```nelua
function sfml.Shape.set_texture_rect(self: *sfml.Shape, rect: sfml.IntRect): void
```



### sfml.Shape.get_fill_color

```nelua
function sfml.Shape.get_fill_color(self: *sfml.Shape <const>): sfml.Color
```



### sfml.Shape.set_fill_color

```nelua
function sfml.Shape.set_fill_color(self: *sfml.Shape, color: sfml.Color): void
```



### sfml.Shape.get_outline_color

```nelua
function sfml.Shape.get_outline_color(self: *sfml.Shape <const>): sfml.Color
```



### sfml.Shape.set_outline_color

```nelua
function sfml.Shape.set_outline_color(self: *sfml.Shape, color: sfml.Color): void
```



### sfml.Shape.get_outline_thickness

```nelua
function sfml.Shape.get_outline_thickness(self: *sfml.Shape <const>): float32
```



### sfml.Shape.set_outline_thickness

```nelua
function sfml.Shape.set_outline_thickness(self: *sfml.Shape, thickness: float32): void
```



### sfml.Shape.get_point_count

```nelua
function sfml.Shape.get_point_count(self: *sfml.Shape <const>): csize
```



### sfml.Shape.set_point_count

```nelua
function sfml.Shape.set_point_count(self: *sfml.Shape, count: csize): void
```



### sfml.Shape.move

```nelua
function sfml.Shape.move(self: *sfml.Shape, offset: sfml.Vector2f): void
```



### sfml.Shape.rotate

```nelua
function sfml.Shape.rotate(self: *sfml.Shape, angle: float32): void
```



### sfml.Shape.scale

```nelua
function sfml.Shape.scale(self: *sfml.Shape, factors: sfml.Vector2f): void
```



### sfml.Shape.get_transform

```nelua
function sfml.Shape.get_transform(self: *sfml.Shape <const>): sfml.Transform
```



### sfml.Shape.get_inverse_transform

```nelua
function sfml.Shape.get_inverse_transform(self: *sfml.Shape <const>): sfml.Transform
```



### sfml.Shape.get_point

```nelua
function sfml.Shape.get_point(self: *sfml.Shape <const>, index: csize): sfml.Vector2f
```



### sfml.Shape.get_local_bounds

```nelua
function sfml.Shape.get_local_bounds(self: *sfml.Shape <const>): sfml.FloatRect
```



### sfml.Shape.get_global_bounds

```nelua
function sfml.Shape.get_global_bounds(self: *sfml.Shape <const>): sfml.FloatRect
```



### sfml.Shape.update

```nelua
function sfml.Shape.update(self: *sfml.Shape): void
```



### sfml.Sprite.create

```nelua
function sfml.Sprite.create(): *sfml.Sprite
```

Sprite

### sfml.Sprite.copy

```nelua
function sfml.Sprite.copy(self: *sfml.Sprite <const>): *sfml.Sprite
```



### sfml.Sprite.destroy

```nelua
function sfml.Sprite.destroy(self: *sfml.Sprite): void
```



### sfml.Sprite.get_position

```nelua
function sfml.Sprite.get_position(self: *sfml.Sprite <const>): sfml.Vector2f
```



### sfml.Sprite.set_position

```nelua
function sfml.Sprite.set_position(self: *sfml.Sprite, position: sfml.Vector2f): void
```



### sfml.Sprite.get_rotation

```nelua
function sfml.Sprite.get_rotation(self: *sfml.Sprite <const>): float32
```



### sfml.Sprite.set_rotation

```nelua
function sfml.Sprite.set_rotation(self: *sfml.Sprite, angle: float32): void
```



### sfml.Sprite.get_scale

```nelua
function sfml.Sprite.get_scale(self: *sfml.Sprite <const>): sfml.Vector2f
```



### sfml.Sprite.set_scale

```nelua
function sfml.Sprite.set_scale(self: *sfml.Sprite, scale: sfml.Vector2f): void
```



### sfml.Sprite.get_origin

```nelua
function sfml.Sprite.get_origin(self: *sfml.Sprite <const>): sfml.Vector2f
```



### sfml.Sprite.set_origin

```nelua
function sfml.Sprite.set_origin(self: *sfml.Sprite, origin: sfml.Vector2f): void
```



### sfml.Sprite.get_texture

```nelua
function sfml.Sprite.get_texture(self: *sfml.Sprite <const>): *sfml.Texture
```



### sfml.Sprite.set_texture

```nelua
function sfml.Sprite.set_texture(self: *sfml.Sprite, texture: *sfml.Texture, resetRect: sfml.Bool): void
```



### sfml.Sprite.get_texture_rect

```nelua
function sfml.Sprite.get_texture_rect(self: *sfml.Sprite <const>): sfml.IntRect
```



### sfml.Sprite.set_texture_rect

```nelua
function sfml.Sprite.set_texture_rect(self: *sfml.Sprite, rectangle: sfml.IntRect): void
```



### sfml.Sprite.get_color

```nelua
function sfml.Sprite.get_color(self: *sfml.Sprite <const>): sfml.Color
```



### sfml.Sprite.set_color

```nelua
function sfml.Sprite.set_color(self: *sfml.Sprite, color: sfml.Color): void
```



### sfml.Sprite.move

```nelua
function sfml.Sprite.move(self: *sfml.Sprite, offset: sfml.Vector2f): void
```



### sfml.Sprite.rotate

```nelua
function sfml.Sprite.rotate(self: *sfml.Sprite, angle: float32): void
```



### sfml.Sprite.scale

```nelua
function sfml.Sprite.scale(self: *sfml.Sprite, factors: sfml.Vector2f): void
```



### sfml.Sprite.get_transform

```nelua
function sfml.Sprite.get_transform(self: *sfml.Sprite <const>): sfml.Transform
```



### sfml.Sprite.get_inverse_transform

```nelua
function sfml.Sprite.get_inverse_transform(self: *sfml.Sprite <const>): sfml.Transform
```



### sfml.Sprite.get_local_bounds

```nelua
function sfml.Sprite.get_local_bounds(self: *sfml.Sprite <const>): sfml.FloatRect
```



### sfml.Sprite.get_global_bounds

```nelua
function sfml.Sprite.get_global_bounds(self: *sfml.Sprite <const>): sfml.FloatRect
```



### sfml.TextStyle

```nelua
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

```nelua
function sfml.Text.create(): *sfml.Text
```



### sfml.Text.copy

```nelua
function sfml.Text.copy(self: *sfml.Text <const>): *sfml.Text
```



### sfml.Text.destroy

```nelua
function sfml.Text.destroy(self: *sfml.Text): void
```



### sfml.Text.get_position

```nelua
function sfml.Text.get_position(self: *sfml.Text <const>): sfml.Vector2f
```



### sfml.Text.set_position

```nelua
function sfml.Text.set_position(self: *sfml.Text, position: sfml.Vector2f): void
```



### sfml.Text.get_rotation

```nelua
function sfml.Text.get_rotation(self: *sfml.Text <const>): float32
```



### sfml.Text.set_rotation

```nelua
function sfml.Text.set_rotation(self: *sfml.Text, angle: float32): void
```



### sfml.Text.get_scale

```nelua
function sfml.Text.get_scale(self: *sfml.Text <const>): sfml.Vector2f
```



### sfml.Text.set_scale

```nelua
function sfml.Text.set_scale(self: *sfml.Text, scale: sfml.Vector2f): void
```



### sfml.Text.get_origin

```nelua
function sfml.Text.get_origin(self: *sfml.Text <const>): sfml.Vector2f
```



### sfml.Text.set_origin

```nelua
function sfml.Text.set_origin(self: *sfml.Text, origin: sfml.Vector2f): void
```



### sfml.Text.get_string

```nelua
function sfml.Text.get_string(self: *sfml.Text <const>): cstring
```



### sfml.Text.set_string

```nelua
function sfml.Text.set_string(self: *sfml.Text, string: cstring <const>): void
```



### sfml.Text.get_unicod_string

```nelua
function sfml.Text.get_unicod_string(self: *sfml.Text <const>): *sfml.Uint32
```



### sfml.Text.set_unicod_string

```nelua
function sfml.Text.set_unicod_string(self: *sfml.Text, string: *sfml.Uint32 <const>): void
```



### sfml.Text.get_font

```nelua
function sfml.Text.get_font(self: *sfml.Text <const>): *sfml.Font
```



### sfml.Text.set_font

```nelua
function sfml.Text.set_font(self: *sfml.Text, font: *sfml.Font <const>): void
```



### sfml.Text.get_character_size

```nelua
function sfml.Text.get_character_size(self: *sfml.Text <const>): cuint
```



### sfml.Text.set_character_size

```nelua
function sfml.Text.set_character_size(self: *sfml.Text, size: cuint): void
```



### sfml.Text.get_line_spacing

```nelua
function sfml.Text.get_line_spacing(self: *sfml.Text <const>): float32
```



### sfml.Text.set_line_spacing

```nelua
function sfml.Text.set_line_spacing(self: *sfml.Text, spacingFactor: float32): void
```



### sfml.Text.get_letter_spacing

```nelua
function sfml.Text.get_letter_spacing(self: *sfml.Text <const>): float32
```



### sfml.Text.set_letter_spacing

```nelua
function sfml.Text.set_letter_spacing(self: *sfml.Text, spacingFactor: float32): void
```



### sfml.Text.get_style

```nelua
function sfml.Text.get_style(self: *sfml.Text <const>): sfml.Uint32
```



### sfml.Text.set_style

```nelua
function sfml.Text.set_style(self: *sfml.Text, style: sfml.Uint32): void
```



### sfml.Text.get_color

```nelua
function sfml.Text.get_color(self: *sfml.Text <const>): sfml.Color
```



### sfml.Text.set_color

```nelua
function sfml.Text.set_color(self: *sfml.Text, color: sfml.Color): void
```



### sfml.Text.get_fill_color

```nelua
function sfml.Text.get_fill_color(self: *sfml.Text <const>): sfml.Color
```



### sfml.Text.set_fill_color

```nelua
function sfml.Text.set_fill_color(self: *sfml.Text, color: sfml.Color): void
```



### sfml.Text.get_outline_color

```nelua
function sfml.Text.get_outline_color(self: *sfml.Text <const>): sfml.Color
```



### sfml.Text.set_outline_color

```nelua
function sfml.Text.set_outline_color(self: *sfml.Text, color: sfml.Color): void
```



### sfml.Text.get_outline_thickness

```nelua
function sfml.Text.get_outline_thickness(self: *sfml.Text <const>): float32
```



### sfml.Text.set_outline_thickness

```nelua
function sfml.Text.set_outline_thickness(self: *sfml.Text, thickness: float32): void
```



### sfml.Text.move

```nelua
function sfml.Text.move(self: *sfml.Text, offset: sfml.Vector2f): void
```



### sfml.Text.rotate

```nelua
function sfml.Text.rotate(self: *sfml.Text, angle: float32): void
```



### sfml.Text.scale

```nelua
function sfml.Text.scale(self: *sfml.Text, factors: sfml.Vector2f): void
```



### sfml.Text.get_transform

```nelua
function sfml.Text.get_transform(self: *sfml.Text <const>): sfml.Transform
```



### sfml.Text.get_inverse_transform

```nelua
function sfml.Text.get_inverse_transform(self: *sfml.Text <const>): sfml.Transform
```



### sfml.Text.find_character_pos

```nelua
function sfml.Text.find_character_pos(text: cstring <const>, index: csize): sfml.Vector2f
```



### sfml.Text.get_local_bounds

```nelua
function sfml.Text.get_local_bounds(text: cstring <const>): sfml.FloatRect
```



### sfml.Text.get_global_bounds

```nelua
function sfml.Text.get_global_bounds(text: cstring <const>): sfml.FloatRect
```



### sfml.Texture.create

```nelua
function sfml.Texture.create(width: cuint, height: cuint): *sfml.Texture
```

Texture

### sfml.Texture.create_from_file

```nelua
function sfml.Texture.create_from_file(filename: cstring <const>, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.create_from_memory

```nelua
function sfml.Texture.create_from_memory(data: pointer <const>, sizeInBytes: csize, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.create_from_stream

```nelua
function sfml.Texture.create_from_stream(stream: *sfml.InputStream, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.create_from_image

```nelua
function sfml.Texture.create_from_image(image: *sfml.Image <const>, area: *sfml.IntRect <const>): *sfml.Texture
```



### sfml.Texture.copy

```nelua
function sfml.Texture.copy(self: *sfml.Texture <const>): *sfml.Texture
```



### sfml.Texture.destroy

```nelua
function sfml.Texture.destroy(self: *sfml.Texture): void
```



### sfml.Texture.getSize

```nelua
function sfml.Texture.getSize(self: *sfml.Texture <const>): sfml.Vector2u
```



### sfml.Texture.copy_to_image

```nelua
function sfml.Texture.copy_to_image(self: *sfml.Texture <const>): *sfml.Image
```



### sfml.Texture.update_from_pixels

```nelua
function sfml.Texture.update_from_pixels(self: *sfml.Texture, pixels: *[0]sfml.Uint8 <const>, width: cuint, height: cuint, x: cuint, y: cuint): void
```



### sfml.Texture.update_from_image

```nelua
function sfml.Texture.update_from_image(self: *sfml.Texture, source: *sfml.Texture, x: cuint, y: cuint): void
```



### sfml.Texture.update_from_window

```nelua
function sfml.Texture.update_from_window(self: *sfml.Texture, window: *sfml.Window <const>, x: cuint, y: cuint): void
```



### sfml.Texture.update_from_render_window

```nelua
function sfml.Texture.update_from_render_window(self: *sfml.Texture, renderWindow: *sfml.RenderWindow <const>, x: cuint, y: cuint): void
```



### sfml.Texture.is_smooth

```nelua
function sfml.Texture.is_smooth(self: *sfml.Texture <const>): sfml.Bool
```



### sfml.Texture.set_smooth

```nelua
function sfml.Texture.set_smooth(self: *sfml.Texture, smooth: sfml.Bool): void
```



### sfml.Texture.is_srgb

```nelua
function sfml.Texture.is_srgb(self: *sfml.Texture <const>): sfml.Bool
```



### sfml.Texture.set_srgb

```nelua
function sfml.Texture.set_srgb(self: *sfml.Texture, sRgb: sfml.Bool): void
```



### sfml.Texture.is_repeated

```nelua
function sfml.Texture.is_repeated(self: *sfml.Texture <const>): sfml.Bool
```



### sfml.Texture.set_repeated

```nelua
function sfml.Texture.set_repeated(self: *sfml.Texture, repeated: sfml.Bool): void
```



### sfml.Texture.generate_mipmap

```nelua
function sfml.Texture.generate_mipmap(self: *sfml.Texture): sfml.Bool
```



### sfml.Texture.swap

```nelua
function sfml.Texture.swap(self: *sfml.Texture, right: *sfml.Texture): void
```



### sfml.Texture.get_native_handle

```nelua
function sfml.Texture.get_native_handle(self: *sfml.Texture <const>): cuint
```



### sfml.Texture.get_maximum_size

```nelua
function sfml.Texture.get_maximum_size(): cuint
```



### sfml.VertexBufferUsage

```nelua
global sfml.VertexBufferUsage: type = @enum(cint) {
  Stream = 0,
  Dynamic,
  Static
}
```

Vertex Buffer

### sfml.VertexBuffer.create

```nelua
function sfml.VertexBuffer.create(vertexCount: cuint, type: sfml.PrimitiveType, usage: sfml.VertexBufferUsage): *sfml.VertexBuffer
```



### sfml.VertexBuffer.copy

```nelua
function sfml.VertexBuffer.copy(self: *sfml.VertexBuffer <const>): *sfml.VertexBuffer
```



### sfml.VertexBuffer.destroy

```nelua
function sfml.VertexBuffer.destroy(self: *sfml.VertexBuffer): void
```



### sfml.VertexBuffer.get_vertex_count

```nelua
function sfml.VertexBuffer.get_vertex_count(self: *sfml.VertexBuffer <const>): cuint
```



### sfml.VertexBuffer.update

```nelua
function sfml.VertexBuffer.update(self: *sfml.VertexBuffer , vertices: *[0]sfml.Vertex <const>, vertexCount: cuint, offset: cuint): sfml.Bool
```



### sfml.VertexBuffer.update_from_vertex_buffer

```nelua
function sfml.VertexBuffer.update_from_vertex_buffer(self: *sfml.VertexBuffer, other: *sfml.VertexBuffer <const>): sfml.Bool
```



### sfml.VertexBuffer.swap

```nelua
function sfml.VertexBuffer.swap(self: *sfml.VertexBuffer, right: *sfml.VertexBuffer): void
```



### sfml.VertexBuffer.get_native_handle

```nelua
function sfml.VertexBuffer.get_native_handle(self: *sfml.VertexBuffer): cuint
```



### sfml.VertexBuffer.get_primitive_type

```nelua
function sfml.VertexBuffer.get_primitive_type(self: *sfml.VertexBuffer <const>): sfml.PrimitiveType
```



### sfml.VertexBuffer.set_primitive_type

```nelua
function sfml.VertexBuffer.set_primitive_type(self: *sfml.VertexBuffer, type: sfml.PrimitiveType): void
```



### sfml.VertexBuffer.get_usage

```nelua
function sfml.VertexBuffer.get_usage(self: *sfml.VertexBuffer <const>): sfml.VertexBufferUsage
```



### sfml.VertexBuffer.set_usage

```nelua
function sfml.VertexBuffer.set_usage(self: *sfml.VertexBuffer, usage: sfml.VertexBufferUsage): void
```



### sfml.VertexBuffer.bind

```nelua
function sfml.VertexBuffer.bind(self: *sfml.VertexBuffer <const>): void
```



### sfml.VertexBuffer.is_available

```nelua
function sfml.VertexBuffer.is_available(): sfml.Bool
```



---
