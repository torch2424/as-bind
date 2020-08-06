(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
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
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00N\00e\00w\00L\00i\00n\00e\00")
 (data (i32.const 208) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00W\00h\00i\00t\00e\00s\00p\00a\00c\00e\00")
 (data (i32.const 256) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00H\00e\00a\00d\00e\00r\00")
 (data (i32.const 288) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00I\00t\00a\00l\00i\00c\00s\00")
 (data (i32.const 320) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00B\00o\00l\00d\00")
 (data (i32.const 352) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00S\00t\00r\00i\00k\00e\00t\00h\00r\00o\00u\00g\00h\00")
 (data (i32.const 400) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00U\00n\00o\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00I\00t\00e\00m\00")
 (data (i32.const 464) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00O\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00I\00t\00e\00m\00")
 (data (i32.const 512) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00m\00a\00g\00e\00S\00t\00a\00r\00t\00")
 (data (i32.const 560) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00B\00r\00a\00c\00k\00e\00t\00S\00t\00a\00r\00t\00")
 (data (i32.const 608) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00B\00r\00a\00c\00k\00e\00t\00E\00n\00d\00")
 (data (i32.const 656) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00P\00a\00r\00e\00n\00S\00t\00a\00r\00t\00")
 (data (i32.const 704) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00P\00a\00r\00e\00n\00E\00n\00d\00")
 (data (i32.const 736) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00B\00l\00o\00c\00k\00Q\00u\00o\00t\00e\00")
 (data (i32.const 784) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00C\00o\00d\00e\00B\00l\00o\00c\00k\00")
 (data (i32.const 832) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00l\00i\00n\00e\00C\00o\00d\00e\00")
 (data (i32.const 880) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00H\00o\00r\00i\00z\00o\00n\00t\00a\00l\00L\00i\00n\00e\00")
 (data (i32.const 928) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00C\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 976) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 1024) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1072) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00U\00n\00o\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00")
 (data (i32.const 1120) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00O\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00")
 (data (i32.const 1168) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00L\00i\00s\00t\00I\00t\00e\00m\00")
 (data (i32.const 1200) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00I\00m\00a\00g\00e\00")
 (data (i32.const 1232) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00L\00i\00n\00k\00")
 (data (i32.const 1264) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1280) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1312) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00 \00")
 (data (i32.const 1344) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 1376) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00#\00")
 (data (i32.const 1408) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00*\00")
 (data (i32.const 1440) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00*\00*\00")
 (data (i32.const 1472) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00_\00")
 (data (i32.const 1504) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00_\00_\00")
 (data (i32.const 1536) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00~\00")
 (data (i32.const 1568) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00~\00~\00")
 (data (i32.const 1600) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00*\00 \00")
 (data (i32.const 1632) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 1664) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 1696) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00.\00 \00")
 (data (i32.const 1728) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00!\00")
 (data (i32.const 1760) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 1792) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00!\00[\00")
 (data (i32.const 1824) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 1856) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00(\00")
 (data (i32.const 1888) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00)\00")
 (data (i32.const 1920) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00>\00")
 (data (i32.const 1952) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00`\00")
 (data (i32.const 1984) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00`\00`\00`\00")
 (data (i32.const 2016) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 2048) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00-\00-\00-\00")
 (data (i32.const 2080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 2112) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00=\00=\00=\00")
 (data (i32.const 2144) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 2208) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 2320) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00")
 (data (i32.const 2448) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00")
 (data (i32.const 2512) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 2532) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2944) "\00\04\00\00\01\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00")
 (data (i32.const 3984) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 4080) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00A\00l\00t\00")
 (data (i32.const 4112) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00L\00i\00n\00k\00 \00C\00o\00n\00t\00e\00n\00t\00")
 (data (i32.const 4160) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00<\00b\00r\00 \00/\00>\00")
 (data (i32.const 4192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00h\00")
 (data (i32.const 4224) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00<\00")
 (data (i32.const 4256) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00<\00/\00")
 (data (i32.const 4288) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00i\00>\00")
 (data (i32.const 4320) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00i\00>\00")
 (data (i32.const 4352) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00b\00>\00")
 (data (i32.const 4384) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00b\00>\00")
 (data (i32.const 4416) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00s\00>\00")
 (data (i32.const 4448) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00s\00>\00")
 (data (i32.const 4480) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00u\00l\00>\00")
 (data (i32.const 4512) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00/\00u\00l\00>\00")
 (data (i32.const 4544) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00o\00l\00>\00")
 (data (i32.const 4576) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00/\00o\00l\00>\00")
 (data (i32.const 4608) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00l\00i\00>\00")
 (data (i32.const 4640) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00/\00l\00i\00>\00")
 (data (i32.const 4672) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00i\00m\00g\00 \00")
 (data (i32.const 4704) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00r\00c\00=\00\"\00")
 (data (i32.const 4736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 4768) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00l\00t\00=\00\"\00")
 (data (i32.const 4800) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00 \00/\00>\00")
 (data (i32.const 4832) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00a\00 \00")
 (data (i32.const 4864) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00h\00r\00e\00f\00=\00\"\00")
 (data (i32.const 4896) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\"\00>\00")
 (data (i32.const 4928) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00a\00>\00")
 (data (i32.const 4960) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00q\00>\00")
 (data (i32.const 4992) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00q\00>\00")
 (data (i32.const 5024) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00<\00c\00o\00d\00e\00>\00")
 (data (i32.const 5056) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00<\00/\00c\00o\00d\00e\00>\00")
 (data (i32.const 5088) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00<\00h\00r\00 \00/\00>\00")
 (data (i32.const 5120) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 5168) "\0f\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00a\08\00\00\02\00\00\00a\00\00\00\02\00\00\00\a1\08\00\00\02\00\00\00\a1\00\00\00\02\00\00\00!\t\00\00\02\00\00\00!\01\00\00\02\00\00\00!\19\00\00\02\00\00\00!\1a\00\00\02\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
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
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE i32 (i32.const 192))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE i32 (i32.const 224))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER i32 (i32.const 272))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS i32 (i32.const 304))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD i32 (i32.const 336))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH i32 (i32.const 368))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM i32 (i32.const 416))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM i32 (i32.const 480))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START i32 (i32.const 528))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START i32 (i32.const 576))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END i32 (i32.const 624))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START i32 (i32.const 672))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END i32 (i32.const 720))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE i32 (i32.const 752))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK i32 (i32.const 800))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE i32 (i32.const 848))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE i32 (i32.const 896))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER i32 (i32.const 944))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens (mut i32) (i32.const 0))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE i32 (i32.const 192))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE i32 (i32.const 224))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER i32 (i32.const 272))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS i32 (i32.const 304))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD i32 (i32.const 336))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH i32 (i32.const 368))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST i32 (i32.const 1088))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST i32 (i32.const 1136))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM i32 (i32.const 1184))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE i32 (i32.const 1216))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK i32 (i32.const 1248))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE i32 (i32.const 752))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK i32 (i32.const 800))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE i32 (i32.const 848))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE i32 (i32.const 896))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER i32 (i32.const 944))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 5168))
 (global $~lib/heap/__heap_base i32 (i32.const 5292))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
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
 (export "convertMarkdownToHTML" (func $examples/markdown-parser/assembly/index/convertMarkdownToHTML))
 (start $~start)
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
   i32.const 32
   i32.const 277
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
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
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
   i32.const 32
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
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
     i32.store
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
   i32.const 32
   i32.const 205
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
   i32.const 32
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
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
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
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
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
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
    i32.const 32
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
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
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  i32.const 1
  drop
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 244
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
   i32.const 32
   i32.const 260
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
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
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
  i32.store
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
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 396
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
    i32.const 32
    i32.const 408
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
  i32.const 16
  i32.const 16
  i32.add
  i32.const 16
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
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
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
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
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
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
  global.get $~lib/rt/tlsf/ROOT
  local.set $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/heap/__heap_base
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $1
   memory.size
   local.set $2
   local.get $1
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
   local.set $3
   local.get $3
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $3
    local.get $2
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
   local.get $1
   local.set $0
   local.get $0
   i32.const 0
   i32.store
   local.get $0
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
     local.get $0
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
       local.get $0
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
   local.get $1
   i32.const 1572
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $5
   i32.const 0
   drop
   local.get $0
   local.get $5
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
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
   i32.const 536870904
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
   i32.const 32
   i32.const 338
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
     i32.const 32
     i32.const 351
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
  i32.const 536870904
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
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
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
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 365
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
  i32.const 16
  i32.const 16
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
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
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
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
   i32.const 16
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
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  drop
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 500
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    drop
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 1
    drop
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/searchBlock
     local.set $4
     i32.const 1
     drop
     local.get $4
     i32.eqz
     if
      i32.const 0
      i32.const 32
      i32.const 512
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    i32.const 1
    drop
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 517
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  i32.const 1
  drop
  local.get $4
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 520
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 112
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
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
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 1073741808
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 992
   i32.const 1040
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $start:examples/markdown-parser/assembly/tokenizer/tokenizer
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
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 1280
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $examples/markdown-parser/assembly/tokenizer/token/Token#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1280
  i32.store offset=4
  local.get $0
  i32.const 1280
  i32.store offset=8
  local.get $0
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
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
     local.set $10
     local.get $0
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $10
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
  local.set $7
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  local.get $5
  i32.eqz
  if
   i32.const -1
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $6
  local.get $4
  local.get $6
  i32.gt_s
  select
  local.tee $4
  local.get $5
  local.tee $6
  local.get $4
  local.get $6
  i32.lt_s
  select
  local.set $7
  local.get $5
  local.get $3
  i32.sub
  local.set $5
  loop $for-loop|0
   local.get $7
   local.get $5
   i32.le_s
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $7
    local.get $1
    i32.const 0
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $7
     local.set $6
     local.get $1
     call $~lib/rt/pure/__release
     local.get $6
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
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/string/String#includes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
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
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
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
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
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
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $3
  local.get $4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  global.get $~lib/heap/__heap_base
  i32.ge_u
  if
   i32.const 0
   drop
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
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
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 992
    i32.const 1040
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
   call $~lib/rt/tlsf/__realloc
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
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.const 1328
  i32.const 0
  call $~lib/string/String#includes
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1360
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 1280
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.const 1360
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  local.get $1
  i32.const 0
  i32.add
  call $~lib/string/String#charAt
  local.tee $3
  local.get $0
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $2
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   local.get $0
   i32.const 0
   call $~lib/string/String#includes
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   local.get $1
   i32.const 2
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   local.get $0
   i32.const 0
   call $~lib/string/String#includes
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
  else
   i32.const 0
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2160
   i32.const 1040
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 2224
   i32.const 1040
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/addToken (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  call $examples/markdown-parser/assembly/tokenizer/token/Token#constructor
  local.set $3
  local.get $3
  local.get $1
  i32.store
  local.get $3
  local.tee $4
  local.get $2
  local.tee $5
  local.get $4
  i32.load offset=8
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $2
  i32.const 1296
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.tee $5
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $2
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
   local.tee $5
   local.get $4
   i32.load offset=4
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=4
   i32.const 0
   local.set $4
   i32.const 1280
   local.set $6
   local.get $2
   call $~lib/rt/pure/__release
   local.get $6
   local.set $2
   loop $while-continue|0
    local.get $4
    local.get $0
    call $~lib/string/String#get:length
    local.get $1
    i32.sub
    i32.lt_s
    if (result i32)
     local.get $0
     local.get $1
     local.get $4
     i32.add
     call $~lib/string/String#charAt
     local.tee $6
     call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
     local.set $5
     local.get $6
     call $~lib/rt/pure/__release
     local.get $5
    else
     i32.const 0
    end
    local.set $6
    local.get $6
    if
     local.get $2
     i32.const 1328
     call $~lib/string/String.__concat
     local.tee $5
     local.tee $7
     local.get $2
     local.tee $8
     i32.ne
     if
      local.get $7
      call $~lib/rt/pure/__retain
      local.set $7
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $7
     local.set $2
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $5
     call $~lib/rt/pure/__release
     br $while-continue|0
    end
   end
   local.get $3
   local.tee $8
   local.get $2
   local.tee $7
   local.get $8
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   local.get $4
   i32.const 1
   i32.sub
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1392
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 1392
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1424
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $8
   i32.const 1424
   i32.const 0
   call $~lib/string/String#includes
   local.set $4
   local.get $8
   call $~lib/rt/pure/__release
   local.get $4
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1456
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 1488
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   i32.const 1488
   i32.const 0
   call $~lib/string/String#includes
   local.set $8
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 1520
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1552
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $8
   i32.const 1552
   i32.const 0
   call $~lib/string/String#includes
   local.set $4
   local.get $8
   call $~lib/rt/pure/__release
   local.get $4
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1584
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 1424
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
   local.set $8
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 1616
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1648
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $8
   i32.const 1680
   i32.const 0
   call $~lib/string/String#includes
   local.set $4
   local.get $8
   call $~lib/rt/pure/__release
   local.get $4
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   i32.const 2
   i32.add
   call $~lib/string/String#charAt
   local.tee $8
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
   local.set $4
   local.get $8
   call $~lib/rt/pure/__release
   local.get $4
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1712
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 1744
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   i32.const 1776
   i32.const 0
   call $~lib/string/String#includes
   local.set $8
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 1808
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1776
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1776
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 1840
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 1840
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1872
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1872
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 1904
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 1904
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1936
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $8
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
   local.set $4
   local.get $8
   call $~lib/rt/pure/__release
   local.get $4
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1936
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 1968
  local.get $1
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 2000
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  i32.const 1968
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 1968
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 2032
  local.get $1
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
   local.tee $7
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $8
   i32.const 2064
   local.set $4
   local.get $8
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $8
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  i32.const 2096
  local.get $1
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   local.tee $7
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $8
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $4
   i32.const 2128
   local.set $8
   local.get $4
   i32.load offset=8
   call $~lib/rt/pure/__release
   local.get $8
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $1
  i32.const 0
  i32.gt_s
  if (result i32)
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 0
   i32.gt_s
  else
   i32.const 0
  end
  if (result i32)
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $4
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER
   i32.const 0
   call $~lib/string/String#includes
   local.set $8
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
  else
   i32.const 0
  end
  if
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $7
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $4
   i32.load offset=8
   local.get $2
   call $~lib/string/String.__concat
   local.tee $8
   local.tee $9
   local.get $6
   i32.load offset=8
   local.tee $10
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $10
    call $~lib/rt/pure/__release
   end
   local.get $9
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
   return
  else
   local.get $3
   local.tee $10
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER
   local.tee $9
   local.get $10
   i32.load offset=4
   local.tee $7
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $9
   i32.store offset=4
   local.get $3
   local.tee $6
   local.get $2
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $10
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $10
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  local.set $1
  global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  call $~lib/rt/pure/__release
  local.get $1
  global.set $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $0
   call $~lib/string/String#get:length
   i32.lt_s
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/string/String#charAt
    local.set $3
    local.get $0
    local.get $1
    local.get $3
    call $examples/markdown-parser/assembly/tokenizer/tokenizer/addToken
    local.set $4
    local.get $1
    local.get $4
    i32.add
    local.set $1
    local.get $3
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 1073741808
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 992
   i32.const 1040
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1280
  i32.store
  local.get $0
  i32.const 1280
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor
  i32.store offset=8
  local.get $0
 )
 (func $examples/markdown-parser/assembly/parser/parser/getNewAstNode (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  call $examples/markdown-parser/assembly/parser/ast/AstNode#constructor
  local.set $0
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
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
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  local.set $3
  local.get $1
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $0
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $0
    local.get $4
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
    local.set $6
    local.get $6
    i32.load offset=4
    local.get $2
    call $~lib/string/String.__eq
    if
     local.get $0
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     local.set $4
    else
     local.get $3
     local.get $6
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
     drop
    end
    local.get $6
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $examples/markdown-parser/assembly/parser/parser/getTokensAsString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 1280
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
    local.tee $4
    i32.load offset=8
    call $~lib/string/String.__concat
    local.tee $5
    local.tee $6
    local.get $1
    local.tee $7
    i32.ne
    if
     local.get $6
     call $~lib/rt/pure/__retain
     local.set $6
     local.get $7
     call $~lib/rt/pure/__release
    end
    local.get $6
    local.set $1
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
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
    i32.const 2532
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 2532
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
   i32.const 2532
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
   i32.const 2532
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
    i32.const 2960
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
   i32.const 2960
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
    i32.const 4000
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
    i32.const 4000
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
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
   i32.const 2336
   i32.const 2464
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 2528
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
  i32.const 0
  local.set $3
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $3
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
    local.get $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tlsf/__alloc
    local.set $3
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
    local.get $7
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tlsf/__alloc
    local.set $3
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
 )
 (func $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
  local.set $4
  local.get $0
  local.get $1
  local.get $3
  call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
  local.set $5
  local.get $4
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
  local.get $5
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
  i32.lt_s
  if
   i32.const 1
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  else
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
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
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
  local.set $3
  local.get $1
  local.get $2
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
  local.set $4
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
  call $~lib/string/String.__eq
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE
   local.tee $6
   local.get $5
   i32.load
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store
   local.get $3
   local.tee $7
   local.get $4
   i32.load offset=8
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $7
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
  call $~lib/string/String.__eq
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE
   local.tee $6
   local.get $5
   i32.load
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store
   local.get $3
   local.tee $7
   local.get $4
   i32.load offset=8
   local.tee $6
   local.get $7
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $7
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
  call $~lib/string/String.__eq
  if
   i32.const 0
   local.set $7
   i32.const 1
   local.set $6
   loop $while-continue|0
    local.get $2
    local.get $7
    i32.add
    i32.const 1
    i32.add
    local.get $1
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.const 1
    i32.sub
    i32.lt_s
    if (result i32)
     local.get $1
     local.get $2
     local.get $7
     i32.add
     i32.const 1
     i32.add
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
     local.tee $5
     i32.load offset=4
     global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
     i32.eq
     local.set $8
     local.get $5
     call $~lib/rt/pure/__release
     local.get $8
    else
     i32.const 0
    end
    local.set $5
    local.get $5
    if
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $while-continue|0
    end
   end
   local.get $1
   local.get $2
   local.get $7
   i32.add
   i32.const 1
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $5
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
   i32.eq
   if
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $1
    local.get $2
    local.get $7
    i32.add
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $8
    local.get $8
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $9
    local.get $8
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $10
    local.get $3
    local.tee $11
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER
    local.tee $12
    local.get $11
    i32.load
    local.tee $13
    i32.ne
    if
     local.get $12
     call $~lib/rt/pure/__retain
     local.set $12
     local.get $13
     call $~lib/rt/pure/__release
    end
    local.get $12
    i32.store
    local.get $3
    local.tee $13
    local.get $6
    i32.const 10
    call $~lib/number/I32#toString
    local.set $12
    local.get $13
    i32.load offset=4
    call $~lib/rt/pure/__release
    local.get $12
    i32.store offset=4
    local.get $7
    local.get $10
    i32.add
    local.set $7
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $8
    local.get $3
    i32.load offset=8
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $10
    local.get $6
    i32.add
    local.set $13
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $13
    return
   end
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $5
    local.get $5
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $6
    local.get $5
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $7
    local.get $3
    local.tee $11
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS
    local.tee $12
    local.get $11
    i32.load
    local.tee $10
    i32.ne
    if
     local.get $12
     call $~lib/rt/pure/__retain
     local.set $12
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $12
    i32.store
    local.get $5
    local.get $3
    i32.load offset=8
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $11
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $11
    return
   end
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $7
    local.get $7
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $6
    local.get $7
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $5
    local.get $3
    local.tee $13
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD
    local.tee $8
    local.get $13
    i32.load
    local.tee $11
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     local.set $8
     local.get $11
     call $~lib/rt/pure/__release
    end
    local.get $8
    i32.store
    local.get $7
    local.get $3
    i32.load offset=8
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $5
    i32.const 1
    i32.add
    local.set $13
    local.get $7
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $13
    return
   end
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $5
    local.get $5
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $6
    local.get $5
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $7
    local.get $3
    local.tee $9
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH
    local.tee $10
    local.get $9
    i32.load
    local.tee $13
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     local.set $10
     local.get $13
     call $~lib/rt/pure/__release
    end
    local.get $10
    i32.store
    local.get $5
    local.get $3
    i32.load offset=8
    call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $9
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $9
    return
   end
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
   call $~lib/string/String.__eq
  end
  if
   i32.const 1280
   local.set $7
   local.get $4
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
   call $~lib/string/String.__eq
   if
    local.get $3
    local.tee $12
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST
    local.tee $11
    local.get $12
    i32.load
    local.tee $6
    i32.ne
    if
     local.get $11
     call $~lib/rt/pure/__retain
     local.set $11
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $11
    i32.store
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
    local.tee $8
    local.get $7
    local.tee $12
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     local.set $8
     local.get $12
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
   else
    local.get $3
    local.tee $13
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST
    local.tee $10
    local.get $13
    i32.load
    local.tee $8
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     local.set $10
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $10
    i32.store
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
    local.tee $9
    local.get $7
    local.tee $13
    i32.ne
    if
     local.get $9
     call $~lib/rt/pure/__retain
     local.set $9
     local.get $13
     call $~lib/rt/pure/__release
    end
    local.get $9
    local.set $7
   end
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $9
   i32.const 0
   local.set $13
   local.get $2
   local.set $10
   loop $while-continue|1
    local.get $10
    local.get $13
    i32.add
    local.get $1
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.lt_s
    if (result i32)
     local.get $1
     local.get $10
     local.get $13
     i32.add
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
     local.tee $8
     i32.load offset=4
     local.get $7
     call $~lib/string/String.__eq
     local.set $12
     local.get $8
     call $~lib/rt/pure/__release
     local.get $12
    else
     i32.const 0
    end
    local.set $8
    local.get $8
    if
     local.get $9
     local.get $13
     i32.add
     local.set $9
     local.get $10
     local.get $13
     i32.add
     local.set $10
     call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
     local.set $12
     local.get $12
     local.tee $5
     global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM
     local.tee $6
     local.get $5
     i32.load
     local.tee $11
     i32.ne
     if
      local.get $6
      call $~lib/rt/pure/__retain
      local.set $6
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $6
     i32.store
     local.get $1
     local.get $10
     i32.const 1
     i32.add
     global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
     call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
     local.set $5
     local.get $5
     call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
     local.set $6
     local.get $5
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     local.set $11
     local.get $5
     local.get $12
     i32.load offset=8
     call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
     local.get $3
     i32.load offset=8
     local.get $12
     call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
     drop
     local.get $11
     i32.const 2
     i32.add
     local.set $14
     local.get $9
     local.get $14
     i32.add
     local.set $9
     local.get $10
     local.get $14
     i32.add
     local.set $10
     i32.const 0
     local.set $13
     loop $while-continue|2
      local.get $10
      local.get $13
      i32.add
      local.get $1
      call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
      i32.lt_s
      if (result i32)
       local.get $1
       local.get $10
       local.get $13
       i32.add
       call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
       local.tee $15
       i32.load offset=4
       global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
       call $~lib/string/String.__eq
       local.set $16
       local.get $15
       call $~lib/rt/pure/__release
       local.get $16
      else
       i32.const 0
      end
      local.set $15
      local.get $15
      if
       local.get $13
       i32.const 1
       i32.add
       local.set $13
       br $while-continue|2
      end
     end
     local.get $12
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     call $~lib/rt/pure/__release
     br $while-continue|1
    end
   end
   local.get $9
   local.set $8
   local.get $7
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $10
   local.get $10
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $13
   local.get $10
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $9
   call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
   local.set $7
   local.get $7
   local.tee $16
   i32.const 4096
   local.set $15
   local.get $16
   i32.load
   call $~lib/rt/pure/__release
   local.get $15
   i32.store
   local.get $7
   local.tee $8
   local.get $13
   local.tee $15
   local.get $8
   i32.load offset=4
   local.tee $16
   i32.ne
   if
    local.get $15
    call $~lib/rt/pure/__retain
    local.set $15
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $15
   i32.store offset=4
   local.get $1
   local.get $2
   local.get $9
   i32.add
   i32.const 2
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $8
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   call $~lib/string/String.__eq
   if
    local.get $1
    local.get $2
    local.get $9
    i32.add
    i32.const 3
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $15
    local.get $15
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $16
    local.get $15
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $17
    local.get $3
    local.tee $18
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE
    local.tee $19
    local.get $18
    i32.load
    local.tee $20
    i32.ne
    if
     local.get $19
     call $~lib/rt/pure/__retain
     local.set $19
     local.get $20
     call $~lib/rt/pure/__release
    end
    local.get $19
    i32.store
    local.get $3
    local.tee $20
    local.get $16
    local.tee $19
    local.get $20
    i32.load offset=4
    local.tee $18
    i32.ne
    if
     local.get $19
     call $~lib/rt/pure/__retain
     local.set $19
     local.get $18
     call $~lib/rt/pure/__release
    end
    local.get $19
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $7
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $9
    local.get $17
    i32.add
    i32.const 4
    i32.add
    local.set $20
    local.get $15
    call $~lib/rt/pure/__release
    local.get $16
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $20
    return
   end
   local.get $10
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $8
   local.get $8
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $7
   local.get $8
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $9
   call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
   local.set $13
   local.get $13
   local.tee $18
   i32.const 4128
   local.set $19
   local.get $18
   i32.load
   call $~lib/rt/pure/__release
   local.get $19
   i32.store
   local.get $13
   local.tee $20
   local.get $7
   local.tee $15
   local.get $20
   i32.load offset=4
   local.tee $18
   i32.ne
   if
    local.get $15
    call $~lib/rt/pure/__retain
    local.set $15
    local.get $18
    call $~lib/rt/pure/__release
   end
   local.get $15
   i32.store offset=4
   local.get $1
   local.get $2
   local.get $9
   i32.add
   i32.const 2
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $20
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   call $~lib/string/String.__eq
   if
    local.get $1
    local.get $2
    local.get $9
    i32.add
    i32.const 3
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $15
    local.get $15
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $18
    local.get $15
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $19
    local.get $3
    local.tee $16
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK
    local.tee $17
    local.get $16
    i32.load
    local.tee $10
    i32.ne
    if
     local.get $17
     call $~lib/rt/pure/__retain
     local.set $17
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $17
    i32.store
    local.get $3
    local.tee $10
    local.get $18
    local.tee $17
    local.get $10
    i32.load offset=4
    local.tee $16
    i32.ne
    if
     local.get $17
     call $~lib/rt/pure/__retain
     local.set $17
     local.get $16
     call $~lib/rt/pure/__release
    end
    local.get $17
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $13
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $9
    local.get $19
    i32.add
    i32.const 4
    i32.add
    local.set $10
    local.get $15
    call $~lib/rt/pure/__release
    local.get $18
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $20
    call $~lib/rt/pure/__release
    local.get $10
    return
   end
   local.get $8
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $20
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $20
   local.get $20
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $13
   local.get $20
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $9
   local.get $3
   local.tee $16
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE
   local.tee $17
   local.get $16
   i32.load
   local.tee $7
   i32.ne
   if
    local.get $17
    call $~lib/rt/pure/__retain
    local.set $17
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $17
   i32.store
   local.get $3
   local.tee $10
   local.get $13
   local.tee $15
   local.get $10
   i32.load offset=4
   local.tee $16
   i32.ne
   if
    local.get $15
    call $~lib/rt/pure/__retain
    local.set $15
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $15
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   local.get $9
   i32.const 1
   i32.add
   local.set $10
   local.get $20
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $10
   return
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $9
   local.get $9
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $13
   local.get $9
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $20
   local.get $3
   local.tee $18
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK
   local.tee $19
   local.get $18
   i32.load
   local.tee $10
   i32.ne
   if
    local.get $19
    call $~lib/rt/pure/__retain
    local.set $19
    local.get $10
    call $~lib/rt/pure/__release
   end
   local.get $19
   i32.store
   local.get $3
   local.tee $8
   local.get $13
   local.tee $7
   local.get $8
   i32.load offset=4
   local.tee $18
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $18
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   local.get $20
   i32.const 1
   i32.add
   local.set $8
   local.get $9
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $20
    local.get $20
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $13
    local.get $20
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $9
    local.get $3
    local.tee $17
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE
    local.tee $16
    local.get $17
    i32.load
    local.tee $8
    i32.ne
    if
     local.get $16
     call $~lib/rt/pure/__retain
     local.set $16
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $16
    i32.store
    local.get $3
    local.tee $15
    local.get $13
    local.tee $10
    local.get $15
    i32.load offset=4
    local.tee $17
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     local.set $10
     local.get $17
     call $~lib/rt/pure/__release
    end
    local.get $10
    i32.store offset=4
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $9
    i32.const 1
    i32.add
    local.set $15
    local.get $20
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $15
    return
   end
  end
  local.get $4
  i32.load offset=4
  global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
  call $~lib/string/String.__eq
  if (result i32)
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $9
   i32.load offset=4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $~lib/string/String.__eq
   local.set $13
   local.get $9
   call $~lib/rt/pure/__release
   local.get $13
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $19
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE
   local.tee $18
   local.get $19
   i32.load
   local.tee $9
   i32.ne
   if
    local.get $18
    call $~lib/rt/pure/__retain
    local.set $18
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $18
   i32.store
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $19
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $19
   return
  end
  local.get $3
  local.tee $7
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER
  local.tee $8
  local.get $7
  i32.load
  local.tee $19
  i32.ne
  if
   local.get $8
   call $~lib/rt/pure/__retain
   local.set $8
   local.get $19
   call $~lib/rt/pure/__release
  end
  local.get $8
  i32.store
  local.get $3
  local.tee $16
  local.get $4
  i32.load offset=8
  local.tee $17
  local.get $16
  i32.load offset=4
  local.tee $7
  i32.ne
  if
   local.get $17
   call $~lib/rt/pure/__retain
   local.set $17
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $17
  i32.store offset=4
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
  drop
  i32.const 0
  local.set $16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $16
 )
 (func $examples/markdown-parser/assembly/parser/parser/addTokensToAst (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
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
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $examples/markdown-parser/assembly/parser/parser/markdownTokenParser (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor
  local.set $1
  local.get $0
  local.get $1
  call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2160
   i32.const 1040
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 2224
   i32.const 1040
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlStringForAstNode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 1280
  local.set $3
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE
  call $~lib/string/String.__eq
  if
   i32.const 4176
   local.set $4
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   local.set $3
   local.get $3
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER
  call $~lib/string/String.__eq
  if
   i32.const 4208
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $4
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 4240
   local.get $5
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 1936
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $8
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    local.set $8
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $8
   call $~lib/string/String.__concat
   local.tee $9
   local.tee $10
   local.get $3
   local.tee $11
   i32.ne
   if
    local.get $10
    call $~lib/rt/pure/__retain
    local.set $10
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $10
   local.set $3
   local.get $3
   i32.const 4272
   local.get $5
   call $~lib/string/String.__concat
   local.tee $10
   i32.const 1936
   call $~lib/string/String.__concat
   local.tee $11
   call $~lib/string/String.__concat
   local.tee $12
   local.tee $13
   local.get $3
   local.tee $14
   i32.ne
   if
    local.get $13
    call $~lib/rt/pure/__retain
    local.set $13
    local.get $14
    call $~lib/rt/pure/__release
   end
   local.get $13
   local.set $3
   local.get $3
   local.set $13
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $13
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS
  call $~lib/string/String.__eq
  if
   i32.const 4304
   local.set $14
   local.get $3
   call $~lib/rt/pure/__release
   local.get $14
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $14
   call $~lib/string/String.__concat
   local.tee $12
   local.tee $13
   local.get $3
   local.tee $11
   i32.ne
   if
    local.get $13
    call $~lib/rt/pure/__retain
    local.set $13
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $13
   local.set $3
   local.get $3
   i32.const 4336
   call $~lib/string/String.__concat
   local.tee $13
   local.tee $4
   local.get $3
   local.tee $11
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $4
   local.set $3
   local.get $3
   local.set $4
   local.get $14
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD
  call $~lib/string/String.__eq
  if
   i32.const 4368
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $5
   call $~lib/string/String.__concat
   local.tee $13
   local.tee $6
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $3
   local.get $3
   i32.const 4400
   call $~lib/string/String.__concat
   local.tee $6
   local.tee $7
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.set $3
   local.get $3
   local.set $7
   local.get $5
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH
  call $~lib/string/String.__eq
  if
   i32.const 4432
   local.set $8
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $8
   call $~lib/string/String.__concat
   local.tee $6
   local.tee $9
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.set $3
   local.get $3
   i32.const 4464
   call $~lib/string/String.__concat
   local.tee $9
   local.tee $10
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $10
    call $~lib/rt/pure/__retain
    local.set $10
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $10
   local.set $3
   local.get $3
   local.set $10
   local.get $8
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $10
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST
  call $~lib/string/String.__eq
  if
   i32.const 4496
   local.set $11
   local.get $3
   call $~lib/rt/pure/__release
   local.get $11
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $11
   call $~lib/string/String.__concat
   local.tee $9
   local.tee $4
   local.get $3
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
   local.set $3
   local.get $3
   i32.const 4528
   call $~lib/string/String.__concat
   local.tee $4
   local.tee $14
   local.get $3
   local.tee $6
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    local.set $14
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $14
   local.set $3
   local.get $3
   local.set $14
   local.get $11
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $14
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST
  call $~lib/string/String.__eq
  if
   i32.const 4560
   local.set $12
   local.get $3
   call $~lib/rt/pure/__release
   local.get $12
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $12
   call $~lib/string/String.__concat
   local.tee $4
   local.tee $7
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.set $3
   local.get $3
   i32.const 4592
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $5
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $5
   local.set $3
   local.get $3
   local.set $5
   local.get $12
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM
  call $~lib/string/String.__eq
  if
   i32.const 4624
   local.set $13
   local.get $3
   call $~lib/rt/pure/__release
   local.get $13
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
   local.tee $13
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $10
   local.get $3
   local.tee $4
   i32.ne
   if
    local.get $10
    call $~lib/rt/pure/__retain
    local.set $10
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $10
   local.set $3
   local.get $3
   i32.const 4656
   call $~lib/string/String.__concat
   local.tee $10
   local.tee $8
   local.get $3
   local.tee $4
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    local.set $8
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $3
   local.get $3
   local.set $8
   local.get $13
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE
  call $~lib/string/String.__eq
  if
   i32.const 4688
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
   local.set $3
   local.get $3
   i32.const 4720
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 4752
   call $~lib/string/String.__concat
   local.tee $10
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $14
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    local.set $14
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $14
   local.set $3
   local.get $3
   i32.const 4784
   local.get $0
   i32.load offset=8
   i32.const 0
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
   local.tee $14
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $13
   i32.const 4752
   call $~lib/string/String.__concat
   local.tee $8
   call $~lib/string/String.__concat
   local.tee $4
   local.tee $11
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $11
    call $~lib/rt/pure/__retain
    local.set $11
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $11
   local.set $3
   local.get $3
   i32.const 4816
   call $~lib/string/String.__concat
   local.tee $11
   local.tee $9
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.set $3
   local.get $3
   local.set $9
   local.get $6
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $9
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK
  call $~lib/string/String.__eq
  if
   i32.const 4848
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   local.set $3
   local.get $3
   i32.const 4880
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 4912
   call $~lib/string/String.__concat
   local.tee $11
   call $~lib/string/String.__concat
   local.tee $4
   local.tee $12
   local.get $3
   local.tee $8
   i32.ne
   if
    local.get $12
    call $~lib/rt/pure/__retain
    local.set $12
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $12
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=8
   i32.const 0
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
   local.tee $12
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $8
   local.tee $9
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.set $3
   local.get $3
   i32.const 4944
   call $~lib/string/String.__concat
   local.tee $9
   local.tee $6
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE
  call $~lib/string/String.__eq
  if
   i32.const 4976
   local.set $10
   local.get $3
   call $~lib/rt/pure/__release
   local.get $10
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $10
   local.tee $7
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.set $3
   local.get $3
   i32.const 5008
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $14
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    local.set $14
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $14
   local.set $3
   local.get $3
   local.set $14
   local.get $10
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $14
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE
   call $~lib/string/String.__eq
  end
  if
   i32.const 5040
   local.set $13
   local.get $3
   call $~lib/rt/pure/__release
   local.get $13
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $13
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $3
   local.get $3
   i32.const 5072
   call $~lib/string/String.__concat
   local.tee $6
   local.tee $5
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   local.set $3
   local.get $3
   local.set $5
   local.get $13
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $0
  i32.load
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE
  call $~lib/string/String.__eq
  if
   i32.const 5104
   local.set $11
   local.get $3
   call $~lib/rt/pure/__release
   local.get $11
   local.set $3
   local.get $3
   local.set $11
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $11
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $4
  local.get $3
  local.tee $11
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $3
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 1280
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
    local.tee $4
    local.get $0
    local.get $2
    call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlStringForAstNode
    local.tee $5
    call $~lib/string/String.__concat
    local.tee $6
    local.tee $7
    local.get $1
    local.tee $8
    i32.ne
    if
     local.get $7
     call $~lib/rt/pure/__retain
     local.set $7
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $7
    local.set $1
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $examples/markdown-parser/assembly/index/convertMarkdownToHTML (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/markdownTokenizer
  local.set $1
  local.get $1
  call $examples/markdown-parser/assembly/parser/parser/markdownTokenParser
  local.set $2
  local.get $2
  call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString
  local.set $3
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~start
  call $start:examples/markdown-parser/assembly/index
 )
 (func $~lib/rt/pure/markGray (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/finalize (param $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/scanBlack (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   local.get $0
   call $~lib/rt/pure/finalize
  end
 )
 (func $~lib/rt/pure/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  drop
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  global.get $~lib/rt/pure/CUR
  local.set $3
  loop $for-loop|0
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
    i32.load offset=4
    local.set $6
    local.get $6
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $6
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $5
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $5
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else
     local.get $6
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $6
      i32.const 268435455
      i32.and
      i32.eqz
     else
      i32.const 0
     end
     if
      local.get $5
      call $~lib/rt/pure/finalize
     else
      local.get $5
      local.get $6
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.set $3
  loop $for-loop|1
   local.get $3
   local.get $1
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $3
    i32.load
    call $~lib/rt/pure/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $0
  local.set $3
  loop $for-loop|2
   local.get $3
   local.get $1
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $3
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/collectWhite
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
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
   i32.const 2160
   i32.const 5136
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
 (func $~lib/rt/tlsf/__free (param $0 i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  i32.const 0
  drop
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   i32.const 0
   drop
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   i32.const 0
   drop
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/finalize
   else
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else
   i32.const 1
   drop
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   drop
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  i32.const 0
  drop
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       i32.const 1
       drop
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 144
        i32.const 79
        i32.const 20
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 144
      i32.const 90
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 1
   drop
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 101
    i32.const 27
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__visit_impl (param $0 i32) (param $1 i32)
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
     call $~lib/rt/pure/__visit
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
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__visit_impl (param $0 i32) (param $1 i32)
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
     call $~lib/rt/pure/__visit
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
  call $~lib/rt/pure/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$16
    block $switch$1$case$15
     block $switch$1$case$14
      block $switch$1$case$13
       block $switch$1$case$4
        block $switch$1$case$2
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$13 $switch$1$case$14 $switch$1$case$15 $switch$1$case$16 $switch$1$default
        end
        return
       end
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        local.get $1
        call $~lib/rt/pure/__visit
       end
       return
      end
      local.get $0
      i32.load offset=4
      local.tee $2
      if
       local.get $2
       local.get $1
       call $~lib/rt/pure/__visit
      end
      local.get $0
      i32.load offset=8
      local.tee $2
      if
       local.get $2
       local.get $1
       call $~lib/rt/pure/__visit
      end
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__visit_impl
     return
    end
    local.get $0
    i32.load
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $0
    i32.load offset=4
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $0
    i32.load offset=8
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__visit_impl
   return
  end
  unreachable
 )
)
