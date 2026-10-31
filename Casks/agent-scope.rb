cask "agent-scope" do
  version "0.4.0"
  sha256 "1991310381e5aa179eb823fbf84c4acfc3ee7cb00a5a9248ab672fec559acece"

  # GitHub Release assets replace spaces with dots, so the published name is Agent.Scope_…
  url "https://github.com/NejaTive/agent-scope/releases/download/v#{version}/Agent.Scope_#{version}_aarch64.dmg"
  name "Agent Scope"
  desc "Desktop app to inspect and manage Claude Code and Cursor configs"
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
