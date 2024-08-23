package agents

// import "path"

import "strings"

#SystemDef: {
    // system_name: string | *path.Base(.)
    name: string
    agents:  [AgentName=string]: #AgentDef & {name: string | *strings.ToCamel(AgentName)}
    signals : [Name=string]: #SignalDef & {name: Name}
}
