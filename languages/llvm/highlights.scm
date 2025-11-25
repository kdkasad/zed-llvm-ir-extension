; highlights.scm adapted from https://github.com/benwilliamgraham/tree-sitter-llvm
; Original work released under MIT license
; Copyright (c) 2022 Benjamin Graham
; Adapted for Zed 2025 Kian Kasad

(type) @type
(type_keyword) @type.builtin

(type [
    (local_var)
    (global_var)
  ] @type)

(argument) @variable

(_ inst_name: _ @keyword.operator)

[
  "catch"
  "filter"
] @keyword.operator

[
  "to"
  "nneg"
  "nuw"
  "nsw"
  "exact"
  "disjoint"
  "unwind"
  "from"
  "cleanup"
  "swifterror"
  "volatile"
  "inbounds"
  "inrange"
] @keyword.control
(icmp_cond) @keyword.control
(fcmp_cond) @keyword.control

(fast_math) @keyword.control

[
  "declare"
  "define"
] @keyword.function
(calling_conv) @keyword.function

[
  "target"
  "triple"
  "datalayout"
  "source_filename"
  "addrspace"
  "blockaddress"
  "align"
  "syncscope"
  "within"
  "uselistorder"
  "uselistorder_bb"
  "module"
  "asm"
  "sideeffect"
  "alignstack"
  "inteldialect"
  "unwind"
  "type"
  "global"
  "constant"
  "externally_initialized"
  "alias"
  "ifunc"
  "section"
  "comdat"
  "thread_local"
  "localdynamic"
  "initialexec"
  "localexec"
  "any"
  "exactmatch"
  "largest"
  "nodeduplicate"
  "samesize"
  "distinct"
  "attributes"
  "vscale"
  "no_cfi"
] @keyword

(linkage_aux) @keyword
(dso_local) @keyword
(visibility) @keyword
(dll_storage_class) @keyword
(unnamed_addr) @keyword
(attribute_name) @keyword

(function_header [
    (linkage)
    (calling_conv)
    (unnamed_addr)
  ] @keyword.function)

(number) @constant.numeric.integer
(comment) @comment
(string) @string
(cstring) @string
(label) @label
(_ inst_name: "ret" @keyword.control.return)
(float) @constant.numeric.float

[
  (local_var)
  (global_var)
] @variable

(_ callee: _ @function)
(function_header name: _ @function)

[
  (struct_value)
  (array_value)
  (vector_value)
] @constructor

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "<"
  ">"
  "<{"
  "}>"
] @punctuation.bracket

[
  ","
  ":"
] @punctuation.delimiter

[
  "="
  "|"
  "x"
  "..."
] @operator

[
  "true"
  "false"
] @constant.builtin.boolean

[
  "undef"
  "poison"
  "null"
  "none"
  "zeroinitializer"
] @constant.builtin

(ERROR) @error

[
  (metadata_ref)
  (metadata_name)
  (attr_ref)
] @attribute
