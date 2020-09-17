module type S = sig
  type e2big = [ `e2big ]
  type eacces = [ `eacces ]
  type eaddrinuse = [ `eaddrinuse ]
  type eaddrnotavail = [ `eaddrnotavail ]
  type eafnosupport = [ `eafnosupport ]
  type eagain = [ `eagain ]
  type ealready = [ `ealready ]
  type ebadf = [ `ebadf ]
  type ebusy = [ `ebusy ]
  type echild = [ `echild ]
  type econnaborted = [ `econnaborted ]
  type econnrefused = [ `econnrefused ]
  type econnreset = [ `econnreset ]
  type edeadlk = [ `edeadlk ]
  type edestaddrreq = [ `edestaddrreq ]
  type edom = [ `edom ]
  type eexist = [ `eexist ]
  type efault = [ `efault ]
  type efbig = [ `efbig ]
  type ehostdown = [ `ehostdown ]
  type ehostunreach = [ `ehostunreach ]
  type einprogress = [ `einprogress ]
  type eintr = [ `eintr ]
  type einval = [ `einval ]
  type eio = [ `eio ]
  type eisconn = [ `eisconn ]
  type eisdir = [ `eisdir ]
  type eloop = [ `eloop ]
  type emfile = [ `emfile ]
  type emlink = [ `emlink ]
  type emsgsize = [ `emsgsize ]
  type enametoolong = [ `enametoolong ]
  type enetdown = [ `enetdown ]
  type enetreset = [ `enetreset ]
  type enetunreach = [ `enetunreach ]
  type enfile = [ `enfile ]
  type enobufs = [ `enobufs ]
  type enodev = [ `enodev ]
  type enoent = [ `enoent ]
  type enoexec = [ `enoexec ]
  type enolck = [ `enolck ]
  type enomem = [ `enomem ]
  type enoprotoopt = [ `enoprotoopt ]
  type enospc = [ `enospc ]
  type enosys = [ `enosys ]
  type enotconn = [ `enotconn ]
  type enotdir = [ `enotdir ]
  type enotempty = [ `enotempty ]
  type enotsock = [ `enotsock ]
  type enotty = [ `enotty ]
  type enxio = [ `enxio ]
  type eopnotsupp = [ `eopnotsupp ]
  type eoverflow = [ `eoverflow ]
  type eperm = [ `eperm ]
  type epfnosupport = [ `epfnosupport ]
  type epipe = [ `epipe ]
  type eprotonosupport = [ `eprotonosupport ]
  type eprototype = [ `eprototype ]
  type erange = [ `erange ]
  type erofs = [ `erofs ]
  type eshutdown = [ `eshutdown ]
  type esocktnosupport = [ `esocktnosupport ]
  type espipe = [ `espipe ]
  type esrch = [ `esrch ]
  type etimedout = [ `etimedout ]
  type etoomanyrefs = [ `etoomanyrefs ]
  type ewouldblock = [ `ewouldblock ]
  type exdev = [ `exdev ]
end

