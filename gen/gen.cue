package gen

import (
	"github.com/hofstadter-io/hof/schema/gen"
	"github.com/peterhutkins-glydways/task_manager_schema/agent"
)

// This is your reusable generator module
Generator: gen.Generator & {

	//
	// user input fields
	//

	// this is the interface for this generator module
	// typically you enforce schema(s) here
	// Data: _
	// Input: #Input
	System: agent.#SystemDef

	//
	// Internal Fields
	//

	// This is the global input data the templates will see
	// You can reshape and transform the user inputs
	// While we put it under internal, you can expose In
	// or you can omit In and skip having a global context
	In: {
		// fill as needed
		SYSTEM: System
		...
	}

	// required for hof CUE modules to work
	// your users do not set or see this field
	ModuleName: string | *"github.com/peterhutkins-glydways/task_gen"

	// Transformation to pass specific Out values to the templates
	#PassOutAsIn : foo={...} & {
		In: {
			OUT: "Filepath": foo.Filepath
		}
	}

	// The final list of files for hof to generate
	// fill this with file values
	Out: [...gen.#File] & [...#PassOutAsIn] & ListOfFilesToGenerate

	ListOfFilesToGenerate: [...gen.#File] & [
		{
			TemplatePath: "example.txt.template"
			Filepath: "example.txt"
		},
		{
			TemplatePath: "example.txt.template"
			Filepath: "example2.txt"	
		}
	]

	// you can create any intermediate values you need internally

	// open, so your users can build on this
	...
}
