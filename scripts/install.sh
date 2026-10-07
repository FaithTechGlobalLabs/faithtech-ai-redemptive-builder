#!/usr/bin/env bash
set -euo pipefail

# FaithTech Redemptive Builder — Bash/Zsh installer

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGIN_DIR="$SCRIPT_DIR/../plugins/faithtech-redemptive"

echo ""
echo "  FaithTech Redemptive Builder - Installer"
echo "  =========================================="
echo ""

# --- Step 1: Check prerequisites ---
echo "[1/4] Checking prerequisites..."

if ! command -v claude &> /dev/null; then
    echo "  ERROR: Claude Code CLI not found."
    echo "  Install: npm install -g @anthropic-ai/claude-code"
    echo "  Then: claude auth"
    exit 1
fi
echo "  ✅ Claude Code CLI found."

# --- Step 2: Show install instructions ---
echo "[2/4] Plugin location: $PLUGIN_DIR"
echo ""
echo "  To use with Claude Code:"
echo "    claude --plugin-dir \"$PLUGIN_DIR\""
echo ""
echo "  For permanent install (publish to GitHub first):"
echo "    claude /plugin marketplace add <your-github-url>"
echo "    claude /plugin install faithtech-redemptive"
echo ""

# --- Step 3: Add shell function ---
echo "[3/4] Adding helper function to shell profile..."

SHELL_RC=""
if [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
    SHELL_RC="$HOME/.bashrc"
fi

FUNC_BLOCK="
# === FaithTech Redemptive Builder ===
faithtech-new() {
    local name=\"\${1:?Usage: faithtech-new <project-name>}\"
    local plugin=\"$PLUGIN_DIR\"

    if [ -d \"\$name\" ]; then
        echo \"Directory '\$name' already exists.\"; return 1
    fi

    mkdir -p \"\$name\"/{docs/{0_prepare,0_onboard,1_discover,2_discern,3_develop/sprint_plans,4_demonstrate},src,tests,.learnings,.faithtech}
    cd \"\$name\"

    echo '{\"project_name\":\"'\$name'\",\"phase\":0,\"step\":\"0.1\"}' > .faithtech/state.json
    git init -q 2>/dev/null || true

    echo \"\"
    echo \"  Project '\$name' created.\"
    echo \"  Start: claude --plugin-dir \\\"\$plugin\\\"\"
    echo \"  Then:  /faithtech-redemptive:start\"
    echo \"\"
}
# === End FaithTech ===
"

if [ -n "$SHELL_RC" ]; then
    if grep -q "FaithTech Redemptive Builder" "$SHELL_RC" 2>/dev/null; then
        echo "  Shell profile already has FaithTech function. Skipping."
    else
        echo "$FUNC_BLOCK" >> "$SHELL_RC"
        echo "  ✅ Added faithtech-new to $SHELL_RC"
    fi
else
    echo "  Could not find .zshrc or .bashrc. Add manually:"
    echo "$FUNC_BLOCK"
fi

# --- Step 4: Done ---
echo ""
echo "[4/4] Installation complete!"
echo ""
echo "  Reload: source $SHELL_RC"
echo "  Create: faithtech-new kalima-app"
echo "  Start:  claude --plugin-dir \"$PLUGIN_DIR\""
echo "          /faithtech-redemptive:start"
echo ""
