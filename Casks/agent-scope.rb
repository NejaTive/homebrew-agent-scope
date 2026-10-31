cask "agent-scope" do
  version "0.3.1"
  sha256 "d36930202290d274144ee4b683780675ac10a542812a34bd006bdcbb19b0a27e"

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
