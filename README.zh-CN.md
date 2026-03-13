# OpenClaw Starter（公开版）

这是一个可复用的 OpenClaw 公共起步仓库。

这个仓库只包含**公开层**：
- 可复用架构
- workspace 模板
- 示例配置
- 初始化脚本
- 面向安全复用的文档

**不包含**以下内容：
- 个人记忆
- 私有 token / API key
- 真实聊天绑定
- 个人设备信息
- 本地运行态数据

## 快速开始

```bash
git clone https://github.com/fufuandfoufou/openclaw-public-starter.git
cd openclaw-starter-public
./bootstrap.sh
```

## 一键安装命令

```bash
curl -fsSL https://raw.githubusercontent.com/fufuandfoufou/openclaw-public-starter/main/install.sh | bash
```

## 你需要自己填写的内容
- `.env`
- 你自己的 `openclaw.json`
- 你自己的 channel bindings
- 你自己的私有 workspace 笔记

## 仓库结构

```text
openclaw-starter-public/
├─ README.md
├─ README.zh-CN.md
├─ LICENSE
├─ CONTRIBUTING.md
├─ .env.example
├─ openclaw.example.json
├─ bootstrap.sh
├─ install.sh
├─ Makefile
├─ docs/
├─ scripts/
├─ agents/
├─ workspaces/
└─ skills/
```

## 内置文档
- `docs/architecture.md`
- `docs/privacy-model.md`
- `docs/release-checklist.md`

## 内置脚本
- `bootstrap.sh` —— 初始化本地模板文件
- `install.sh` —— clone + bootstrap 辅助脚本
- `scripts/validate-config.sh` —— 基础配置检查
- `scripts/doctor.sh` —— 简单的敏感信息模式扫描

## 隐私模型
这个仓库的定位是**公开模板**，不是你当前 OpenClaw 实例的完整导出。

以下内容必须保持私有：
- 所有 token 和 API key
- user / chat id
- memory 文件
- 日志与运行状态
- 个人笔记与设备信息

详见 `docs/privacy-model.md`。

## 推荐使用流程
1. 克隆这个公开仓库
2. 复制 `.env.example` 为 `.env`
3. 复制 `openclaw.example.json` 作为本地配置起点
4. 在本地填写你自己的 secrets
5. 基于模板定制 agents 和 workspace
6. 公开前先跑检查

## 发布前检查
公开推送前先执行：

```bash
make validate
make doctor
```

然后再看 `docs/release-checklist.md`。

## License
MIT
