cask "agent-scope" do
  version "0.3.2"
  sha256 "5dde8798b3e9217e1b8dae568d8768b529848398025b2110871e3e4135384f38"

  # GitHub Release assets replace spaces with dots, so the published name is Agent.Scope_…
  url "https://github.com/NejaTive/agent-scope/releases/download/v#{version}/Agent.Scope_#{version}_aarch64.dmg"
  name "Agent Scope"
  desc "Read-only viewer for Claude Code and Cursor configs"
  homepage "https://github.com/NejaTive/agent-scope"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Agent Scope.app"

  zap trash: [
    "~/Library/Application Support/com.agentscope.desktop",
    "~/Library/Caches/com.agentscope.desktop",
    "~/Library/Preferences/com.agentscope.desktop.plist",
    "~/Library/Saved Application State/com.agentscope.desktop.savedState",
  ]
end
