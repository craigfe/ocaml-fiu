include Fiu_posix_intf
open Fiu

let error_of_stdlib : Unix.error -> Error.t = function
  | E2BIG -> `e2big
  | EACCES -> `eacces
  | EAGAIN -> `eagain
  | EBADF -> `ebadf
  | EBUSY -> `ebusy
  | ECHILD -> `echild
  | EDEADLK -> `edeadlk
  | EDOM -> `edom
  | EEXIST -> `eexist
  | EFAULT -> `efault
  | EFBIG -> `efbig
  | EINTR -> `eintr
  | EINVAL -> `einval
  | EIO -> `eio
  | EISDIR -> `eisdir
  | EMFILE -> `emfile
  | EMLINK -> `emlink
  | ENAMETOOLONG -> `enametoolong
  | ENFILE -> `enfile
  | ENODEV -> `enodev
  | ENOENT -> `enoent
  | ENOEXEC -> `enoexec
  | ENOLCK -> `enolck
  | ENOMEM -> `enomem
  | ENOSPC -> `enospc
  | ENOSYS -> `enosys
  | ENOTDIR -> `enotdir
  | ENOTEMPTY -> `enotempty
  | ENOTTY -> `enotty
  | ENXIO -> `enxio
  | EPERM -> `eperm
  | EPIPE -> `epipe
  | ERANGE -> `erange
  | EROFS -> `erofs
  | ESPIPE -> `espipe
  | ESRCH -> `esrch
  | EXDEV -> `exdev
  | EWOULDBLOCK -> `ewouldblock
  | EINPROGRESS -> `einprogress
  | EALREADY -> `ealready
  | ENOTSOCK -> `enotsock
  | EDESTADDRREQ -> `edestaddrreq
  | EMSGSIZE -> `emsgsize
  | EPROTOTYPE -> `eprototype
  | ENOPROTOOPT -> `enoprotoopt
  | EPROTONOSUPPORT -> `eprotonosupport
  | ESOCKTNOSUPPORT -> `esocktnosupport
  | EOPNOTSUPP -> `eopnotsupp
  | EPFNOSUPPORT -> `epfnosupport
  | EAFNOSUPPORT -> `eafnosupport
  | EADDRINUSE -> `eaddrinuse
  | EADDRNOTAVAIL -> `eaddrnotavail
  | ENETDOWN -> `enetdown
  | ENETUNREACH -> `enetunreach
  | ENETRESET -> `enetreset
  | ECONNABORTED -> `econnaborted
  | ECONNRESET -> `econnreset
  | ENOBUFS -> `enobufs
  | EISCONN -> `eisconn
  | ENOTCONN -> `enotconn
  | ESHUTDOWN -> `eshutdown
  | ETOOMANYREFS -> `etoomanyrefs
  | ETIMEDOUT -> `etimedout
  | ECONNREFUSED -> `econnrefused
  | EHOSTDOWN -> `ehostdown
  | EHOSTUNREACH -> `ehostunreach
  | ELOOP -> `eloop
  | EOVERFLOW -> `eoverflow
  | EUNKNOWNERR _ -> assert false

