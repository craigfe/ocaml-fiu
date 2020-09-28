open Fiu

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
  module Codes = struct
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
  end

  include Codes
  (** @closed *)

  type known =
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

  type unknown = [ `unknown of Signed.sint ]
  type t = [ known | unknown ]

  (** {1 Errors for system calls} *)

  module Syscalls = struct
    type close = [ ebadf | eintr | eio | enospc | unknown ]

    type read =
      [ eagain
      | ewouldblock
      | ebadf
      | efault
      | eintr
      | einval
      | eio
      | eisdir
      | unknown ]

    type write =
      [ eagain
      | ewouldblock
      | ebadf
      | edestaddrreq
      | efault
      | efbig
      | eintr
      | einval
      | eio
      | enospc
      | eperm
      | epipe
      | unknown ]

    type fsync = [ ebadf | eio | enospc | erofs | einval | unknown ]

    type unlink =
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
      | enotdir
      | unknown ]

    type lseek = [ ebadf | einval | enxio | eoverflow | espipe | unknown ]
    type pread = [ read | lseek | unknown ]
    type pwrite = [ write | lseek | unknown ]
    type scatter = [ einval | eopnotsupp | unknown ]
    type readv = [ read | scatter | unknown ]
    type preadv = [ readv | lseek | unknown ]
    type writev = [ write | scatter | unknown ]
    type pwritev = [ writev | lseek | unknown ]

    type truncate =
      [ eacces
      | efault
      | efbig
      | eintr
      | einval
      | eio
      | eisdir
      | eloop
      | enametoolong
      | enoent
      | enotdir
      | eperm
      | erofs
      | ebadf
      | unknown ]

    type rename =
      [ eacces
      | ebusy
      | efault
      | einval
      | eisdir
      | eloop
      | emlink
      | enametoolong
      | enoent
      | enomem
      | enospc
      | enotdir
      | eexist
      | eperm
      | erofs
      | exdev
      | unknown ]

    type socket =
      [ eacces
      | eafnosupport
      | einval
      | emfile
      | enobufs
      | enomem
      | eprotonosupport
      | unknown ]

    type bind =
      [ eacces
      | eaddrinuse
      | ebadf
      | einval
      | enotsock
      | eaddrnotavail
      | efault
      | eloop
      | enametoolong
      | enoent
      | enomem
      | enotdir
      | erofs
      | unknown ]

    type listen = [ eaddrinuse | ebadf | enotsock | eopnotsupp | unknown ]

    type accept =
      [ eagain
      | ewouldblock
      | ebadf
      | econnaborted
      | efault
      | eintr
      | einval
      | emfile
      | enobufs
      | enomem
      | enotsock
      | eopnotsupp
      | eperm
      | unknown ]

    type connect =
      [ eacces
      | eperm
      | eaddrinuse
      | eaddrnotavail
      | eafnosupport
      | eagain
      | ealready
      | ebadf
      | econnrefused
      | efault
      | einprogress
      | eintr
      | eisconn
      | enetunreach
      | enotsock
      | eprototype
      | etimedout
      | unknown ]

    type recv =
      [ eagain
      | ewouldblock
      | ebadf
      | econnrefused
      | efault
      | eintr
      | einval
      | enomem
      | enotconn
      | enotsock
      | unknown ]

    type send =
      [ eacces
      | eagain
      | ewouldblock
      | ealready
      | ebadf
      | econnreset
      | edestaddrreq
      | efault
      | eintr
      | einval
      | eisconn
      | emsgsize
      | enobufs
      | enomem
      | enotconn
      | enotsock
      | eopnotsupp
      | epipe
      | unknown ]

    type shutdown = [ ebadf | einval | enotconn | enotsock | unknown ]
    type select = [ ebadf | eintr | einval | enomem | unknown ]
    type poll = [ efault | eintr | einval | enomem | unknown ]

    type mmap =
      [ eacces
      | eagain
      | ebadf
      | eexist
      | einval
      | enfile
      | enodev
      | enomem
      | eoverflow
      | eperm
      | unknown ]

    type msync = [ ebusy | einval | enomem | unknown ]
    type mprotect = [ eacces | einval | enomem | unknown ]

    type madvise =
      [ eacces | eagain | ebadf | einval | eio | enomem | eperm | unknown ]

    type mlock = [ enomem | eperm | eagain | einval | unknown ]
    type fork = [ eagain | enomem | enosys | unknown ]
    type wait = [ echild | eintr | einval | unknown ]
    type kill = [ einval | eperm | esrch | unknown ]
    type signal = einval
    type sigaction = [ efault | einval | unknown ]
  end

  include Syscalls
  (** @closed *)
end

module type Fiu_posix = sig
  (** Defines types for POSIX error numbers, and relates *)
  module Error : sig
    include module type of Error
  end

  open Error

  type 'e t constraint [< Error.t ] = 'e

  val enable : ?mode:Point.mode -> 'e t -> 'e -> unit
  val disable : _ t -> unit
  val with_faulty : ?mode:Point.mode -> fn:'e t -> err:'e -> (unit -> 'a) -> 'a

  val unsound_coerce : 'a t -> 'b t
  (** The system call failure points are typed with (an approximation of) the
      errors that they can return naturally. [unsound_coerce] enables bypassing
      this safety layer, allowing any failure point to be made to produce any
      error code. *)

  val error_of_stdlib : Unix.error -> Error.t
  val error_to_stdlib : Error.t -> Unix.error
  val stdlib_to_string : Unix.error -> string

  (** {1 Fault points for system calls} *)

  val close : [< close ] t
  val fsync : [< fsync ] t
  val fdatasync : [< fsync ] t
  val read : [< read ] t
  val pread : [< pread ] t
  val pread64 : [< pread ] t
  val readv : [< readv ] t
  val preadv : [< preadv ] t
  val preadv64 : [< preadv ] t
  val write : [< write ] t
  val pwrite : [< pwrite ] t
  val pwrite64 : [< pwrite ] t
  val writev : [< writev ] t
  val pwritev : [< pwritev ] t
  val pwritev64 : [< pwritev ] t
  val truncate : [< truncate ] t
  val truncate64 : [< truncate ] t
  val ftruncate : [< truncate ] t
  val ftruncate64 : [< truncate ] t
  val unlink : [< unlink ] t
  val rename : [< rename ] t
  val socket : [< socket ] t
  val bind : [< bind ] t
  val listen : [< listen ] t
  val accept : [< accept ] t
  val connect : [< connect ] t
  val recv : [< recv ] t
  val recvfrom : [< recv ] t
  val recvmsg : [< recv ] t
  val send : [< send ] t
  val sendto : [< send ] t
  val sendmsg : [< send ] t
  val shutdown : [< shutdown ] t
  val select : [< select ] t
  val pselect : [< select ] t
  val poll : [< poll ] t
  val mmap : [< mmap ] t
  val mmap64 : [< mmap ] t
  val munmap : [< mmap ] t
  val msync : [< msync ] t
  val mprotect : [< mprotect ] t
  val madvise : [< madvise ] t
  val mlock : [< mlock ] t
  val munlock : [< mlock ] t
  val mlockall : [< mlock ] t
  val munlockall : [< mlock ] t
  val fork : [< fork ] t
  val wait : [< wait ] t
  val waitpid : [< wait ] t
  val waitid : [< wait ] t
  val kill : [< kill ] t
  val signal : [< signal ] t
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

  (* val opendir : [< Error.t ] t
   * val fdopendir : [< Error.t ] t
   * val readdir : [< Error.t ] t
   * val readdir_r : [< Error.t ] t
   * val closedir : [< Error.t ] t *)
end
