# QLearn-MVP V2.0 🚀

> 基于多智能体的个性化教辅平台 - 用最小而可证的学习科学内核，改变世界的学习方式

## 🌟 项目愿景

QLearn-MVP V2.0 是一个革命性的个性化学习平台，结合了先进的学习科学理论和现代AI技术：

- **🧠 学习科学内核**: BKT贝叶斯知识追踪 + IRT自适应测评 + 教学策略矩阵
- **🤖 多智能体架构**: LangGraph编排的智能教学与评估系统
- **📊 数据驱动**: 实时掌握度追踪和个性化学习路径
- **🎯 自适应学习**: 从困惑类型到精准教学策略的智能匹配

## 🏗️ 架构概览

```
frontend/          # Next.js 前端应用
├── app/           # App Router 页面
├── components/    # React 组件库
└── lib/           # 前端工具库

backend/           # Python 后端服务
├── services/      # 微服务架构
│   ├── bkt/       # 贝叶斯知识追踪服务
│   ├── cat/       # 自适应测评服务
│   ├── orchestrator/ # LangGraph 编排服务
│   └── compliance/   # 合规服务
├── shared/        # 共享数据模型
└── scripts/       # 工具脚本

docs/              # 项目文档
infrastructure/    # 基础设施配置
tests/             # 测试套件
```

## 🚀 快速开始

### 环境要求
- Node.js 18+
- Python 3.11+
- PostgreSQL 14+
- Redis 6+

### 安装依赖
```bash
# 前端依赖
cd frontend && npm install

# 后端依赖
cd backend && pip install -r requirements.txt
```

### 启动开发环境
```bash
# 启动后端服务
cd backend && python -m uvicorn main:app --reload

# 启动前端应用
cd frontend && npm run dev
```

## 📋 核心功能

### 🎓 学习科学内核
- **BKT引擎**: 实时追踪每个知识点的掌握概率和置信度
- **CAT系统**: 2-6题自适应挑战，智能终止判据
- **教学智能体**: 意图分类→策略决策→最小充分讲解

### 🌊 学习流程
1. **冷启动**: 自评→热点探测→IRT初始θ估计
2. **日常学习**: 主观门→补救/挑战→复习调度
3. **自适应路径**: 基于掌握度和置信度的个性化推荐

### 🛡️ 合规与安全
- 年龄门槛判定（轨道A: ≥16岁）
- 数据最小化和删除机制
- 可验证家长同意流程（轨道B预留）

## 📊 技术栈

**前端**
- Next.js 14 (App Router + RSC)
- TypeScript + Tailwind CSS
- TanStack Query + Zustand
- Framer Motion (动画)

**后端**
- FastAPI + Python 3.11
- LangGraph (多智能体编排)
- PostgreSQL + pgvector
- Redis (缓存/队列)
- OpenTelemetry (观测)

**AI/ML**
- LangChain + OpenAI GPT-4
- 科学计算: NumPy + SciPy
- 统计建模: BKT + IRT(2PL)

## 🧪 测试策略

- **单元测试**: BKT更新、CAT算法、意图分类
- **集成测试**: 服务间通信、状态机流转
- **E2E测试**: 完整学习路径验证
- **性能测试**: 并发处理、响应时延

## 📈 核心指标

- **北极星指标**: 单位时间ΔMastery
- **过程指标**: 主客观一致率、补救后肯定率
- **用户指标**: 次日留存、本周完成数

## 🎯 里程碑

- **M0 (第1周)**: 基础架构 + 核心组件
- **M1 (第2-3周)**: A回路 + BKT引擎
- **M2 (第4-5周)**: B-CAT + 复习调度
- **M3 (第6-7周)**: UI打磨 + 试点验证
- **硬化 (第8周)**: 回归测试 + 上线

## 🤝 贡献指南

我们欢迎所有形式的贡献！请查看 [CONTRIBUTING.md](./docs/CONTRIBUTING.md) 了解详细信息。

## 📄 许可证

MIT License - 详见 [LICENSE](./LICENSE) 文件

---

*让我们一起用AI和学习科学，重新定义个性化教育的未来！* 🌟