let stdlib_to_string : Unix.error -> string = function
  | E2BIG -> "E2BIG"
  | EACCES -> "EACCES"
  | EAGAIN -> "EAGAIN"
  | EBADF -> "EBADF"
  | EBUSY -> "EBUSY"
  | ECHILD -> "ECHILD"
  | EDEADLK -> "EDEADLK"
  | EDOM -> "EDOM"
  | EEXIST -> "EEXIST"
  | EFAULT -> "EFAULT"
  | EFBIG -> "EFBIG"
  | EINTR -> "EINTR"
  | EINVAL -> "EINVAL"
  | EIO -> "EIO"
  | EISDIR -> "EISDIR"
  | EMFILE -> "EMFILE"
  | EMLINK -> "EMLINK"
  | ENAMETOOLONG -> "ENAMETOOLONG"
  | ENFILE -> "ENFILE"
  | ENODEV -> "ENODEV"
  | ENOENT -> "ENOENT"
  | ENOEXEC -> "ENOEXEC"
  | ENOLCK -> "ENOLCK"
  | ENOMEM -> "ENOMEM"
  | ENOSPC -> "ENOSPC"
  | ENOSYS -> "ENOSYS"
  | ENOTDIR -> "ENOTDIR"
  | ENOTEMPTY -> "ENOTEMPTY"
  | ENOTTY -> "ENOTTY"
  | ENXIO -> "ENXIO"
  | EPERM -> "EPERM"
  | EPIPE -> "EPIPE"
  | ERANGE -> "ERANGE"
  | EROFS -> "EROFS"
  | ESPIPE -> "ESPIPE"
  | ESRCH -> "ESRCH"
  | EXDEV -> "EXDEV"
  | EWOULDBLOCK -> "EWOULDBLOCK"
  | EINPROGRESS -> "EINPROGRESS"
  | EALREADY -> "EALREADY"
  | ENOTSOCK -> "ENOTSOCK"
  | EDESTADDRREQ -> "EDESTADDRREQ"
  | EMSGSIZE -> "EMSGSIZE"
  | EPROTOTYPE -> "EPROTOTYPE"
  | ENOPROTOOPT -> "ENOPROTOOPT"
  | EPROTONOSUPPORT -> "EPROTONOSUPPORT"
  | ESOCKTNOSUPPORT -> "ESOCKTNOSUPPORT"
  | EOPNOTSUPP -> "EOPNOTSUPP"
  | EPFNOSUPPORT -> "EPFNOSUPPORT"
  | EAFNOSUPPORT -> "EAFNOSUPPORT"
  | EADDRINUSE -> "EADDRINUSE"
  | EADDRNOTAVAIL -> "EADDRNOTAVAIL"
  | ENETDOWN -> "ENETDOWN"
  | ENETUNREACH -> "ENETUNREACH"
  | ENETRESET -> "ENETRESET"
  | ECONNABORTED -> "ECONNABORTED"
  | ECONNRESET -> "ECONNRESET"
  | ENOBUFS -> "ENOBUFS"
  | EISCONN -> "EISCONN"
  | ENOTCONN -> "ENOTCONN"
  | ESHUTDOWN -> "ESHUTDOWN"
  | ETOOMANYREFS -> "ETOOMANYREFS"
  | ETIMEDOUT -> "ETIMEDOUT"
  | ECONNREFUSED -> "ECONNREFUSED"
  | EHOSTDOWN -> "EHOSTDOWN"
  | EHOSTUNREACH -> "EHOSTUNREACH"
  | ELOOP -> "ELOOP"
  | EOVERFLOW -> "EOVERFLOW"
  | EUNKNOWNERR i -> Printf.sprintf "EUNKNOWNERR %d" i

