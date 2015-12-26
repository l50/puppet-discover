discover
===================
      
      
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with discover](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with discover](#beginning-with-discover)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Used to install the Discover tool on Kali.

## Module Description

This module will install Discover on a Kali machine. This may be useful for Systems Administrators or
Penetration Testers.

## Setup

### Setup Requirements

The git puppet module is required for this module to work
properly. Please add it to your Puppetfile like so:

```
mod 'puppetlabs/git'
```

### Beginning with discover

Simply specify the directory you wish Discover to be installed to as a parameter and run the module as you would any other.

## Usage
Install the discover tool to /opt/discover:
```
class { 'discover':
  install_location => '/opt/discover',
}
```

## Limitations

This has been built to work with Kali only.

## Development

Feel free to fork this up and issue a pull request if you want to improve on the
work that has already been done.

## Release Notes/Contributors/Etc

Jayson Grace (l50) <jayson.e.grace@gmail.com>
