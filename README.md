# Pandoc Flow

![Pandoc Flow Picture](https://raw.githubusercontent.com/corvis/pandoc-flow/master/docs/assets/cover-picture.png "Pandoc Flow image")

Pandoc-Flow seamlessly extends [Pandoc](https://pandoc.org/) with pre- and post- processing capabilities. It enables 
user to use Jinja2 template engine and incorporate own data processing logic into document build process. 

The configuration for Pandoc-Flow is written in the same yaml file as pandoc config. Processing logic is defined by 
pipeline configuration. Each pipeline element is a processing step which consumes input files and\or output from 
previous steps and produces processed output. The output of the last pipeline element is considered as the final result.

Example 1: Minimal configuration
```yaml
TBD
```

# Development environment

Ensure you have pre-requisites installed:

* Python 3.7+
* Make

Run `make setup` - This will create VirtualEnv for project and install required dev. dependencies Before making any
commit make use to run `make` to apply formatter, run linter and update copyright.

# Credits

* Dmitry Berezovsky, author
* [Strome](https://github.com/corvis/strome)
* [CLI Rack](https://github.com/corvis/cli-rack)

# Disclaimer

This module is licensed under MIT. This means you are free to use it in commercial projects.

The MIT license clearly explains that there is no warranty for this free software. Please see the included LICENSE file
for details.