let error_to_stdlib : [< Error.t ] -> Unix.error = function
  | `e2big -> E2BIG
  | `eacces -> EACCES
  | `eagain -> EAGAIN
  | `ebadf -> EBADF
  | `ebusy -> EBUSY
  | `echild -> ECHILD
  | `edeadlk -> EDEADLK
  | `edom -> EDOM
  | `eexist -> EEXIST
  | `efault -> EFAULT
  | `efbig -> EFBIG
  | `eintr -> EINTR
  | `einval -> EINVAL
  | `eio -> EIO
  | `eisdir -> EISDIR
  | `emfile -> EMFILE
  | `emlink -> EMLINK
  | `enametoolong -> ENAMETOOLONG
  | `enfile -> ENFILE
  | `enodev -> ENODEV
  | `enoent -> ENOENT
  | `enoexec -> ENOEXEC
  | `enolck -> ENOLCK
  | `enomem -> ENOMEM
  | `enospc -> ENOSPC
  | `enosys -> ENOSYS
  | `enotdir -> ENOTDIR
  | `enotempty -> ENOTEMPTY
  | `enotty -> ENOTTY
  | `enxio -> ENXIO
  | `eperm -> EPERM
  | `epipe -> EPIPE
  | `erange -> ERANGE
  | `erofs -> EROFS
  | `espipe -> ESPIPE
  | `esrch -> ESRCH
  | `exdev -> EXDEV
  | `ewouldblock -> EWOULDBLOCK
  | `einprogress -> EINPROGRESS
  | `ealready -> EALREADY
  | `enotsock -> ENOTSOCK
  | `edestaddrreq -> EDESTADDRREQ
  | `emsgsize -> EMSGSIZE
  | `eprototype -> EPROTOTYPE
  | `enoprotoopt -> ENOPROTOOPT
  | `eprotonosupport -> EPROTONOSUPPORT
  | `esocktnosupport -> ESOCKTNOSUPPORT
  | `eopnotsupp -> EOPNOTSUPP
  | `epfnosupport -> EPFNOSUPPORT
  | `eafnosupport -> EAFNOSUPPORT
  | `eaddrinuse -> EADDRINUSE
  | `eaddrnotavail -> EADDRNOTAVAIL
  | `enetdown -> ENETDOWN
  | `enetunreach -> ENETUNREACH
  | `enetreset -> ENETRESET
  | `econnaborted -> ECONNABORTED
  | `econnreset -> ECONNRESET
  | `enobufs -> ENOBUFS
  | `eisconn -> EISCONN
  | `enotconn -> ENOTCONN
  | `eshutdown -> ESHUTDOWN
  | `etoomanyrefs -> ETOOMANYREFS
  | `etimedout -> ETIMEDOUT
  | `econnrefused -> ECONNREFUSED
  | `ehostdown -> EHOSTDOWN
  | `ehostunreach -> EHOSTUNREACH
  | `eloop -> ELOOP
  | `eoverflow -> EOVERFLOW
  | `unknown i -> EUNKNOWNERR (Signed.SInt.to_int i)

let code_of_error : [< Error.t ] -> _ =
 fun e ->
  error_to_stdlib e
  |> Errno_unix.of_unix
  |> List.hd
  |> Errno.to_code ~host:Errno_unix.host
  |> Option.get

type 'e t = Point.t constraint [< Error.t ] = 'e

let enable : 'e. ?mode:Point.mode -> 'e t -> 'e -> unit =
 fun ?mode t error ->
  let info =
    code_of_error error |> Signed.SInt.to_nativeint |> Ctypes.ptr_of_raw_address
  in
  Point.enable ?mode ~code:Signed.SInt.minus_one ~info t

let disable : 'e. 'e t -> unit = Point.disable

let with_faulty :
      'a 'e. ?mode:Point.mode -> fn:'e t -> err:'e -> (unit -> 'a) -> 'a =
 fun ?mode ~fn ~err f ->
  let () = enable ?mode fn err in
  Fun.protect ~finally:(fun () -> disable fn) f

let unsound_coerce t = t
let close = Point.v ~name:"posix/io/oc/close"
let fsync = Point.v ~name:"posix/io/sync/fsync"
let fdatasync = Point.v ~name:"posix/io/sync/fdatasync"
let read = Point.v ~name:"posix/io/rw/read"
let pread = Point.v ~name:"posix/io/rw/pread"
let pread64 = Point.v ~name:"posix/io/rw/pread"
let readv = Point.v ~name:"posix/io/rw/readv"
let preadv = Point.v ~name:"posix/io/rw/preadv"
let preadv64 = Point.v ~name:"posix/io/rw/preadv"
let write = Point.v ~name:"posix/io/rw/write"
let pwrite = Point.v ~name:"posix/io/rw/pwrite"
let pwrite64 = Point.v ~name:"posix/io/rw/pwrite"
let writev = Point.v ~name:"posix/io/rw/writev"
let pwritev = Point.v ~name:"posix/io/rw/pwritev"
let pwritev64 = Point.v ~name:"posix/io/rw/pwritev"
let truncate = Point.v ~name:"posix/io/rw/truncate"
let truncate64 = Point.v ~name:"posix/io/rw/truncate"
let ftruncate = Point.v ~name:"posix/io/rw/ftruncate"
let ftruncate64 = Point.v ~name:"posix/io/rw/ftruncate"

(* let opendir = Point.v ~name:"posix/io/dir/opendir"
 * let fdopendir = Point.v ~name:"posix/io/dir/fdopendir"
 * let readdir = Point.v ~name:"posix/io/dir/readdir"
 * let readdir_r = Point.v ~name:"posix/io/dir/readdir_r"
 * let closedir = Point.v ~name:"posix/io/dir/closedir" *)

let unlink = Point.v ~name:"posix/io/dir/unlink"
let rename = Point.v ~name:"posix/io/dir/rename"
let socket = Point.v ~name:"posix/io/net/socket"
let bind = Point.v ~name:"posix/io/net/bind"
let listen = Point.v ~name:"posix/io/net/listen"
let accept = Point.v ~name:"posix/io/net/accept"
let connect = Point.v ~name:"posix/io/net/connect"
let recv = Point.v ~name:"posix/io/net/recv"
let recvfrom = Point.v ~name:"posix/io/net/recvfrom"
let recvmsg = Point.v ~name:"posix/io/net/recvmsg"
let send = Point.v ~name:"posix/io/net/send"
let sendto = Point.v ~name:"posix/io/net/sendto"
let sendmsg = Point.v ~name:"posix/io/net/sendmsg"
let shutdown = Point.v ~name:"posix/io/net/shutdown"
let select = Point.v ~name:"posix/io/net/select"
let pselect = Point.v ~name:"posix/io/net/pselect"
let poll = Point.v ~name:"posix/io/net/poll"
let mmap = Point.v ~name:"posix/mm/mmap"
let mmap64 = Point.v ~name:"posix/mm/mmap"
let munmap = Point.v ~name:"posix/mm/munmap"
let msync = Point.v ~name:"posix/mm/msync"
let mprotect = Point.v ~name:"posix/mm/mprotect"
let madvise = Point.v ~name:"posix/mm/madvise"
let mlock = Point.v ~name:"posix/mm/mlock"
let munlock = Point.v ~name:"posix/mm/munlock"
let mlockall = Point.v ~name:"posix/mm/mlockall"
let munlockall = Point.v ~name:"posix/mm/munlockall"
let fork = Point.v ~name:"posix/proc/fork"
let wait = Point.v ~name:"posix/proc/wait"
let waitpid = Point.v ~name:"posix/proc/waitpid"
let waitid = Point.v ~name:"posix/proc/waitid"
let kill = Point.v ~name:"posix/proc/kill"
let signal = Point.v ~name:"posix/proc/signal"
let sigaction = Point.v ~name:"posix/proc/sigaction"
let fopen = Point.v ~name:"posix/stdio/oc/fopen"
let fopen64 = Point.v ~name:"posix/stdio/oc/fopen"
let freopen = Point.v ~name:"posix/stdio/oc/freopen"
let freopen64 = Point.v ~name:"posix/stdio/oc/freopen"
let fdopen = Point.v ~name:"posix/stdio/oc/fdopen"
let fmemopen = Point.v ~name:"posix/stdio/oc/fmemopen"
let open_memstream = Point.v ~name:"posix/stdio/oc/open_memstream"
let popen = Point.v ~name:"posix/stdio/oc/popen"
let pclose = Point.v ~name:"posix/stdio/oc/pclose"
let tmpfile = Point.v ~name:"posix/stdio/tmp/tmpfile"
let tmpfile64 = Point.v ~name:"posix/stdio/tmp/tmpfile"
let tmpnam = Point.v ~name:"posix/stdio/tmp/tmpnam"
let tempnam = Point.v ~name:"posix/stdio/tmp/tempnam"
let fread = Point.v ~name:"posix/stdio/rw/fread"
let fwrite = Point.v ~name:"posix/stdio/rw/fwrite"
let fgetpos = Point.v ~name:"posix/stdio/seek/fgetpos"
let ftell = Point.v ~name:"posix/stdio/seek/ftell"
let ftello = Point.v ~name:"posix/stdio/seek/ftello"
let ftello64 = Point.v ~name:"posix/stdio/seek/ftello"
let fseek = Point.v ~name:"posix/stdio/seek/fseek"
let fseeko = Point.v ~name:"posix/stdio/seek/fseeko"
let fseeko64 = Point.v ~name:"posix/stdio/seek/fseeko"
let fsetpos = Point.v ~name:"posix/stdio/seek/fsetpos"
let fsetpos64 = Point.v ~name:"posix/stdio/seek/fsetpos"
let fgetc = Point.v ~name:"posix/stdio/gp/fgetc"
let fgets = Point.v ~name:"posix/stdio/gp/fgets"
let getc = Point.v ~name:"posix/stdio/gp/getc"
let getchar = Point.v ~name:"posix/stdio/gp/getchar"
let gets = Point.v ~name:"posix/stdio/gp/gets"
let fputc = Point.v ~name:"posix/stdio/gp/fputc"
let fputs = Point.v ~name:"posix/stdio/gp/fputs"
let putc = Point.v ~name:"posix/stdio/gp/putc"
let putchar = Point.v ~name:"posix/stdio/gp/putchar"
let puts = Point.v ~name:"posix/stdio/gp/puts"
let ungetc = Point.v ~name:"posix/stdio/gp/ungetc"
let getdelim = Point.v ~name:"posix/stdio/gp/getdelim"
let getline = Point.v ~name:"posix/stdio/gp/getline"
let vfprintf = Point.v ~name:"posix/stdio/sp/vfprintf"
let vprintf = Point.v ~name:"posix/stdio/sp/vprintf"
let vdprintf = Point.v ~name:"posix/stdio/sp/vdprintf"
let vfscanf = Point.v ~name:"posix/stdio/sp/vfscanf"
let vscanf = Point.v ~name:"posix/stdio/sp/vscanf"
let remove = Point.v ~name:"posix/stdio/remove"
let setvbuf = Point.v ~name:"posix/stdio/setvbuf"
let ftrylockfile = Point.v ~name:"posix/stdio/ftrylockfile"
let fflush = Point.v ~name:"posix/stdio/fflush"