module Error = struct
  type e2big = [ `e2big ] [@@deriving enumerate]
  type eacces = [ `eacces ] [@@deriving enumerate]
  type eaddrinuse = [ `eaddrinuse ] [@@deriving enumerate]
  type eaddrnotavail = [ `eaddrnotavail ] [@@deriving enumerate]
  type eafnosupport = [ `eafnosupport ] [@@deriving enumerate]
  type eagain = [ `eagain ] [@@deriving enumerate]
  type ealready = [ `ealready ] [@@deriving enumerate]
  type ebadf = [ `ebadf ] [@@deriving enumerate]
  type ebusy = [ `ebusy ] [@@deriving enumerate]
  type echild = [ `echild ] [@@deriving enumerate]
  type econnaborted = [ `econnaborted ] [@@deriving enumerate]
  type econnrefused = [ `econnrefused ] [@@deriving enumerate]
  type econnreset = [ `econnreset ] [@@deriving enumerate]
  type edeadlk = [ `edeadlk ] [@@deriving enumerate]
  type edestaddrreq = [ `edestaddrreq ] [@@deriving enumerate]
  type edom = [ `edom ] [@@deriving enumerate]
  type eexist = [ `eexist ] [@@deriving enumerate]
  type efault = [ `efault ] [@@deriving enumerate]
  type efbig = [ `efbig ] [@@deriving enumerate]
  type ehostdown = [ `ehostdown ] [@@deriving enumerate]
  type ehostunreach = [ `ehostunreach ] [@@deriving enumerate]
  type einprogress = [ `einprogress ] [@@deriving enumerate]
  type eintr = [ `eintr ] [@@deriving enumerate]
  type einval = [ `einval ] [@@deriving enumerate]
  type eio = [ `eio ] [@@deriving enumerate]
  type eisconn = [ `eisconn ] [@@deriving enumerate]
  type eisdir = [ `eisdir ] [@@deriving enumerate]
  type eloop = [ `eloop ] [@@deriving enumerate]
  type emfile = [ `emfile ] [@@deriving enumerate]
  type emlink = [ `emlink ] [@@deriving enumerate]
  type emsgsize = [ `emsgsize ] [@@deriving enumerate]
  type enametoolong = [ `enametoolong ] [@@deriving enumerate]
  type enetdown = [ `enetdown ] [@@deriving enumerate]
  type enetreset = [ `enetreset ] [@@deriving enumerate]
  type enetunreach = [ `enetunreach ] [@@deriving enumerate]
  type enfile = [ `enfile ] [@@deriving enumerate]
  type enobufs = [ `enobufs ] [@@deriving enumerate]
  type enodev = [ `enodev ] [@@deriving enumerate]
  type enoent = [ `enoent ] [@@deriving enumerate]
  type enoexec = [ `enoexec ] [@@deriving enumerate]
  type enolck = [ `enolck ] [@@deriving enumerate]
  type enomem = [ `enomem ] [@@deriving enumerate]
  type enoprotoopt = [ `enoprotoopt ] [@@deriving enumerate]
  type enospc = [ `enospc ] [@@deriving enumerate]
  type enosys = [ `enosys ] [@@deriving enumerate]
  type enotconn = [ `enotconn ] [@@deriving enumerate]
  type enotdir = [ `enotdir ] [@@deriving enumerate]
  type enotempty = [ `enotempty ] [@@deriving enumerate]
  type enotsock = [ `enotsock ] [@@deriving enumerate]
  type enotty = [ `enotty ] [@@deriving enumerate]
  type enxio = [ `enxio ] [@@deriving enumerate]
  type eopnotsupp = [ `eopnotsupp ] [@@deriving enumerate]
  type eoverflow = [ `eoverflow ] [@@deriving enumerate]
  type eperm = [ `eperm ] [@@deriving enumerate]
  type epfnosupport = [ `epfnosupport ] [@@deriving enumerate]
  type epipe = [ `epipe ] [@@deriving enumerate]
  type eprotonosupport = [ `eprotonosupport ] [@@deriving enumerate]
  type eprototype = [ `eprototype ] [@@deriving enumerate]
  type erange = [ `erange ] [@@deriving enumerate]
  type erofs = [ `erofs ] [@@deriving enumerate]
  type eshutdown = [ `eshutdown ] [@@deriving enumerate]
  type esocktnosupport = [ `esocktnosupport ] [@@deriving enumerate]
  type espipe = [ `espipe ] [@@deriving enumerate]
  type esrch = [ `esrch ] [@@deriving enumerate]
  type etimedout = [ `etimedout ] [@@deriving enumerate]
  type etoomanyrefs = [ `etoomanyrefs ] [@@deriving enumerate]
  type ewouldblock = [ `ewouldblock ] [@@deriving enumerate]
  type exdev = [ `exdev ] [@@deriving enumerate]

  type t =
    [ e2big | eacces | eaddrinuse | eaddrnotavail | eafnosupport | eagain |
      ealready | ebadf | ebusy | echild | econnaborted | econnrefused | econnreset
    | edeadlk | edestaddrreq | edom | eexist | efault | efbig | ehostdown |
    ehostunreach | einprogress | eintr | einval | eio | eisconn | eisdir | eloop
    | emfile | emlink | emsgsize | enametoolong | enetdown | enetreset |
    enetunreach | enfile | enobufs | enodev | enoent | enoexec | enolck | enomem
    | enoprotoopt | enospc | enosys | enotconn | enotdir | enotempty | enotsock
    | enotty | enxio | eopnotsupp | eoverflow | eperm | epfnosupport | epipe |
    eprotonosupport | eprototype | erange | erofs | eshutdown | esocktnosupport
    | espipe | esrch | etimedout | etoomanyrefs | ewouldblock | exdev ]
  [@@deriving enumerate]
  [@@ocamlformat "disable"]
end

open Error

type unlink_errors =
  [ eacces
  | ebusy
  | efault
  | eio
  | eisdir
  | eloop
  | enametoolong
  | enoent
  | enomem
  | enotdir
  | eperm
  | erofs
  | ebadf
  | einval
  | eisdir
  | enotdir ]
[@@deriving enumerate]

