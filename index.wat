(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00N\00e\00w\00L\00i\00n\00e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 60) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00W\00h\00i\00t\00e\00s\00p\00a\00c\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00H\00e\00a\00d\00e\00r\00")
 (data (i32.const 140) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00I\00t\00a\00l\00i\00c\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 188) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00B\00o\00l\00d\00\00\00\00\00")
 (data (i32.const 220) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00S\00t\00r\00i\00k\00e\00t\00h\00r\00o\00u\00g\00h\00\00\00")
 (data (i32.const 268) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00U\00n\00o\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00I\00t\00e\00m\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00O\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00I\00t\00e\00m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 396) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00I\00m\00a\00g\00e\00S\00t\00a\00r\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 444) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00B\00r\00a\00c\00k\00e\00t\00S\00t\00a\00r\00t\00\00\00\00\00")
 (data (i32.const 492) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00B\00r\00a\00c\00k\00e\00t\00E\00n\00d\00\00\00\00\00\00\00\00\00")
 (data (i32.const 540) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00P\00a\00r\00e\00n\00S\00t\00a\00r\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 588) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00P\00a\00r\00e\00n\00E\00n\00d\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 636) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00B\00l\00o\00c\00k\00Q\00u\00o\00t\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 684) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00C\00o\00d\00e\00B\00l\00o\00c\00k\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 732) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00I\00n\00l\00i\00n\00e\00C\00o\00d\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 780) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00H\00o\00r\00i\00z\00o\00n\00t\00a\00l\00L\00i\00n\00e\00")
 (data (i32.const 828) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00C\00h\00a\00r\00a\00c\00t\00e\00r\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 876) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 924) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 972) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 1036) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1104) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1136) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1164) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1228) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1280) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1308) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1372) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00U\00n\00o\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00\00\00")
 (data (i32.const 1420) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00O\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00\00\00\00\00\00\00")
 (data (i32.const 1468) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00L\00i\00s\00t\00I\00t\00e\00m\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1516) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00I\00m\00a\00g\00e\00\00\00")
 (data (i32.const 1548) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00L\00i\00n\00k\00\00\00\00\00")
 (data (i32.const 1580) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1612) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1644) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1676) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00\00\00\00\00")
 (data (i32.const 1708) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00#\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1740) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00*\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1772) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00*\00*\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1804) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00_\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1836) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00_\00_\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1868) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00~\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1900) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00~\00~\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1932) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00*\00 \00\00\00\00\00\00\00\00\00")
 (data (i32.const 1964) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1996) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00.\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2028) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\001\00.\00 \00\00\00\00\00\00\00")
 (data (i32.const 2060) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00!\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2092) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00[\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2124) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00!\00[\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2156) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00]\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2220) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2252) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00>\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2284) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00`\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2316) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00`\00`\00`\00\00\00\00\00\00\00")
 (data (i32.const 2348) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00-\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2380) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00-\00-\00-\00\00\00\00\00\00\00")
 (data (i32.const 2412) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00=\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2444) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00=\00=\00=\00\00\00\00\00\00\00")
 (data (i32.const 2476) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2604) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2732) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 2796) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2828) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 3228) "\1c\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4284) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 4380) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00A\00l\00t\00\00\00\00\00\00\00")
 (data (i32.const 4412) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00L\00i\00n\00k\00 \00C\00o\00n\00t\00e\00n\00t\00\00\00\00\00")
 (data (i32.const 4460) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00<\00b\00r\00 \00/\00>\00")
 (data (i32.const 4492) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00h\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4524) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00<\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4556) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00<\00/\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4588) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00<\00i\00>\00\00\00\00\00\00\00")
 (data (i32.const 4620) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00/\00i\00>\00\00\00\00\00")
 (data (i32.const 4652) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00<\00b\00>\00\00\00\00\00\00\00")
 (data (i32.const 4684) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00/\00b\00>\00\00\00\00\00")
 (data (i32.const 4716) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00<\00s\00>\00\00\00\00\00\00\00")
 (data (i32.const 4748) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00/\00s\00>\00\00\00\00\00")
 (data (i32.const 4780) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00u\00l\00>\00\00\00\00\00")
 (data (i32.const 4812) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00<\00/\00u\00l\00>\00\00\00")
 (data (i32.const 4844) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00o\00l\00>\00\00\00\00\00")
 (data (i32.const 4876) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00<\00/\00o\00l\00>\00\00\00")
 (data (i32.const 4908) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00l\00i\00>\00\00\00\00\00")
 (data (i32.const 4940) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00<\00/\00l\00i\00>\00\00\00")
 (data (i32.const 4972) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00<\00i\00m\00g\00 \00\00\00")
 (data (i32.const 5004) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00s\00r\00c\00=\00\"\00\00\00")
 (data (i32.const 5036) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5068) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00a\00l\00t\00=\00\"\00\00\00")
 (data (i32.const 5100) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \00/\00>\00\00\00\00\00\00\00")
 (data (i32.const 5132) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00<\00a\00 \00\00\00\00\00\00\00")
 (data (i32.const 5164) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00h\00r\00e\00f\00=\00\"\00")
 (data (i32.const 5196) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\"\00>\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5228) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00/\00a\00>\00\00\00\00\00")
 (data (i32.const 5260) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00<\00q\00>\00\00\00\00\00\00\00")
 (data (i32.const 5292) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00<\00/\00q\00>\00\00\00\00\00")
 (data (i32.const 5324) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00<\00c\00o\00d\00e\00>\00")
 (data (i32.const 5356) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00<\00/\00c\00o\00d\00e\00>\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5404) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00<\00h\00r\00 \00/\00>\00")
 (data (i32.const 5436) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 5500) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 5568) "\0f\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\08\00\00\02\00\00\00A\00\00\00\02\00\00\00\81\08\00\00\02\00\00\00\81\00\00\00\02\00\00\00\01\t\00\00\02\00\00\00\01\01\00\00\02\00\00\00\01\19\00\00\02\00\00\00\01\1a\00\00\02\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $lib/assembly/as-bind/__asbind_entryfile_flag i32 (i32.const 1))
 (global $lib/assembly/as-bind/__asbind_String_ID i32 (i32.const 1))
 (global $lib/assembly/as-bind/__asbind_ArrayBuffer_ID i32 (i32.const 0))
 (global $lib/assembly/as-bind/__asbind_ArrayBufferView_ID i32 (i32.const 2))
 (global $lib/assembly/as-bind/__asbind_Int8Array_ID i32 (i32.const 3))
 (global $lib/assembly/as-bind/__asbind_Uint8Array_ID i32 (i32.const 4))
 (global $lib/assembly/as-bind/__asbind_Int16Array_ID i32 (i32.const 5))
 (global $lib/assembly/as-bind/__asbind_Uint16Array_ID i32 (i32.const 6))
 (global $lib/assembly/as-bind/__asbind_Int32Array_ID i32 (i32.const 7))
 (global $lib/assembly/as-bind/__asbind_Uint32Array_ID i32 (i32.const 8))
 (global $lib/assembly/as-bind/__asbind_Float32Array_ID i32 (i32.const 9))
 (global $lib/assembly/as-bind/__asbind_Float64Array_ID i32 (i32.const 10))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE i32 (i32.const 32))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE i32 (i32.const 80))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER i32 (i32.const 128))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS i32 (i32.const 160))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD i32 (i32.const 208))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH i32 (i32.const 240))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM i32 (i32.const 288))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM i32 (i32.const 352))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START i32 (i32.const 416))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START i32 (i32.const 464))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END i32 (i32.const 512))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START i32 (i32.const 560))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END i32 (i32.const 608))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE i32 (i32.const 656))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK i32 (i32.const 704))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE i32 (i32.const 752))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE i32 (i32.const 800))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER i32 (i32.const 848))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 1024))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens (mut i32) (i32.const 0))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE i32 (i32.const 32))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE i32 (i32.const 80))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER i32 (i32.const 128))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS i32 (i32.const 160))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD i32 (i32.const 208))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH i32 (i32.const 240))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST i32 (i32.const 1392))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST i32 (i32.const 1440))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM i32 (i32.const 1488))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE i32 (i32.const 1536))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK i32 (i32.const 1568))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE i32 (i32.const 656))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK i32 (i32.const 704))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE i32 (i32.const 752))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE i32 (i32.const 800))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER i32 (i32.const 848))
 (global $~lib/rt/__rtti_base i32 (i32.const 5568))
 (global $~lib/memory/__data_end i32 (i32.const 5692))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 22076))
 (global $~lib/memory/__heap_base i32 (i32.const 22076))
 (export "__asbind_entryfile_flag" (global $lib/assembly/as-bind/__asbind_entryfile_flag))
 (export "__asbind_String_ID" (global $lib/assembly/as-bind/__asbind_String_ID))
 (export "__asbind_ArrayBuffer_ID" (global $lib/assembly/as-bind/__asbind_ArrayBuffer_ID))
 (export "__asbind_ArrayBufferView_ID" (global $lib/assembly/as-bind/__asbind_ArrayBufferView_ID))
 (export "__asbind_Int8Array_ID" (global $lib/assembly/as-bind/__asbind_Int8Array_ID))
 (export "__asbind_Uint8Array_ID" (global $lib/assembly/as-bind/__asbind_Uint8Array_ID))
 (export "__asbind_Int16Array_ID" (global $lib/assembly/as-bind/__asbind_Int16Array_ID))
 (export "__asbind_Uint16Array_ID" (global $lib/assembly/as-bind/__asbind_Uint16Array_ID))
 (export "__asbind_Int32Array_ID" (global $lib/assembly/as-bind/__asbind_Int32Array_ID))
 (export "__asbind_Uint32Array_ID" (global $lib/assembly/as-bind/__asbind_Uint32Array_ID))
 (export "__asbind_Float32Array_ID" (global $lib/assembly/as-bind/__asbind_Float32Array_ID))
 (export "__asbind_Float64Array_ID" (global $lib/assembly/as-bind/__asbind_Float64Array_ID))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "convertMarkdownToHTML" (func $export:examples/markdown-parser/assembly/index/convertMarkdownToHTML))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 1056
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 1184
   i32.const 1248
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 1056
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 273
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741820
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 275
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 288
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $6
  local.get $1
  i32.load offset=8
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $7
  if
   local.get $7
   local.get $6
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $1
    local.set $6
    local.get $6
    i32.const 4
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1328
    i32.const 224
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  i32.const 1
  drop
  local.get $8
  i32.const 12
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741820
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 240
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  i32.const 1
  drop
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 256
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 381
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 1328
    i32.const 388
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 1328
    i32.const 401
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 1056
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-continue|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i64.const 200
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   local.set $1
   local.get $1
   br_if $do-continue|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 992
   i32.const 1328
   i32.const 462
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 1328
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 1328
    i32.const 500
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 502
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   local.get $4
   i32.store8 offset=3
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=1
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=24
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=16
   local.get $6
   local.get $8
   i32.store offset=20
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=4
   local.get $6
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=12
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 992
   i32.const 1056
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $start:examples/markdown-parser/assembly/tokenizer/tokenizer
  i32.const 1104
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1136
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 1280
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  global.set $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
 )
 (func $start:examples/markdown-parser/assembly/index
  call $start:examples/markdown-parser/assembly/tokenizer/tokenizer
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $examples/markdown-parser/assembly/tokenizer/token/Token#set:index (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $examples/markdown-parser/assembly/tokenizer/token/Token#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $examples/markdown-parser/assembly/tokenizer/token/Token#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 896
    i32.const 944
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/itcms/__renew
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
    local.get $0
    local.get $6
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode#set:childNodes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:length_
  local.get $3
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 2828
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 2828
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2828
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2828
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 3248
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 3248
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-continue|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 4304
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    local.set $7
    local.get $7
    br_if $do-continue|0
   end
  else
   loop $do-continue|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 4304
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    local.set $7
    local.get $7
    br_if $do-continue|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $1
   local.get $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 5456
    i32.const 1056
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 5520
   i32.const 1056
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    local.set $0
    local.get $0
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   local.set $0
   local.get $0
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 1184
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 896
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2496
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 992
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 5456
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 5520
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3248
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4304
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Int8Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Uint8Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Int16Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Uint16Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Int32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Uint32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Float32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Float64Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $examples/markdown-parser/assembly/tokenizer/token/Token~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__visit
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>
    block $examples/markdown-parser/assembly/parser/ast/AstNode
     block $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>
      block $examples/markdown-parser/assembly/tokenizer/token/Token
       block $~lib/typedarray/Float64Array
        block $~lib/typedarray/Float32Array
         block $~lib/typedarray/Uint32Array
          block $~lib/typedarray/Int32Array
           block $~lib/typedarray/Uint16Array
            block $~lib/typedarray/Int16Array
             block $~lib/typedarray/Uint8Array
              block $~lib/typedarray/Int8Array
               block $~lib/arraybuffer/ArrayBufferView
                block $~lib/string/String
                 block $~lib/arraybuffer/ArrayBuffer
                  local.get $0
                  i32.const 8
                  i32.sub
                  i32.load
                  br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/typedarray/Int8Array $~lib/typedarray/Uint8Array $~lib/typedarray/Int16Array $~lib/typedarray/Uint16Array $~lib/typedarray/Int32Array $~lib/typedarray/Uint32Array $~lib/typedarray/Float32Array $~lib/typedarray/Float64Array $examples/markdown-parser/assembly/tokenizer/token/Token $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token> $examples/markdown-parser/assembly/parser/ast/AstNode $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode> $invalid
                 end
                 return
                end
                return
               end
               local.get $0
               local.get $1
               call $~lib/arraybuffer/ArrayBufferView~visit
               return
              end
              local.get $0
              local.get $1
              call $~lib/typedarray/Int8Array~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/typedarray/Uint8Array~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/typedarray/Int16Array~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/typedarray/Uint16Array~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/typedarray/Int32Array~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/typedarray/Uint32Array~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/typedarray/Float32Array~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/typedarray/Float64Array~visit
       return
      end
      local.get $0
      local.get $1
      call $examples/markdown-parser/assembly/tokenizer/token/Token~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>~visit
     return
    end
    local.get $0
    local.get $1
    call $examples/markdown-parser/assembly/parser/ast/AstNode~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:examples/markdown-parser/assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 22096
   i32.const 22144
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 1600
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $0
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/string/String#get:length
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const -1
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $2
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $6
  local.get $4
  local.tee $5
  local.get $6
  local.get $5
  i32.lt_s
  select
  local.set $7
  local.get $4
  local.get $3
  i32.sub
  local.set $4
  loop $for-loop|0
   local.get $7
   local.get $4
   i32.le_s
   local.set $6
   local.get $6
   if
    local.get $0
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $7
    local.get $1
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    i32.const 0
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $7
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $8
     return
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  i32.const -1
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/string/String#includes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $2
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 1664
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/string/String#includes
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   local.tee $1
   i32.store
  end
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 1600
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=8
  local.get $5
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $5
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.const 1696
  local.get $0
  i32.const 0
  i32.ne
  select
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $1
  i32.const 0
  i32.add
  call $~lib/string/String#charAt
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $2
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 2
   i32.add
   call $~lib/string/String#charAt
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/addToken (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $examples/markdown-parser/assembly/tokenizer/token/Token#constructor
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  call $examples/markdown-parser/assembly/tokenizer/token/Token#set:index
  local.get $3
  local.get $2
  call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1632
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   i32.const 0
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 1600
   local.tee $2
   i32.store offset=12
   loop $while-continue|0
    local.get $4
    local.get $0
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $~lib/string/String#get:length
    local.get $1
    i32.sub
    i32.lt_s
    if (result i32)
     local.get $0
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     local.get $1
     local.get $4
     i32.add
     call $~lib/string/String#charAt
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
    else
     i32.const 0
    end
    local.set $5
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     i32.const 1664
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     call $~lib/string/String.__concat
     local.tee $2
     i32.store offset=12
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $3
   local.get $2
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   local.get $4
   i32.const 1
   i32.sub
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1728
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 1728
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1760
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 1760
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 1792
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1824
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 1824
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 1856
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1888
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 1888
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 1920
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1760
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 1952
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1984
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 2016
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   local.get $1
   i32.const 2
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2048
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2080
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 2112
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2144
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2112
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2112
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2176
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2176
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2208
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2208
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2240
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2240
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2272
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2272
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 2304
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $1
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2336
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 2304
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2304
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 2368
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $1
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2400
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 2432
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $1
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   i32.const 2464
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  i32.const 0
  i32.gt_s
  if (result i32)
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 0
   i32.gt_s
  else
   i32.const 0
  end
  if (result i32)
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=20
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   i32.load offset=4
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.const 0
   call $~lib/string/String#includes
  else
   i32.const 0
  end
  if
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=20
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   i32.load offset=8
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $2
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/string/String.__concat
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  else
   local.get $3
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
   local.get $3
   local.get $2
   call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  unreachable
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/markdownTokenizer (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  global.set $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/string/String#get:length
   i32.lt_s
   local.set $2
   local.get $2
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $1
    call $~lib/string/String#charAt
    local.tee $3
    i32.store offset=4
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $1
    local.get $3
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    call $examples/markdown-parser/assembly/tokenizer/tokenizer/addToken
    local.set $4
    local.get $1
    local.get $4
    i32.add
    local.set $1
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  local.tee $3
  i32.store
  local.get $1
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $0
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.lt_s
   local.set $5
   local.get $5
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $4
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
    local.tee $6
    i32.store offset=8
    local.get $6
    i32.load offset=4
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $2
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=12
    local.get $7
    call $~lib/string/String.__eq
    if
     local.get $0
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     local.set $4
    else
     local.get $3
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     local.get $6
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=12
     local.get $7
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
     drop
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $examples/markdown-parser/assembly/parser/parser/getTokensAsString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $0
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $4
    local.get $2
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
    i32.load offset=8
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    call $~lib/string/String.__concat
    local.tee $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $1
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $1
  local.get $3
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
  local.tee $5
  i32.store offset=12
  local.get $4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
  i32.lt_s
  if
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  else
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  unreachable
 )
 (func $examples/markdown-parser/assembly/parser/parser/addAstNode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=40
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=48
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=56
  global.get $~lib/memory/__stack_pointer
  call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  local.get $2
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
  local.tee $4
  i32.store offset=8
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $3
   local.get $4
   i32.load offset=8
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
   local.get $0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $3
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $3
   local.get $4
   i32.load offset=8
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
   local.get $0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $3
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   i32.const 0
   local.set $5
   i32.const 1
   local.set $6
   loop $while-continue|0
    local.get $2
    local.get $5
    i32.add
    i32.const 1
    i32.add
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.const 1
    i32.sub
    i32.lt_s
    if (result i32)
     local.get $1
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     local.get $2
     local.get $5
     i32.add
     i32.const 1
     i32.add
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
     i32.load offset=4
     global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
     i32.eq
    else
     i32.const 0
    end
    local.set $7
    local.get $7
    if
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   local.get $5
   i32.add
   i32.const 1
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
   i32.eq
   if
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    local.get $5
    i32.add
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $7
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $7
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $8
    i32.store offset=24
    local.get $7
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $9
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $3
    local.get $6
    i32.const 10
    call $~lib/number/I32#toString
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
    local.get $5
    local.get $9
    i32.add
    local.set $5
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $7
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    i32.load offset=8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $9
    local.get $6
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=28
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $6
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $5
    i32.store offset=36
    local.get $6
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $9
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $6
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    i32.load offset=8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $9
    i32.const 1
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=28
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $9
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $9
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $5
    i32.store offset=36
    local.get $9
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $6
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $9
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    i32.load offset=8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=28
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $6
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $5
    i32.store offset=36
    local.get $6
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $9
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $6
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    i32.load offset=8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $9
    i32.const 1
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i32.load offset=4
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/string/String.__eq
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1600
   local.tee $9
   i32.store offset=40
   local.get $4
   i32.load offset=4
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/string/String.__eq
   if
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    global.get $~lib/memory/__stack_pointer
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
    local.tee $9
    i32.store offset=40
   else
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    global.get $~lib/memory/__stack_pointer
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
    local.tee $9
    i32.store offset=40
   end
   local.get $0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $3
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $5
   i32.const 0
   local.set $6
   local.get $2
   local.set $8
   loop $while-continue|1
    local.get $8
    local.get $6
    i32.add
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.lt_s
    if (result i32)
     local.get $1
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=16
     local.get $17
     local.get $8
     local.get $6
     i32.add
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
     i32.load offset=4
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     local.get $9
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=12
     local.get $17
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    local.set $7
    local.get $7
    if
     local.get $5
     local.get $6
     i32.add
     local.set $5
     local.get $8
     local.get $6
     i32.add
     local.set $8
     global.get $~lib/memory/__stack_pointer
     call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
     local.tee $10
     i32.store offset=44
     local.get $10
     global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM
     call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     local.get $8
     i32.const 1
     i32.add
     global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=16
     local.get $17
     call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
     local.tee $11
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $11
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
     local.tee $12
     i32.store offset=52
     local.get $11
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     local.set $13
     local.get $11
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     local.get $10
     i32.load offset=8
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=12
     local.get $17
     call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
     local.get $3
     i32.load offset=8
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=4
     local.get $17
     local.get $10
     local.set $17
     global.get $~lib/memory/__stack_pointer
     local.get $17
     i32.store offset=12
     local.get $17
     call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
     drop
     local.get $13
     i32.const 2
     i32.add
     local.set $14
     local.get $5
     local.get $14
     i32.add
     local.set $5
     local.get $8
     local.get $14
     i32.add
     local.set $8
     i32.const 0
     local.set $6
     loop $while-continue|2
      local.get $8
      local.get $6
      i32.add
      local.get $1
      local.set $17
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store offset=4
      local.get $17
      call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
      i32.lt_s
      if (result i32)
       local.get $1
       local.set $17
       global.get $~lib/memory/__stack_pointer
       local.get $17
       i32.store offset=16
       local.get $17
       local.get $8
       local.get $6
       i32.add
       call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
       i32.load offset=4
       local.set $17
       global.get $~lib/memory/__stack_pointer
       local.get $17
       i32.store offset=4
       local.get $17
       global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
       local.set $17
       global.get $~lib/memory/__stack_pointer
       local.get $17
       i32.store offset=12
       local.get $17
       call $~lib/string/String.__eq
      else
       i32.const 0
      end
      local.set $15
      local.get $15
      if
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $while-continue|2
      end
     end
     br $while-continue|1
    end
   end
   local.get $5
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.tee $8
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $8
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.tee $6
   i32.store offset=32
   local.get $8
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $5
   global.get $~lib/memory/__stack_pointer
   call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
   local.tee $9
   i32.store offset=40
   local.get $9
   i32.const 4400
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $9
   local.get $6
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   local.get $2
   local.get $5
   i32.add
   i32.const 2
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   i32.load offset=4
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/string/String.__eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    local.get $5
    i32.add
    i32.const 3
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $7
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $7
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $15
    i32.store offset=56
    local.get $7
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $16
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $3
    local.get $15
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
    local.get $3
    i32.load offset=8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $9
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $5
    local.get $16
    i32.add
    i32.const 4
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.tee $9
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $9
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.tee $5
   i32.store offset=36
   local.get $9
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $6
   global.get $~lib/memory/__stack_pointer
   call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
   local.tee $8
   i32.store offset=24
   local.get $8
   i32.const 4432
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $8
   local.get $5
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   local.get $2
   local.get $6
   i32.add
   i32.const 2
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   i32.load offset=4
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/string/String.__eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    local.get $6
    i32.add
    i32.const 3
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $16
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $16
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $15
    i32.store offset=56
    local.get $16
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $7
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $3
    local.get $15
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
    local.get $3
    i32.load offset=8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $6
    local.get $7
    i32.add
    i32.const 4
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.tee $8
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $8
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.tee $6
   i32.store offset=32
   local.get $8
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $5
   local.get $3
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $3
   local.get $6
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
   local.get $0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $3
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   local.get $5
   i32.const 1
   i32.add
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.tee $5
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $5
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.tee $6
   i32.store offset=32
   local.get $5
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $8
   local.get $3
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $3
   local.get $6
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
   local.get $0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $3
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   local.get $8
   i32.const 1
   i32.add
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=28
   local.get $17
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=16
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.tee $8
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.tee $6
    i32.store offset=32
    local.get $8
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $5
    local.get $3
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
    local.get $3
    local.get $6
    call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
    local.get $0
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=4
    local.get $17
    local.get $3
    local.set $17
    global.get $~lib/memory/__stack_pointer
    local.get $17
    i32.store offset=12
    local.get $17
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $5
    i32.const 1
    i32.add
    local.set $17
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $17
    return
   end
  end
  local.get $4
  i32.load offset=4
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/string/String.__eq
  if (result i32)
   local.get $1
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=16
   local.get $17
   local.get $2
   i32.const 1
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   i32.load offset=4
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if
   local.get $3
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE
   call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
   local.get $0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=4
   local.get $17
   local.get $3
   local.set $17
   global.get $~lib/memory/__stack_pointer
   local.get $17
   i32.store offset=12
   local.get $17
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $3
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER
  call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
  local.get $3
  local.get $4
  i32.load offset=8
  call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
  local.get $0
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=4
  local.get $17
  local.get $3
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store offset=12
  local.get $17
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
  drop
  i32.const 0
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
 )
 (func $examples/markdown-parser/assembly/parser/parser/addTokensToAst (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $0
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $2
    call $examples/markdown-parser/assembly/parser/parser/addAstNode
    local.set $4
    local.get $2
    local.get $4
    i32.add
    local.set $2
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $examples/markdown-parser/assembly/parser/parser/markdownTokenParser (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor
  local.tee $1
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlStringForAstNode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  local.tee $3
  i32.store
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4480
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4512
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4544
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   local.get $4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 2272
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4576
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   local.get $4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   i32.const 2272
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4608
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4640
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4672
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4704
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4736
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4768
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4800
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4832
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4864
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4896
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4928
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 4960
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4992
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5024
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   i32.const 5056
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5088
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=32
   local.get $5
   i32.const 0
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   i32.const 5056
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5120
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5152
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5184
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   i32.const 5216
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=8
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   i32.const 0
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5248
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5280
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5312
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__eq
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5344
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 5376
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5424
   local.tee $3
   i32.store
   local.get $3
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $0
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=20
    local.get $4
    local.get $2
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $4
    local.get $0
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=16
    local.get $4
    local.get $2
    call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlStringForAstNode
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    call $~lib/string/String.__concat
    local.tee $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $examples/markdown-parser/assembly/index/convertMarkdownToHTML (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/markdownTokenizer
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $examples/markdown-parser/assembly/parser/parser/markdownTokenParser
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
  local.tee $3
  i32.store offset=12
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 896
   i32.const 944
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#set:length_
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $examples/markdown-parser/assembly/tokenizer/token/Token#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $examples/markdown-parser/assembly/tokenizer/token/Token#set:index
  local.get $0
  i32.const 1600
  call $examples/markdown-parser/assembly/tokenizer/token/Token#set:type
  local.get $0
  i32.const 1600
  call $examples/markdown-parser/assembly/tokenizer/token/Token#set:value
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1184
   i32.const 944
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 2496
   i32.const 944
   i32.const 96
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 896
   i32.const 944
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#set:length_
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 1600
  call $examples/markdown-parser/assembly/parser/ast/AstNode#set:type
  local.get $0
  i32.const 1600
  call $examples/markdown-parser/assembly/parser/ast/AstNode#set:value
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor
  call $examples/markdown-parser/assembly/parser/ast/AstNode#set:childNodes
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $examples/markdown-parser/assembly/parser/parser/getNewAstNode (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $examples/markdown-parser/assembly/parser/ast/AstNode#constructor
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor
  call $examples/markdown-parser/assembly/parser/ast/AstNode#set:childNodes
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2624
   i32.const 2752
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 2816
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $2
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   local.set $7
   local.get $0
   local.set $6
   local.get $4
   local.set $5
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.get $2
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.set $7
    local.get $0
    local.set $6
    local.get $4
    local.set $5
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $7
    local.get $6
    i64.extend_i32_u
    local.get $5
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    local.set $4
    local.get $4
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.get $2
    i32.add
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.get $4
    i64.extend_i32_u
    local.get $7
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1184
   i32.const 944
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 2496
   i32.const 944
   i32.const 96
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:examples/markdown-parser/assembly/index/convertMarkdownToHTML (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $examples/markdown-parser/assembly/index/convertMarkdownToHTML
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
