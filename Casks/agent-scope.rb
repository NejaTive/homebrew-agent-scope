cask "agent-scope" do
  version "0.6.1"
  sha256 "ddf7e908278ada1c6ea256a996e45bcacb789eba2cad2bae72b0834ae388c9b1"

  # GitHub Release assets replace spaces with dots, so the published name is Agent.Scope_…
  url "https://github.com/NejaTive/agent-scope/releases/download/v#{version}/Agent.Scope_#{version}_aarch64.dmg"
  name "Agent Scope"
  desc "Desktop app to inspect and manage Claude Code, Cursor, and Codex configs"
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
