# MappableObjectGenerator

Mac command line util which generates classes which are mappable to JSON/XML messages based on JSON Schema/XSD definitions.

# Usage

`> MappableObjectGenerator [OPTIONS] [OUTPUT_DIRECTORY]`

This generator uses the BMCommons framework to parse an XSD or JSON Schema and generate objects from it using customizable generation templates (based on a fork of MGTemplateEngine). These objects can automatically be parsed from XML or JSON messages that correspond to the relevant schemas.

There is both support for mapping using BMRestKit of the BMCommons framework (ObjC) and the Swift 4 native Codable implementation (doesn't require a run-time dependency on BMCommons).
The included code generation templates are a starting point for your own implementation but may be tweaked as necessary.

See the included example schemas, generated output and unit test for reference.

# Options

`-n/--namespace-mappings-file <FILE>`

Optional plist file which is used to determine the class name for the generated mappings. 

The format should be { "NAMESPACE1": { "prefix": "CLASS_NAME_PREFIX1", "module": "CLASS_MODULE1" },
		       "NAMESPACE2": { "prefix": "CLASS_NAME_PREFIX2", "module": "CLASS_MODULE2" }

This way it is possible to specify a unique prefix and/or module (for Swift mode) for every namespace. 
If no entry is found for the namespace and empty prefix is assumed and the default module is assumed (for Swift mode).
																				
`-p/--prefix <PREFIX>` 

Global prefix to prepend to every classname on top of the namespace specific prefix (default is empty string).

`-s/--suffix <SUFFIX>`

Global suffix to append to every classname (default is empty string).

`-h/--header-template-generated <FILE>`

In case of ObjC (non-Swift mode): 
The template file to use for the generated header file. The name of the generated file will start with an underscore ('_') and this file should never be modified manually.

`-i/--header-template-custom <FILE>`

In case of ObjC (non-Swift mode): 
The template file to use for the custom generated header file. This file contains a starting definition for a non-underscore class extending from the underscore one and can be modified (will never be generated again after it exists).

`-j/--implementation-template-generated <FILE>`

The template file to use for the generated implementation code. The name of this file will have an underscore ('_') prefix and will be re-generated every time. Do not modify this file manually.

`-k/--implementation-template-custom <FILE>`

The template file for the non-underscore implementation code which is a starting point for customizations. In ObjC mode this class implementation extends from the underscore class implementation. In Swift mode this is optional.

`-x/--schema <FILE>`

A directory containing schema files or a concrete path to a schema file to use for input.

`-r/--remove-old`

Enable this option to remove previously generated files for which no definition exists anymore. This will only remove files starting with an underscore ('_') from the target directory.

`-m/--json-mode`

Enable this option for JSON schemas. If not enabled XSD schemas are assumed.

`-d/--date-check-enabled`

Enable this to optimize output: only if the schema file has a modification date later than the already generated file it is generated again.

`-t/--swift-mode`

Specify this option to enable Swift mode. Enable this for Swift templates where no headers should be output and the concept of modules exists.

`-f/--default-namespace <NAMESPACE>`

The default namespace if no explicit namespace was found for a definition.

`-e/--default-module <MODULE>`

The default module name for generated classes in SwiftMode.

# JSON Schema type information

The "title" property is used as a convention to extract inheritance information about the objects in the schema. Reverse style domain naming is used, just like java. The namespace mappings plist is used to map packages to class prefixes. 

An example: 

```
{ type: "object", "id": "http//www.somecompany.com/schemas/Foo", "title": "com.somecompany.Foo" }
```

Inheritance information may be supplied with a colon:

```
{ type: "object", "id": "http//www.somecompany.com/schemas/Foo", "title": "com.somecompany.Foo:com.somecompany.Bar" }
```

Also generic info can be supplied (example taken from the supplied sample Person.json schema):

```
{ "items": {
                "$ref": "http://www.behindmedia.com/schemas/Image.json",
                "type": "object"
            },
            "title": "[com.behindmedia.Image]",
            "type": "array" 
}
```

See the Schemas directory for a complete example for all supported properties and how the title should be used.

# Limitations

##For JSON Schemas

- JSON Schema version Draft 4 is assumed, newer versions are not (yet) supported. Since Draft 4 is the most commonly supported JSON Schema currently this shouldn't be a problem.
- "$ref" entries must be resolvable within the set of schemas in the directory, ID is mandatory for all these schemas and references are resolved using these IDs.
- The "type" property is mandatory for every schema to identify the concrete type (either primitive, array or object)
- only single type collections are supported, so polymorphism is not supported (yet). There is also not (yet) a standard for polymorphism in both JSON schema and Swift 4 Codable.
- "additionalItems" is not interpreted
- no support for "maxProperties"/"minProperties"
- no support for "patternProperties"
- no support for "additionalProperties"
- no support for "dependencies"
- enum values should all be of the same type
- "allOf" is supported (e.g. to include a parent schema to define an inheritance tree), however: "anyOf", "oneOf" and "not" are not supported.