module type Posix = sig
  module Error = Error

  type 'e t constraint [< Error.t ] = 'e

  val enable : ?mode:Point.mode -> 'e t -> 'e -> unit
  val disable : _ t -> unit
  val with_faulty : ?mode:Point.mode -> fn:'e t -> err:'e -> (unit -> 'a) -> 'a
  val unsound_coerce : _ t -> _ t
  val error_of_stdlib : Unix.error -> Error.t
  val error_to_stdlib : Error.t -> Unix.error
  val stdlib_to_string : Unix.error -> string

  type nonrec unlink_errors = unlink_errors [@@deriving enumerate]

  val close : [< Error.t ] t
  val fsync : [< Error.t ] t
  val fdatasync : [< Error.t ] t
  val read : [< Error.t ] t
  val pread : [< Error.t ] t
  val pread64 : [< Error.t ] t
  val readv : [< Error.t ] t
  val preadv : [< Error.t ] t
  val preadv64 : [< Error.t ] t
  val write : [< Error.t ] t
  val pwrite : [< Error.t ] t
  val pwrite64 : [< Error.t ] t
  val writev : [< Error.t ] t
  val pwritev : [< Error.t ] t
  val pwritev64 : [< Error.t ] t
  val truncate : [< Error.t ] t
  val truncate64 : [< Error.t ] t
  val ftruncate : [< Error.t ] t
  val ftruncate64 : [< Error.t ] t
  val opendir : [< Error.t ] t
  val fdopendir : [< Error.t ] t
  val readdir : [< Error.t ] t
  val readdir_r : [< Error.t ] t
  val closedir : [< Error.t ] t
  val unlink : [< unlink_errors ] t
  val rename : [< Error.t ] t
  val socket : [< Error.t ] t
  val bind : [< Error.t ] t
  val listen : [< Error.t ] t
  val accept : [< Error.t ] t
  val connect : [< Error.t ] t
  val recv : [< Error.t ] t
  val recvfrom : [< Error.t ] t
  val recvmsg : [< Error.t ] t
  val send : [< Error.t ] t
  val sendto : [< Error.t ] t
  val sendmsg : [< Error.t ] t
  val shutdown : [< Error.t ] t
  val select : [< Error.t ] t
  val pselect : [< Error.t ] t
  val poll : [< Error.t ] t
  val mmap : [< Error.t ] t
  val mmap64 : [< Error.t ] t
  val munmap : [< Error.t ] t
  val msync : [< Error.t ] t
  val mprotect : [< Error.t ] t
  val madvise : [< Error.t ] t
  val mlock : [< Error.t ] t
  val munlock : [< Error.t ] t
  val mlockall : [< Error.t ] t
  val munlockall : [< Error.t ] t
  val fork : [< Error.t ] t
  val wait : [< Error.t ] t
  val waitpid : [< Error.t ] t
  val waitid : [< Error.t ] t
  val kill : [< Error.t ] t
  val signal : [< Error.t ] t
  val sigaction : [< Error.t ] t
  val fopen : [< Error.t ] t
  val fopen64 : [< Error.t ] t
  val freopen : [< Error.t ] t
  val freopen64 : [< Error.t ] t
  val fdopen : [< Error.t ] t
  val fmemopen : [< Error.t ] t
  val open_memstream : [< Error.t ] t
  val popen : [< Error.t ] t
  val pclose : [< Error.t ] t
  val tmpfile : [< Error.t ] t
  val tmpfile64 : [< Error.t ] t
  val tmpnam : [< Error.t ] t
  val tempnam : [< Error.t ] t
  val fread : [< Error.t ] t
  val fwrite : [< Error.t ] t
  val fgetpos : [< Error.t ] t
  val ftell : [< Error.t ] t
  val ftello : [< Error.t ] t
  val ftello64 : [< Error.t ] t
  val fseek : [< Error.t ] t
  val fseeko : [< Error.t ] t
  val fseeko64 : [< Error.t ] t
  val fsetpos : [< Error.t ] t
  val fsetpos64 : [< Error.t ] t
  val fgetc : [< Error.t ] t
  val fgets : [< Error.t ] t
  val getc : [< Error.t ] t
  val getchar : [< Error.t ] t
  val gets : [< Error.t ] t
  val fputc : [< Error.t ] t
  val fputs : [< Error.t ] t
  val putc : [< Error.t ] t
  val putchar : [< Error.t ] t
  val puts : [< Error.t ] t
  val ungetc : [< Error.t ] t
  val getdelim : [< Error.t ] t
  val getline : [< Error.t ] t
  val vfprintf : [< Error.t ] t
  val vprintf : [< Error.t ] t
  val vdprintf : [< Error.t ] t
  val vfscanf : [< Error.t ] t
  val vscanf : [< Error.t ] t
  val remove : [< Error.t ] t
  val setvbuf : [< Error.t ] t
  val ftrylockfile : [< Error.t ] t
  val fflush : [< Error.t ] t
end
