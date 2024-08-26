package empty_system

import (
	"github.com/peterhutkins-glydways/task_gen/agents"
)

System : agents.#SystemDef & {
    name: "example_system"
    agents: {
        "agent1": {}
        "longagent2": {
            name: "longAgent2TrueName"
        }
    }
    signals: {
        "signal1": {}
    }
}
