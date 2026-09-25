HWMCC'20 Miters
---------------

From the Hardware Model Checking Competition 2020 we have collected 324
sequential model checking problems and for each generated an isomorphic and
an optimized miter.  The isomorphic miters just compares two identical
copies while for the optimized miter one copy went through optimization
with ABC using the `dc2` command.

The CNFs are generated with a new version of `aigtocnf` which detects
XOR and ITE gates in the AIGER circuit and if detected uses a more compact
encoding (4 clauses clauses instead of 9) for each detected gate.
