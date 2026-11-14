# Contributing

## Branches
- `main` holds stable work only. No direct pushes.
- Work on a branch named `<area>/<short-topic>`, e.g. `ai/replay-harness`, `docs/v-cycle`.
- Areas: `ai`, `embedded`, `robotics`, `security`, `docs`, `integration`.

## Flow
1. Pick an Issue from the board and move it to **In Progress**.
2. Create your branch, commit small and often.
3. Open a Pull Request that says `Closes #<issue>`.
4. One reviewer (same team or the Deputy Lead) approves. Then merge and delete the branch.
5. The Issue moves to **Done** when the PR is merged.

## Commit messages
`<area>: <what changed>` - e.g. `security: add replay counter check`.

## Rules
- Never commit secrets, keys, tokens or `.env` files.
- Shared interfaces live in `integration/interfaces/`. Changing one needs a PR reviewed by every team that uses it.
- Every merged feature needs a test or a written test note (see the V-Cycle in `docs/vcycle/`).
- Decisions that change scope, architecture or tools are logged in `docs/decisions/`.

## Kanban columns
Backlog, To Do, In Progress, Review, Done.
