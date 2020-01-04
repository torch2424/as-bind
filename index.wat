(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 56) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 160) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 216) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 256) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00N\00e\00w\00L\00i\00n\00e\00")
 (data (i32.const 288) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00W\00h\00i\00t\00e\00s\00p\00a\00c\00e\00")
 (data (i32.const 328) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00H\00e\00a\00d\00e\00r\00")
 (data (i32.const 360) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00I\00t\00a\00l\00i\00c\00s\00")
 (data (i32.const 392) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00B\00o\00l\00d\00")
 (data (i32.const 416) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00S\00t\00r\00i\00k\00e\00t\00h\00r\00o\00u\00g\00h\00")
 (data (i32.const 464) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00U\00n\00o\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00I\00t\00e\00m\00")
 (data (i32.const 520) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00O\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00I\00t\00e\00m\00")
 (data (i32.const 568) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00m\00a\00g\00e\00S\00t\00a\00r\00t\00")
 (data (i32.const 608) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00B\00r\00a\00c\00k\00e\00t\00S\00t\00a\00r\00t\00")
 (data (i32.const 648) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00B\00r\00a\00c\00k\00e\00t\00E\00n\00d\00")
 (data (i32.const 688) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00P\00a\00r\00e\00n\00S\00t\00a\00r\00t\00")
 (data (i32.const 728) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00P\00a\00r\00e\00n\00E\00n\00d\00")
 (data (i32.const 760) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00B\00l\00o\00c\00k\00Q\00u\00o\00t\00e\00")
 (data (i32.const 800) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00C\00o\00d\00e\00B\00l\00o\00c\00k\00")
 (data (i32.const 840) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00l\00i\00n\00e\00C\00o\00d\00e\00")
 (data (i32.const 880) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00H\00o\00r\00i\00z\00o\00n\00t\00a\00l\00L\00i\00n\00e\00")
 (data (i32.const 928) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00C\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 968) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 1016) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1072) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00U\00n\00o\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00")
 (data (i32.const 1120) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00O\00r\00d\00e\00r\00e\00d\00L\00i\00s\00t\00")
 (data (i32.const 1160) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00L\00i\00s\00t\00I\00t\00e\00m\00")
 (data (i32.const 1192) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00I\00m\00a\00g\00e\00")
 (data (i32.const 1224) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00L\00i\00n\00k\00")
 (data (i32.const 1248) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1264) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1288) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00 \00")
 (data (i32.const 1360) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 1384) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00#\00")
 (data (i32.const 1408) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00*\00")
 (data (i32.const 1432) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00*\00*\00")
 (data (i32.const 1456) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00_\00")
 (data (i32.const 1480) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00_\00_\00")
 (data (i32.const 1504) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00~\00")
 (data (i32.const 1528) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00~\00~\00")
 (data (i32.const 1552) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00*\00 \00")
 (data (i32.const 1576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 1600) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 1624) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00.\00 \00")
 (data (i32.const 1648) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00!\00")
 (data (i32.const 1672) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 1696) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00!\00[\00")
 (data (i32.const 1720) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 1744) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00(\00")
 (data (i32.const 1768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00)\00")
 (data (i32.const 1792) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00>\00")
 (data (i32.const 1816) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00`\00")
 (data (i32.const 1840) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00`\00`\00`\00")
 (data (i32.const 1864) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 1888) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00-\00-\00-\00")
 (data (i32.const 1912) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 1936) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00=\00=\00=\00")
 (data (i32.const 1960) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 2072) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 2096) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2512) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00@\08\00\00@\08\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 2544) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00A\00l\00t\00")
 (data (i32.const 2568) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00L\00i\00n\00k\00 \00C\00o\00n\00t\00e\00n\00t\00")
 (data (i32.const 2608) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00<\00b\00r\00 \00/\00>\00")
 (data (i32.const 2640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00h\00")
 (data (i32.const 2664) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00<\00")
 (data (i32.const 2688) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00<\00/\00")
 (data (i32.const 2712) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00i\00>\00")
 (data (i32.const 2736) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00i\00>\00")
 (data (i32.const 2760) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00b\00>\00")
 (data (i32.const 2784) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00b\00>\00")
 (data (i32.const 2808) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00s\00>\00")
 (data (i32.const 2832) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00s\00>\00")
 (data (i32.const 2856) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00u\00l\00>\00")
 (data (i32.const 2880) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00/\00u\00l\00>\00")
 (data (i32.const 2912) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00o\00l\00>\00")
 (data (i32.const 2936) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00/\00o\00l\00>\00")
 (data (i32.const 2968) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00l\00i\00>\00")
 (data (i32.const 2992) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00/\00l\00i\00>\00")
 (data (i32.const 3024) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00<\00i\00m\00g\00 \00")
 (data (i32.const 3056) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00r\00c\00=\00\"\00")
 (data (i32.const 3088) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 3112) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00l\00t\00=\00\"\00")
 (data (i32.const 3144) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00 \00/\00>\00")
 (data (i32.const 3168) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00a\00 \00")
 (data (i32.const 3192) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00h\00r\00e\00f\00=\00\"\00")
 (data (i32.const 3224) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\"\00>\00")
 (data (i32.const 3248) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00a\00>\00")
 (data (i32.const 3272) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00<\00q\00>\00")
 (data (i32.const 3296) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00<\00/\00q\00>\00")
 (data (i32.const 3320) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00<\00c\00o\00d\00e\00>\00")
 (data (i32.const 3352) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00<\00/\00c\00o\00d\00e\00>\00")
 (data (i32.const 3384) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00<\00h\00r\00 \00/\00>\00")
 (data (i32.const 3416) "\10\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\00\00\00\00\83 \00\00\02\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $dist/asbind/__asbind_String_ID i32 (i32.const 1))
 (global $dist/asbind/__asbind_ArrayBuffer_ID i32 (i32.const 0))
 (global $dist/asbind/__asbind_ArrayBufferView_ID i32 (i32.const 2))
 (global $dist/asbind/__asbind_Int8Array_ID i32 (i32.const 3))
 (global $dist/asbind/__asbind_Uint8Array_ID i32 (i32.const 4))
 (global $dist/asbind/__asbind_Int16Array_ID i32 (i32.const 5))
 (global $dist/asbind/__asbind_Uint16Array_ID i32 (i32.const 6))
 (global $dist/asbind/__asbind_Int32Array_ID i32 (i32.const 7))
 (global $dist/asbind/__asbind_Uint32Array_ID i32 (i32.const 8))
 (global $dist/asbind/__asbind_Float32Array_ID i32 (i32.const 9))
 (global $dist/asbind/__asbind_Float64Array_ID i32 (i32.const 10))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE i32 (i32.const 272))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE i32 (i32.const 304))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER i32 (i32.const 344))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS i32 (i32.const 376))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD i32 (i32.const 408))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH i32 (i32.const 432))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM i32 (i32.const 480))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM i32 (i32.const 536))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START i32 (i32.const 584))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START i32 (i32.const 624))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END i32 (i32.const 664))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START i32 (i32.const 704))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END i32 (i32.const 744))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE i32 (i32.const 776))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK i32 (i32.const 816))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE i32 (i32.const 856))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE i32 (i32.const 896))
 (global $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER i32 (i32.const 944))
 (global $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens (mut i32) (i32.const 0))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE i32 (i32.const 272))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE i32 (i32.const 304))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HEADER i32 (i32.const 344))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS i32 (i32.const 376))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD i32 (i32.const 408))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH i32 (i32.const 432))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST i32 (i32.const 1088))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST i32 (i32.const 1136))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM i32 (i32.const 1176))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE i32 (i32.const 1208))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK i32 (i32.const 1240))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE i32 (i32.const 776))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK i32 (i32.const 816))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE i32 (i32.const 856))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE i32 (i32.const 896))
 (global $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER i32 (i32.const 944))
 (global $~lib/rt/__rtti_base i32 (i32.const 3416))
 (global $~lib/heap/__heap_base i32 (i32.const 3548))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "convertMarkdownToHTML" (func $examples/markdown-parser/assembly/index/convertMarkdownToHTML))
 (export "__asbind_String_ID" (global $dist/asbind/__asbind_String_ID))
 (export "__asbind_ArrayBuffer_ID" (global $dist/asbind/__asbind_ArrayBuffer_ID))
 (export "__asbind_ArrayBufferView_ID" (global $dist/asbind/__asbind_ArrayBufferView_ID))
 (export "__asbind_Int8Array_ID" (global $dist/asbind/__asbind_Int8Array_ID))
 (export "__asbind_Uint8Array_ID" (global $dist/asbind/__asbind_Uint8Array_ID))
 (export "__asbind_Int16Array_ID" (global $dist/asbind/__asbind_Int16Array_ID))
 (export "__asbind_Uint16Array_ID" (global $dist/asbind/__asbind_Uint16Array_ID))
 (export "__asbind_Int32Array_ID" (global $dist/asbind/__asbind_Int32Array_ID))
 (export "__asbind_Uint32Array_ID" (global $dist/asbind/__asbind_Uint32Array_ID))
 (export "__asbind_Float32Array_ID" (global $dist/asbind/__asbind_Float32Array_ID))
 (export "__asbind_Float64Array_ID" (global $dist/asbind/__asbind_Float64Array_ID))
 (start $start)
 (func $~lib/rt/tlsf/removeBlock (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
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
   i32.const 24
   i32.const 279
   i32.const 13
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
   i32.const 24
   i32.const 292
   i32.const 13
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
 (func $~lib/rt/tlsf/insertBlock (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 207
   i32.const 13
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
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 228
    i32.const 15
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
   i32.const 24
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 24
   i32.const 244
   i32.const 13
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
   i32.const 24
   i32.const 260
   i32.const 13
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
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
   i32.const 24
   i32.const 386
   i32.const 4
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
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 396
    i32.const 15
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
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
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
 (func $~lib/rt/tlsf/initializeRoot (; 4 ;) (type $FUNCSIG$v)
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
  global.get $~lib/heap/__heap_base
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
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 72
   i32.const 24
   i32.const 457
   i32.const 29
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
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 24
   i32.const 338
   i32.const 13
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
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 351
     i32.const 17
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
 (func $~lib/rt/pure/markGray (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/tlsf/freeBlock (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/pure/scanBlack (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scan (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/collectWhite (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   local.get $1
   local.set $2
   global.get $~lib/rt/pure/CUR
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $5
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $4
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.eqz
     else
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $5
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
    br $loop|0
   end
   unreachable
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  block $break|1
   local.get $0
   local.set $3
   loop $loop|1
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $3
    i32.load
    call $~lib/rt/pure/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|1
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $3
   loop $loop|2
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    local.get $3
    i32.load
    local.set $2
    local.get $2
    local.get $2
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $2
    call $~lib/rt/pure/collectWhite
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|2
   end
   unreachable
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
 (func $~lib/rt/tlsf/prepareBlock (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 365
   i32.const 13
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
  i32.const 32
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
 (func $~lib/rt/tlsf/allocateBlock (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 486
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
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
     local.get $3
     i32.eqz
     if
      i32.const 0
      i32.const 24
      i32.const 498
      i32.const 19
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/searchBlock
    local.set $3
    local.get $3
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 503
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 506
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/rt/__typeinfo (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 176
   i32.const 232
   i32.const 22
   i32.const 27
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
 (func $~lib/util/memory/memcpy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else
     i32.const 0
    end
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
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
     br $continue|1
    end
    unreachable
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
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
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
        br $continue|3
       end
       unreachable
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
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
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
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
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
 (func $~lib/memory/memory.copy (; 21 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
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
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
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
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
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
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 593
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 594
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 23 ;) (type $FUNCSIG$v)
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
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
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
 (func $~lib/rt/pure/appendRoot (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/decrement (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 115
   i32.const 13
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
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
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
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
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
 (func $~lib/rt/pure/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/memory/memory.fill (; 27 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
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
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
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
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 984
   i32.const 1032
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
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
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $start:examples/markdown-parser/assembly/tokenizer/tokenizer (; 30 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  global.set $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
 )
 (func $start:examples/markdown-parser/assembly/index (; 31 ;) (type $FUNCSIG$v)
  call $start:examples/markdown-parser/assembly/tokenizer/tokenizer
 )
 (func $~lib/string/String#get:length (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charAt (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 1264
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
 (func $examples/markdown-parser/assembly/tokenizer/token/Token#constructor (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/util/string/compareImpl (; 35 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
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
   block $break|0
    loop $continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $break|0
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
     br_if $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    local.get $4
    local.tee $7
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load16_u
    local.set $7
    local.get $6
    i32.load16_u
    local.set $8
    local.get $7
    local.get $8
    i32.ne
    if
     local.get $7
     local.get $8
     i32.sub
     local.set $9
     local.get $0
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $9
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
    br $continue|1
   end
   unreachable
  end
  i32.const 0
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/string/String#indexOf (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
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
  block $break|0
   local.get $5
   local.get $3
   i32.sub
   local.set $5
   loop $loop|0
    local.get $7
    local.get $5
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $7
    local.get $1
    i32.const 0
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $7
     local.set $4
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/string/String#includes (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
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
 (func $~lib/rt/tlsf/reallocateBlock (; 38 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $4
  i32.const 1
  i32.and
  i32.eqz
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 521
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
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
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 585
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureSize (; 40 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 984
    i32.const 1304
    i32.const 14
    i32.const 47
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
    call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
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
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 1352
  i32.const 0
  call $~lib/string/String#includes
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/string/String#concat (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1376
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
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
   i32.const 1264
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
 (func $~lib/string/String.__concat (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 1376
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
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
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
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__unchecked_get (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 176
   i32.const 1304
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1976
   i32.const 1304
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/addToken (; 49 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
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
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $2
  i32.const 1280
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   local.tee $4
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.store offset=4
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
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.WHITESPACE
   local.tee $5
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=4
   i32.const 0
   local.set $5
   i32.const 1264
   local.tee $4
   local.get $2
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
   local.set $2
   block $break|0
    loop $continue|0
     local.get $5
     local.get $0
     call $~lib/string/String#get:length
     local.get $1
     i32.sub
     i32.lt_s
     if (result i32)
      local.get $0
      local.get $1
      local.get $5
      i32.add
      call $~lib/string/String#charAt
      local.tee $4
      call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
      local.set $6
      local.get $4
      call $~lib/rt/pure/__release
      local.get $6
     else
      i32.const 0
     end
     i32.eqz
     br_if $break|0
     local.get $2
     i32.const 1352
     call $~lib/string/String.__concat
     local.tee $4
     local.tee $6
     local.get $2
     local.tee $7
     i32.ne
     if
      local.get $6
      call $~lib/rt/pure/__retain
      drop
      local.get $7
      call $~lib/rt/pure/__release
     end
     local.get $6
     local.set $2
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $4
     call $~lib/rt/pure/__release
     br $continue|0
    end
    unreachable
   end
   local.get $3
   local.tee $4
   local.get $2
   local.tee $7
   local.get $4
   i32.load offset=8
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   local.get $5
   i32.const 1
   i32.sub
   local.set $7
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  local.get $2
  i32.const 1400
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HEADER
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1400
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
   i32.const 1424
   i32.const 0
   call $~lib/string/String#includes
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1448
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $2
  i32.const 1472
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $5
   i32.const 1472
   i32.const 0
   call $~lib/string/String#includes
   local.set $7
   local.get $5
   call $~lib/rt/pure/__release
   local.get $7
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1496
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  i32.const 1520
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   i32.const 1520
   i32.const 0
   call $~lib/string/String#includes
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1544
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
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
   local.tee $5
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
   local.set $7
   local.get $5
   call $~lib/rt/pure/__release
   local.get $7
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1568
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  i32.const 1592
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   i32.const 1616
   i32.const 0
   call $~lib/string/String#includes
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   i32.const 2
   i32.add
   call $~lib/string/String#charAt
   local.tee $4
   call $examples/markdown-parser/assembly/tokenizer/tokenizer/isWhitespace
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1640
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $2
  i32.const 1664
  i32.const 0
  call $~lib/string/String#includes
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.tee $5
   i32.const 1688
   i32.const 0
   call $~lib/string/String#includes
   local.set $7
   local.get $5
   call $~lib/rt/pure/__release
   local.get $7
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.IMAGE_START
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1712
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  i32.const 1688
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_START
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1688
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $2
  i32.const 1736
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1736
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  i32.const 1760
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_START
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1760
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $2
  i32.const 1784
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1784
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  i32.const 1808
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
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BLOCK_QUOTE
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1808
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 1
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  i32.const 1832
  local.get $1
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1856
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  local.get $2
  i32.const 1832
  i32.const 0
  call $~lib/string/String#includes
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1832
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 0
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  i32.const 1880
  local.get $1
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
   local.tee $6
   local.get $5
   i32.load offset=4
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   i32.const 1904
   local.tee $4
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
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
  i32.const 1928
  local.get $1
  local.get $0
  call $examples/markdown-parser/assembly/tokenizer/tokenizer/checkForTriplet
  if
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.HORIZONTAL_LINE
   local.tee $7
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $7
   i32.store offset=4
   local.get $3
   local.tee $7
   i32.const 1952
   local.tee $5
   local.get $7
   i32.load offset=8
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=8
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
   drop
   i32.const 2
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
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
   local.tee $5
   i32.load offset=4
   i32.const 944
   i32.const 0
   call $~lib/string/String#includes
   local.set $7
   local.get $5
   call $~lib/rt/pure/__release
   local.get $7
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
   local.tee $4
   local.tee $6
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $5
   i32.load offset=8
   local.get $2
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $8
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $8
   i32.store offset=8
   i32.const 0
   local.set $8
   local.get $5
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $8
   return
  else
   local.get $3
   local.tee $4
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CHARACTER
   local.tee $6
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $3
   local.tee $6
   local.get $2
   local.tee $8
   local.get $6
   i32.load offset=8
   local.tee $6
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $8
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
  unreachable
 )
 (func $examples/markdown-parser/assembly/tokenizer/tokenizer/markdownTokenizer (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  local.set $1
  global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  call $~lib/rt/pure/__release
  local.get $1
  global.set $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $0
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/string/String#charAt
    local.set $2
    local.get $0
    local.get $1
    local.get $2
    call $examples/markdown-parser/assembly/tokenizer/tokenizer/addToken
    local.set $3
    local.get $1
    local.get $3
    i32.add
    local.set $1
    local.get $2
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  global.get $examples/markdown-parser/assembly/tokenizer/tokenizer/tokens
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#constructor (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $examples/markdown-parser/assembly/parser/ast/AstNode#constructor (; 52 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $examples/markdown-parser/assembly/parser/parser/getNewAstNode (; 53 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/string/String.__eq (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
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
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
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
 (func $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#constructor
  local.set $3
  block $break|0
   local.get $1
   local.set $4
   loop $loop|0
    local.get $4
    local.get $0
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $4
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
    local.set $5
    local.get $5
    i32.load offset=4
    local.get $2
    call $~lib/string/String.__eq
    if
     local.get $0
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     local.set $4
    else
     local.get $3
     local.get $5
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#push
     drop
    end
    local.get $5
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $examples/markdown-parser/assembly/parser/parser/getTokensAsString (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1264
  call $~lib/rt/pure/__retain
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
    local.tee $3
    i32.load offset=8
    call $~lib/string/String.__concat
    local.tee $4
    local.tee $5
    local.get $1
    local.tee $6
    i32.ne
    if
     local.get $5
     call $~lib/rt/pure/__retain
     drop
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $5
    local.set $1
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/number/decimalCount32 (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 59 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 2528
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.eqz
    br_if $break|0
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
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    local.get $3
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
    br $continue|0
   end
   unreachable
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
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
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 2088
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  local.set $6
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 62 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i32>
 )
 (func $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType (; 63 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
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
 (func $examples/markdown-parser/assembly/parser/parser/addAstNode (; 64 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
  local.set $3
  local.get $1
  local.get $2
  call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
  local.set $4
  local.get $4
  i32.load offset=4
  i32.const 272
  call $~lib/string/String.__eq
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.NEWLINE
   local.tee $6
   local.get $5
   i32.load
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store
   local.get $3
   local.tee $6
   local.get $4
   i32.load offset=8
   local.tee $5
   local.get $6
   i32.load offset=4
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $4
  i32.load offset=4
  i32.const 304
  call $~lib/string/String.__eq
  if
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.WHITESPACE
   local.tee $6
   local.get $5
   i32.load
   local.tee $5
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store
   local.get $3
   local.tee $6
   local.get $4
   i32.load offset=8
   local.tee $5
   local.get $6
   i32.load offset=4
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $4
  i32.load offset=4
  i32.const 344
  call $~lib/string/String.__eq
  if
   i32.const 0
   local.set $5
   i32.const 1
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     local.get $5
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
      local.get $5
      i32.add
      i32.const 1
      i32.add
      call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
      local.tee $7
      i32.load offset=4
      i32.const 344
      i32.eq
      local.set $8
      local.get $7
      call $~lib/rt/pure/__release
      local.get $8
     else
      i32.const 0
     end
     i32.eqz
     br_if $break|0
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
   local.get $1
   local.get $2
   local.get $5
   i32.add
   i32.const 1
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $7
   i32.load offset=4
   i32.const 304
   i32.eq
   if
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    local.get $2
    local.get $5
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
    local.tee $11
    i32.ne
    if
     local.get $12
     call $~lib/rt/pure/__retain
     drop
     local.get $11
     call $~lib/rt/pure/__release
    end
    local.get $12
    i32.store
    local.get $3
    local.tee $12
    local.get $6
    call $~lib/number/I32#toString
    local.set $11
    local.get $12
    i32.load offset=4
    call $~lib/rt/pure/__release
    local.get $11
    i32.store offset=4
    local.get $5
    local.get $10
    i32.add
    local.set $5
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
    local.set $11
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
    local.get $7
    call $~lib/rt/pure/__release
    local.get $11
    return
   end
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.load offset=4
  i32.const 376
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.const 376
   i32.const 272
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ITALICS
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $7
    local.get $7
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $6
    local.get $7
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $5
    local.get $3
    local.tee $10
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ITALICS
    local.tee $12
    local.get $10
    i32.load
    local.tee $10
    i32.ne
    if
     local.get $12
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $12
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
    local.set $12
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
    local.get $12
    return
   end
  end
  local.get $4
  i32.load offset=4
  i32.const 408
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.const 408
   i32.const 272
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BOLD
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $5
    local.get $5
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $6
    local.get $5
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $7
    local.get $3
    local.tee $12
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BOLD
    local.tee $11
    local.get $12
    i32.load
    local.tee $12
    i32.ne
    if
     local.get $11
     call $~lib/rt/pure/__retain
     drop
     local.get $12
     call $~lib/rt/pure/__release
    end
    local.get $11
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
  i32.const 432
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.const 432
   i32.const 272
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.STRIKETHROUGH
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $7
    local.get $7
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $6
    local.get $7
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $5
    local.get $3
    local.tee $11
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.STRIKETHROUGH
    local.tee $8
    local.get $11
    i32.load
    local.tee $11
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
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
    local.set $8
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
    local.get $8
    return
   end
  end
  local.get $4
  i32.load offset=4
  i32.const 480
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i32.load offset=4
   i32.const 536
   call $~lib/string/String.__eq
  end
  if
   i32.const 1264
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $4
   i32.load offset=4
   i32.const 480
   call $~lib/string/String.__eq
   if
    local.get $3
    local.tee $6
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.UNORDERED_LIST
    local.tee $9
    local.get $6
    i32.load
    local.tee $6
    i32.ne
    if
     local.get $9
     call $~lib/rt/pure/__retain
     drop
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $9
    i32.store
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.UNORDERED_LIST_ITEM
    local.tee $10
    local.get $5
    local.tee $9
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $10
    local.set $5
   else
    local.get $3
    local.tee $10
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.ORDERED_LIST
    local.tee $12
    local.get $10
    i32.load
    local.tee $10
    i32.ne
    if
     local.get $12
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $12
    i32.store
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.ORDERED_LIST_ITEM
    local.tee $11
    local.get $5
    local.tee $12
    i32.ne
    if
     local.get $11
     call $~lib/rt/pure/__retain
     drop
     local.get $12
     call $~lib/rt/pure/__release
    end
    local.get $11
    local.set $5
   end
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $11
   i32.const 0
   local.set $12
   local.get $2
   local.set $10
   block $break|1
    loop $continue|1
     local.get $10
     local.get $12
     i32.add
     local.get $1
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     i32.lt_s
     if (result i32)
      local.get $1
      local.get $10
      local.get $12
      i32.add
      call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
      local.tee $9
      i32.load offset=4
      local.get $5
      call $~lib/string/String.__eq
      local.set $6
      local.get $9
      call $~lib/rt/pure/__release
      local.get $6
     else
      i32.const 0
     end
     i32.eqz
     br_if $break|1
     local.get $11
     local.get $12
     i32.add
     local.set $11
     local.get $10
     local.get $12
     i32.add
     local.set $10
     call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
     local.set $9
     local.get $9
     local.tee $6
     global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LIST_ITEM
     local.tee $8
     local.get $6
     i32.load
     local.tee $6
     i32.ne
     if
      local.get $8
      call $~lib/rt/pure/__retain
      drop
      local.get $6
      call $~lib/rt/pure/__release
     end
     local.get $8
     i32.store
     local.get $1
     local.get $10
     i32.const 1
     i32.add
     global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
     call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
     local.set $8
     local.get $8
     call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
     local.set $6
     local.get $8
     call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
     local.set $7
     local.get $8
     local.get $9
     i32.load offset=8
     call $examples/markdown-parser/assembly/parser/parser/addTokensToAst
     local.get $3
     i32.load offset=8
     local.get $9
     call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
     drop
     local.get $7
     i32.const 2
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.add
     local.set $11
     local.get $10
     local.get $13
     i32.add
     local.set $10
     i32.const 0
     local.set $12
     block $break|2
      loop $continue|2
       local.get $10
       local.get $12
       i32.add
       local.get $1
       call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
       i32.lt_s
       if (result i32)
        local.get $1
        local.get $10
        local.get $12
        i32.add
        call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
        local.tee $14
        i32.load offset=4
        i32.const 304
        call $~lib/string/String.__eq
        local.set $15
        local.get $14
        call $~lib/rt/pure/__release
        local.get $15
       else
        i32.const 0
       end
       i32.eqz
       br_if $break|2
       local.get $12
       i32.const 1
       i32.add
       local.set $12
       br $continue|2
      end
      unreachable
     end
     local.get $9
     call $~lib/rt/pure/__release
     local.get $8
     call $~lib/rt/pure/__release
     local.get $6
     call $~lib/rt/pure/__release
     br $continue|1
    end
    unreachable
   end
   local.get $11
   local.set $13
   local.get $5
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
  local.get $4
  i32.load offset=4
  i32.const 584
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
   local.set $12
   local.get $10
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $11
   call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
   local.set $5
   local.get $5
   local.tee $13
   i32.const 2560
   local.tee $15
   local.get $13
   i32.load
   local.tee $13
   i32.ne
   if
    local.get $15
    call $~lib/rt/pure/__retain
    drop
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $15
   i32.store
   local.get $5
   local.tee $15
   local.get $12
   local.tee $14
   local.get $15
   i32.load offset=4
   local.tee $15
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    drop
    local.get $15
    call $~lib/rt/pure/__release
   end
   local.get $14
   i32.store offset=4
   local.get $1
   local.get $2
   local.get $11
   i32.add
   i32.const 2
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $14
   i32.load offset=4
   i32.const 704
   call $~lib/string/String.__eq
   if
    local.get $1
    local.get $2
    local.get $11
    i32.add
    i32.const 3
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $15
    local.get $15
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $13
    local.get $15
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $7
    local.get $3
    local.tee $6
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.IMAGE
    local.tee $9
    local.get $6
    i32.load
    local.tee $6
    i32.ne
    if
     local.get $9
     call $~lib/rt/pure/__retain
     drop
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $9
    i32.store
    local.get $3
    local.tee $9
    local.get $13
    local.tee $8
    local.get $9
    i32.load offset=4
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $5
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $11
    local.get $7
    i32.add
    i32.const 4
    i32.add
    local.set $8
    local.get $15
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
    local.get $5
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $8
    return
   end
   local.get $10
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.load offset=4
  i32.const 624
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.BRACKET_END
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $14
   local.get $14
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $5
   local.get $14
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $11
   call $examples/markdown-parser/assembly/parser/parser/getNewAstNode
   local.set $12
   local.get $12
   local.tee $10
   i32.const 2584
   local.tee $6
   local.get $10
   i32.load
   local.tee $10
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $10
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store
   local.get $12
   local.tee $6
   local.get $5
   local.tee $9
   local.get $6
   i32.load offset=4
   local.tee $6
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $9
   i32.store offset=4
   local.get $1
   local.get $2
   local.get $11
   i32.add
   i32.const 2
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $9
   i32.load offset=4
   i32.const 704
   call $~lib/string/String.__eq
   if
    local.get $1
    local.get $2
    local.get $11
    i32.add
    i32.const 3
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.PAREN_END
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $6
    local.get $6
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $10
    local.get $6
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $7
    local.get $3
    local.tee $13
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.LINK
    local.tee $8
    local.get $13
    i32.load
    local.tee $13
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $13
     call $~lib/rt/pure/__release
    end
    local.get $8
    i32.store
    local.get $3
    local.tee $8
    local.get $10
    local.tee $15
    local.get $8
    i32.load offset=4
    local.tee $8
    i32.ne
    if
     local.get $15
     call $~lib/rt/pure/__retain
     drop
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $15
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $12
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $11
    local.get $7
    i32.add
    i32.const 4
    i32.add
    local.set $15
    local.get $6
    call $~lib/rt/pure/__release
    local.get $10
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
    local.get $9
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $15
    return
   end
   local.get $14
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.load offset=4
  i32.const 776
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.NEWLINE
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $9
   local.get $9
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $12
   local.get $9
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $11
   local.get $3
   local.tee $5
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.BLOCK_QUOTE
   local.tee $13
   local.get $5
   i32.load
   local.tee $5
   i32.ne
   if
    local.get $13
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $13
   i32.store
   local.get $3
   local.tee $13
   local.get $12
   local.tee $8
   local.get $13
   i32.load offset=4
   local.tee $13
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $8
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   local.get $11
   i32.const 1
   i32.add
   local.set $8
   local.get $9
   call $~lib/rt/pure/__release
   local.get $12
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
  i32.const 816
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.CODE_BLOCK
   call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
   local.set $11
   local.get $11
   call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
   local.set $12
   local.get $11
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
   local.set $9
   local.get $3
   local.tee $8
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CODE_BLOCK
   local.tee $15
   local.get $8
   i32.load
   local.tee $8
   i32.ne
   if
    local.get $15
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $15
   i32.store
   local.get $3
   local.tee $15
   local.get $12
   local.tee $6
   local.get $15
   i32.load offset=4
   local.tee $15
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $15
    call $~lib/rt/pure/__release
   end
   local.get $6
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   local.get $9
   i32.const 1
   i32.add
   local.set $6
   local.get $11
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $4
  i32.load offset=4
  i32.const 856
  call $~lib/string/String.__eq
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.const 856
   i32.const 272
   call $examples/markdown-parser/assembly/parser/parser/checkIfTypeIsFoundBeforeOtherType
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.add
    global.get $examples/markdown-parser/assembly/tokenizer/token-type/TokenType.INLINE_CODE
    call $examples/markdown-parser/assembly/parser/parser/getAllTokensUntilTokenReached
    local.set $9
    local.get $9
    call $examples/markdown-parser/assembly/parser/parser/getTokensAsString
    local.set $12
    local.get $9
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    local.set $11
    local.get $3
    local.tee $6
    global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.INLINE_CODE
    local.tee $10
    local.get $6
    i32.load
    local.tee $6
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     drop
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $10
    i32.store
    local.get $3
    local.tee $10
    local.get $12
    local.tee $7
    local.get $10
    i32.load offset=4
    local.tee $10
    i32.ne
    if
     local.get $7
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $7
    i32.store offset=4
    local.get $0
    local.get $3
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
    drop
    local.get $11
    i32.const 1
    i32.add
    local.set $7
    local.get $9
    call $~lib/rt/pure/__release
    local.get $12
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
    return
   end
  end
  local.get $4
  i32.load offset=4
  i32.const 896
  call $~lib/string/String.__eq
  if (result i32)
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__get
   local.tee $11
   i32.load offset=4
   i32.const 272
   call $~lib/string/String.__eq
   local.set $12
   local.get $11
   call $~lib/rt/pure/__release
   local.get $12
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $11
   global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.HORIZONTAL_LINE
   local.tee $14
   local.get $11
   i32.load
   local.tee $11
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    drop
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $14
   i32.store
   local.get $0
   local.get $3
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
   drop
   i32.const 0
   local.set $14
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $14
   return
  end
  local.get $3
  local.tee $14
  global.get $examples/markdown-parser/assembly/parser/ast-node-type/AstNodeType.CHARACTER
  local.tee $5
  local.get $14
  i32.load
  local.tee $14
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $14
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  local.get $4
  i32.load offset=8
  local.tee $13
  local.get $5
  i32.load offset=4
  local.tee $5
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store offset=4
  local.get $0
  local.get $3
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#push
  drop
  i32.const 0
  local.set $13
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $examples/markdown-parser/assembly/parser/parser/addTokensToAst (; 65 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $0
    local.get $2
    call $examples/markdown-parser/assembly/parser/parser/addAstNode
    local.set $3
    local.get $2
    local.get $3
    i32.add
    local.set $2
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $examples/markdown-parser/assembly/parser/parser/markdownTokenParser (; 66 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
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
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#get:length (; 67 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__unchecked_get (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get (; 69 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 176
   i32.const 1304
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1976
   i32.const 1304
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlStringForAstNode (; 70 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 1264
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load
  i32.const 272
  call $~lib/string/String.__eq
  if
   i32.const 2624
   local.tee $4
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $5
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
   return
  end
  local.get $0
  i32.load
  i32.const 344
  call $~lib/string/String.__eq
  if
   i32.const 2656
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $4
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2680
   local.get $5
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 1808
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $8
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
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
    drop
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $10
   local.set $3
   local.get $3
   i32.const 2704
   local.get $5
   call $~lib/string/String.__concat
   local.tee $10
   i32.const 1808
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
    drop
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
  i32.const 376
  call $~lib/string/String.__eq
  if
   i32.const 2728
   local.tee $14
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    drop
    local.get $12
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $13
   local.set $3
   local.get $3
   i32.const 2752
   call $~lib/string/String.__concat
   local.tee $13
   local.tee $4
   local.get $3
   local.tee $11
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 408
  call $~lib/string/String.__eq
  if
   i32.const 2776
   local.tee $5
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $13
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $3
   local.get $3
   i32.const 2800
   call $~lib/string/String.__concat
   local.tee $6
   local.tee $7
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 432
  call $~lib/string/String.__eq
  if
   i32.const 2824
   local.tee $8
   local.get $3
   local.tee $6
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $6
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
   local.tee $6
   local.tee $9
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    drop
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.set $3
   local.get $3
   i32.const 2848
   call $~lib/string/String.__concat
   local.tee $9
   local.tee $10
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $10
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 1088
  call $~lib/string/String.__eq
  if
   i32.const 2872
   local.tee $11
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $11
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $4
   local.set $3
   local.get $3
   i32.const 2896
   call $~lib/string/String.__concat
   local.tee $4
   local.tee $14
   local.get $3
   local.tee $6
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 1136
  call $~lib/string/String.__eq
  if
   i32.const 2928
   local.tee $12
   local.get $3
   local.tee $4
   i32.ne
   if
    local.get $12
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.set $3
   local.get $3
   i32.const 2952
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $5
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 1176
  call $~lib/string/String.__eq
  if
   i32.const 2984
   local.tee $13
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $13
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $10
   local.set $3
   local.get $3
   i32.const 3008
   call $~lib/string/String.__concat
   local.tee $10
   local.tee $8
   local.get $3
   local.tee $4
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 1208
  call $~lib/string/String.__eq
  if
   i32.const 3040
   local.tee $6
   local.get $3
   local.tee $10
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $10
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $3
   local.get $3
   i32.const 3072
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3104
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
    drop
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $14
   local.set $3
   local.get $3
   i32.const 3128
   local.get $0
   i32.load offset=8
   i32.const 0
   call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
   local.tee $14
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $13
   i32.const 3104
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
    drop
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $11
   local.set $3
   local.get $3
   i32.const 3160
   call $~lib/string/String.__concat
   local.tee $11
   local.tee $9
   local.get $3
   local.tee $12
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 1240
  call $~lib/string/String.__eq
  if
   i32.const 3184
   local.tee $5
   local.get $3
   local.tee $11
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $5
   local.set $3
   local.get $3
   i32.const 3208
   local.get $0
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3240
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
    drop
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
    drop
    local.get $13
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.set $3
   local.get $3
   i32.const 3264
   call $~lib/string/String.__concat
   local.tee $9
   local.tee $6
   local.get $3
   local.tee $13
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 776
  call $~lib/string/String.__eq
  if
   i32.const 3288
   local.tee $10
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $10
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.set $3
   local.get $3
   i32.const 3312
   call $~lib/string/String.__concat
   local.tee $7
   local.tee $14
   local.get $3
   local.tee $9
   i32.ne
   if
    local.get $14
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 816
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   i32.const 856
   call $~lib/string/String.__eq
  end
  if
   i32.const 3336
   local.tee $13
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $13
    call $~lib/rt/pure/__retain
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
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
    drop
    local.get $7
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $3
   local.get $3
   i32.const 3368
   call $~lib/string/String.__concat
   local.tee $6
   local.tee $5
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
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
  i32.const 896
  call $~lib/string/String.__eq
  if
   i32.const 3400
   local.tee $11
   local.get $3
   local.tee $6
   i32.ne
   if
    local.get $11
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
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
   drop
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
 (func $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlString (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1264
  call $~lib/rt/pure/__retain
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__get
    local.tee $3
    local.get $0
    local.get $2
    call $examples/markdown-parser/assembly/code-generator/code-generator/generateHtmlStringForAstNode
    local.tee $4
    call $~lib/string/String.__concat
    local.tee $5
    local.tee $6
    local.get $1
    local.tee $7
    i32.ne
    if
     local.get $6
     call $~lib/rt/pure/__retain
     drop
     local.get $7
     call $~lib/rt/pure/__release
    end
    local.get $6
    local.set $1
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $examples/markdown-parser/assembly/index/convertMarkdownToHTML (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
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
 (func $start (; 73 ;) (type $FUNCSIG$v)
  call $start:examples/markdown-parser/assembly/index
 )
 (func $~lib/rt/pure/__visit (; 74 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
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
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 128
        i32.const 75
        i32.const 17
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
     i32.const -268435456
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 128
      i32.const 86
      i32.const 6
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
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/tokenizer/token/Token>#__visit_impl (; 75 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<examples/markdown-parser/assembly/parser/ast/AstNode>#__visit_impl (; 76 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 77 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (; 78 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$17
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
           br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$13 $switch$1$case$14 $switch$1$case$15 $switch$1$case$16 $switch$1$case$17 $switch$1$default
          end
          return
         end
         br $block$4$break
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
       br $block$4$break
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
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<u32>#__visit_impl
    br $block$4$break
   end
   unreachable
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
 )
 (func $null (; 79 ;) (type $FUNCSIG$v)
 )
)
