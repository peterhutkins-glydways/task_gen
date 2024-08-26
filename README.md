
An example of a [hof](https://github.com/hofstadter-io/hof) generator, intended to evalate hof for use with [CUE](https://cuelang.org/) schemas to define an embedded system and generate all of the boilerplate code. 

Follows the structure of https://docs.hofstadter.io/the-walkthrough/ 

Interesting directoris: 
- `agents` directory contains the schema for the system
- `templates` directory contains the templates to fill in
- `examples` directory contains an example system generator specfication (`gen.cue`) to generate a system from the system description (`empty_system.cue`)

To run the hof generator and create files in the `./output` directory, run the following command: 
```
hof gen ./examples/empty_system
```

 
