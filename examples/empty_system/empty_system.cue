package empty_system

import (
	"github.com/peterhutkins-glydways/task_manager_schema/agent"
)

System : agent.#SystemDef & {
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
