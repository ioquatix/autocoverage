# Auto Coverage

> **_NOTE:_** This is now fixed on 3.2.1 and works correctly.

For some reason, Ruby's coverage library doesn't work when the file is loaded from the command line. In the below example, `test2.rb` loads `test.rb`. If you run `test2.rb` with coverage enabled, it will report coverage for `test.rb` but not `test2.rb`. If you run `test.rb` directly, no coverage is reported.

```
samuel@aiko ~/P/i/autocoverage> ruby -r "./autocoverage.rb" test.rb
Hello World
{}
samuel@aiko ~/P/i/autocoverage> ruby -r "./autocoverage.rb" test2.rb
Hello World
{"/home/samuel/Projects/ioquatix/autocoverage/test.rb"=>{:lines=>[1, 1, nil, nil, 1], :branches=>{}, :methods=>{[Object, :main, 1, 0, 3, 3]=>1}}}
```

The same problem affects simplecov.

```
ruby -r "./simplecov.rb" test.rb
... similar results in coverage directory ...
```
