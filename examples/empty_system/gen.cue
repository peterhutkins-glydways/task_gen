package empty_system

import (
	"github.com/peterhutkins-glydways/task_gen/gen"
)

// A runnable generator (@gen(<name>))
Generator: gen.Generator & {
	@gen(foo)

	Outdir: "./output"
	// ModuleName: "hof.io/docs/example"

	// Needed because we are using the generator from within it's directory
	// Normally, users will not see or set this field
	ModuleName: ""

	// We write the details in a separate file 
	"System": System
}