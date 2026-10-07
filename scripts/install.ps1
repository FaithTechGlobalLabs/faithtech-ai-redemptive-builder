<#
.SYNOPSIS
    FaithTech Redemptive Builder — PowerShell installer
.DESCRIPTION
    Installs the FaithTech plugin for Claude Code and adds the
    New-FaithTechProject function to your PowerShell profile.
.EXAMPLE
    .\install.ps1
    New-FaithTechProject my-app
    claude
    # then: /faithtech-redemptive:start
#>

$ErrorActionPreference = "Stop"
$PluginDir = "$PSScriptRoot\plugins\faithtech-redemptive"

Write-Host ""
Write-Host "  FaithTech Redemptive Builder - Installer" -ForegroundColor Cyan
Write-Host "  ==========================================" -ForegroundColor Cyan
Write-Host ""

# --- Step 1: Check prerequisites ---
Write-Host "[1/4] Checking prerequisites..." -ForegroundColor Yellow

$claude = Get-Command claude -ErrorAction SilentlyContinue
if (-not $claude) {
    Write-Host "  ERROR: Claude Code CLI not found." -ForegroundColor Red
    Write-Host "  Install it: npm install -g @anthropic-ai/claude-code" -ForegroundColor Red
    Write-Host "  Then run: claude auth" -ForegroundColor Red
    exit 1
}
Write-Host "  Claude Code CLI found." -ForegroundColor Green

# --- Step 2: Install plugin to Claude Code ---
Write-Host "[2/4] Installing plugin to Claude Code..." -ForegroundColor Yellow

if (-not (Test-Path $PluginDir)) {
    Write-Host "  ERROR: Plugin directory not found at $PluginDir" -ForegroundColor Red
    Write-Host "  Make sure you're running this from the repo root." -ForegroundColor Red
    exit 1
}

Write-Host "  Plugin located at: $PluginDir" -ForegroundColor Green
Write-Host ""
Write-Host "  To install in Claude Code, run:" -ForegroundColor White
Write-Host "    claude --plugin-dir `"$PluginDir`"" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Or for permanent install, add this repo as a marketplace:" -ForegroundColor White
Write-Host "    claude /plugin marketplace add <your-github-url>" -ForegroundColor Cyan
Write-Host "    claude /plugin install faithtech-redemptive" -ForegroundColor Cyan
Write-Host ""

# --- Step 3: Add helper function to profile ---
Write-Host "[3/4] Adding New-FaithTechProject to PowerShell profile..." -ForegroundColor Yellow

$profileContent = @"

# === FaithTech Redemptive Builder ===
function New-FaithTechProject {
    param(
        [Parameter(Mandatory=`$true, Position=0)]
        [string]`$Name
    )

    `$pluginPath = "$($PluginDir -replace '\\', '\\')"

    if (Test-Path `$Name) {
        Write-Host "Directory '`$Name' already exists." -ForegroundColor Yellow
        return
    }

    New-Item -ItemType Directory -Path `$Name -Force | Out-Null
    Set-Location `$Name

    # Create project directories
    @(
        "docs/0_prepare", "docs/0_onboard",
        "docs/1_discover", "docs/2_discern",
        "docs/3_develop/sprint_plans", "docs/4_demonstrate",
        "src", "tests", ".learnings", ".faithtech"
    ) | ForEach-Object { New-Item -ItemType Directory -Path `$_ -Force | Out-Null }

    # Initialize state
    @{project_name=`$Name; phase=0; step="0.1"} | ConvertTo-Json | Set-Content ".faithtech/state.json"

    git init 2>`$null

    Write-Host ""
    Write-Host "  Project '`$Name' created." -ForegroundColor Green
    Write-Host "  Start with:" -ForegroundColor White
    Write-Host "    claude --plugin-dir `"`$pluginPath`"" -ForegroundColor Cyan
    Write-Host "  Then type:" -ForegroundColor White
    Write-Host "    /faithtech-redemptive:start" -ForegroundColor Cyan
    Write-Host ""
}
# === End FaithTech ===
"@

if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force | Out-Null
}

$existing = Get-Content $PROFILE -Raw -ErrorAction SilentlyContinue
if ($existing -and $existing.Contains("FaithTech Redemptive Builder")) {
    Write-Host "  Profile already contains FaithTech function. Skipping." -ForegroundColor Yellow
} else {
    Add-Content -Path $PROFILE -Value $profileContent
    Write-Host "  Added New-FaithTechProject to $PROFILE" -ForegroundColor Green
}

# --- Step 4: Done ---
Write-Host ""
Write-Host "[4/4] Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "  Reload your profile:" -ForegroundColor White
Write-Host "    . `$PROFILE" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Create your first project:" -ForegroundColor White
Write-Host "    New-FaithTechProject kalima-app" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Start building:" -ForegroundColor White
Write-Host "    claude --plugin-dir `"$PluginDir`"" -ForegroundColor Cyan
Write-Host "    /faithtech-redemptive:start" -ForegroundColor Cyan
Write-Host ""
