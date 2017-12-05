
# i18ndemo

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with i18ndemo](#setup)
    * [Setup requirements](#setup-requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)

## Description

This is a demo module to be used for testing i18n functionality in modules.

## Setup

### Setup Requirements

This module requires puppetlabs-stdlib.

## Usage
### warning from init.pp
```puppet
class { 'i18ndemo': }
```

### failure from init.pp (includes interpolation)
```puppet
class { 'i18ndemo': 
  param1 => false
}
```

### warning from custom type
```puppet
i18ndemo_type { 'hello': }
```
(/etc is the default and is not a valid directory on OS X so you may need to pass it a custom dir to get rid of the Errorr)

### ArgumentError from custom type
```puppet
i18ndemo_type { '12345': }
```

### warnings from type & provider
```puppet
i18ndemo_type { 'hello': 
  ensure => present,
  dir    => '/some/abs/path',
}
```

### translated string from function
```ruby
happyfuntime('hello')
```

### warning from the face
```bash
$ puppet i18ndemo
```

## Reference

### Classes

#### i18ndemo

##### `filename`

Data type: Stdlib::Absolutepath

Path to file that will be created

Default: '/tmp/i18ndemofile.txt'

##### `param1`

Data type: Boolean

Another param, yay.

Default: `true`

##### `param2`

Data type: String

_Another_ param!

Default: 'param2'

##### `param3`

Data type: String

One more param.

Default: `i18ndemo::params::param3`

#### i18ndemo::params

##### `param3`

Data type: String

Some param.

Default: 'param3'

### Types

#### i18ndemo_type

Demo Ruby type that writes the output of `ls` to a file called "list"

##### `name`

Data type: String

Arbitrary name for the resource

##### `dir`

Data type: String

Path to run `ls` inside of and write file to.

Default: '/etc'

### Functions

#### `happyfuntime(string)`

Accepts and string, then prints it to STDOUT in reverse with some happy, fun decoration.

### Facts

#### i18ndemo_fact

Raises an error for the sake of raising an error message.

### Faces

#### i18ndemo

A test face that prints a warning.

## Limitations

This module is not supported and will receive minimal attention for the foreseeable future. It's also pretty useless :)

