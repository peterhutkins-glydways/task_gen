package task_gen

import (
	"github.com/peterhutkins-glydways/task_gen/gen"
)

// This is example usage of your generator
TaskGen: gen.Generator & {
	@gen(task_gen)

	// inputs to the generator
	Data: {...}
	Outdir: "./out/"

	// File globs to watch and trigger regen when changed
	// Normally, a user would set this to their designs / datamodel
	WatchFull: [...string]
	// This is helpful when authoring generator modules
	WatchFast: [...string]

	// required by examples inside the same module
	// your users do not set or see this field
	ModuleName: ""
}
