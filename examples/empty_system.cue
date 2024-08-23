package examples

import (
	"github.com/peterhutkins-glydways/task_gen/agents"
)

System : agents.#SystemDef & {
    name: "example_system"
    agents: {
        "agent1": {}
        "longagent2": {
            name: "value"
        }
    }
    signals: {
        "signal1": {}
    }
}
