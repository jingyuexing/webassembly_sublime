(module
  (import "foo" "bar" (func (param f32)))
  (memory (data "hi"))
  (type (func (param i32) (result i32)))
  (start 1)
  (table 0 1 anyfunc)
  (func)
  (func (type 1)
    i32.const 42
    drop)
  (export "e" (func 1)))
(module
  (memory (export "mem") 1)
  (func (export "fill") (param i32 i32 i32 u32)
    local.get 0
    local.get 1
    local.get 2
    memory.fill))