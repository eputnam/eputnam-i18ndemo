
# i18ndemo

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with i18ndemo](#setup)
    * [Setup requirements](#setup-requirements)
    * [Getting Started with i18ndemo](#getting-started-with-i18ndemo)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)

## Description

This is a demo module to be used for testing i18n functionality in modules.

## Setup

### Setup Requirements

This module requires puppetlabs-stdlib.

## Usage

This section is where you describe how to customize, configure, and do the fancy stuff with your module here. It's especially helpful if you include usage examples and code samples for doing things with your module.

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

## Limitations

This module is not supported and will receive minimal attention for the foreseeable future. It's also pretty useless :)

