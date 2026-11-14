#!/usr/bin/env bash
# Usage: ./scripts/setup_github.sh <org> [repo] [private|public]
# Needs: git, GitHub CLI (gh) logged in with: gh auth login -s project,repo
# The organization itself must be created in the GitHub web UI first.
set -uo pipefail
ORG="${1:?org name required}"; REPO="${2:-sentro}"; VIS="${3:-private}"

[ -d .git ] || git init -b main
git add . && git commit -m "docs: initial monorepo structure" || true
gh repo create "$ORG/$REPO" "--$VIS" --source=. --remote=origin --push

for l in ai embedded robotics security docs integration; do
  gh label create "$l" --repo "$ORG/$REPO" --force || true
done

gh project create --owner "$ORG" --title "SENTRO Board" || true

gh api -X PUT "repos/$ORG/$REPO/branches/main/protection" --input - <<JSON || \
  echo "WARNING: branch protection failed. Private repos in free orgs need a paid plan or GitHub Education; or make the repo public."
{
  "required_status_checks": null,
  "enforce_admins": false,
  "required_pull_request_reviews": { "required_approving_review_count": 1 },
  "restrictions": null
}
JSON

echo "Done. In the Project board, set Status options to: Backlog, To Do, In Progress, Review, Done."
