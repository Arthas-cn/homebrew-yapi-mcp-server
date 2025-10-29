# typed: false
# frozen_string_literal: true

# This file was generated automatically
# DO NOT EDIT MANUALLY - Use scripts/update-homebrew-formula.sh instead

class YapiMcpServer < Formula
  desc "Yapi MCP Server - Swift实现的Yapi MCP工具"
  homepage "https://github.com/Arthas-cn/yapi-mcp-server-releases"
  url "https://github.com/Arthas-cn/yapi-mcp-server-releases/releases/download/v1.0.0/YapiMCPServer-macos.tar.gz"
  sha256 "cee958db0b04b6e8c3bd777828ebf861ddfd572c7df3b162df7bf959a6f49082"
  version "1.0.0"
  
  depends_on :macos
  
  def install
    # 解压后的文件名就是 YapiMCPServer-macos，我们重命名为 yapi-mcp-server
    bin.install "YapiMCPServer-macos" => "yapi-mcp-server"
  end
  
  test do
    # 测试可执行文件是否安装成功
    assert_predicate bin/"yapi-mcp-server", :exist?
    # 测试可执行文件是否有执行权限
    assert_match "usage:", shell_output("#{bin}/yapi-mcp-server --help 2>&1", 1).downcase
  end
end

