# SENTRO

**Trust-Aware Autonomous Irrigation System** - graduation project (Faculty of AI, 2026/2027).

Core question: how can an autonomous irrigation system make reliable decisions when its information
(sensors, messages, commands) may be faulty, stale, inconsistent or manipulated?

## Repository layout (monorepo)

| Folder | Owner team | Content |
|---|---|---|
| `docs/` | All | Requirements, V-Cycle, Gantt, decision log, innovation, reports |
| `ai/` | AI | State estimation, trust model, decision policy, workflow service |
| `embedded/` | Embedded / IoT | Swarm nodes, controller, firmware |
| `robotics/` | Robotics | Rover, navigation, digital twin |
| `security/` | Security | Registry, verifier, policy gate, attack tests |
| `integration/` | All | Shared interfaces, schemas, mocks, end-to-end tests |

## Working rules
Read [CONTRIBUTING.md](CONTRIBUTING.md) before your first commit.
Tasks live on the GitHub Project board (Kanban). Every task is an Issue.
