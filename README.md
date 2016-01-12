memdump
=======

`memdump` is a (ridiculously simple) tool for dumping Linux I/O memory from
`/dev/mem`, similar to `devmem2`. While `devmem2` is excellent at reading and
poking at registers, it's not capable of dumping out a whole region of memory
(a Boot ROM, for example). `memdump` is designed for just that. It's not able
to write to memory or nicely format register values like `devmem2` can, though,
so keep both tools handy.

Building
--------
Download. Run `make`. That's all.

Limitations
-----------
Obviously, `memdump` will only work with kernels that have `/dev/mem` enabled.
Although it's great for dumping out I/O memory, `/dev/mem` can have problems
with memory that's otherwise in use by the kernel, so expect trouble if you try
to use this tool to dump process memory. Newer kernels are configured by
default to explicitly forbid `/dev/mem` from accessing process memory, and
you'll get an `Operation not permitted` message if you try.
