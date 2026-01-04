# AI Agent 框架详解

AI Agent 框架是构建自主 AI 应用程序的核心工具，可以让 AI 完成复杂的、多步骤的任务。

## 📖 什么是 AI Agent 框架？

AI Agent 框架提供了一套工具和抽象，让开发者能够：
- 构建能够自主规划和执行的 AI agent
- 让 AI 使用工具（tools）完成实际任务
- 实现 multi-agent 协作
- 管理长期记忆和上下文

---

## 🎯 主流框架对比

| 框架 | Stars | 难度 | 特色 | 适用场景 |
|------|-------|------|------|---------|
| **LangChain** | 90k+ | 中 | 生态最丰富 | 企业级应用 |
| **AutoGPT** | 160k+ | 高 | 完全自主 | 实验性项目 |
| **CrewAI** | 10k+ | 中 | 多 agent 协作 | 团队任务 |
| **Phidata** | 15k+ | 低 | 简单易用 | 快速原型 |
| **Semantic Kernel** | 20k+ | 中 | 微软出品 | 企业集成 |
| **LlamaIndex** | 40k+ | 中 | 数据增强 | RAG 应用 |

---

## 🦜 LangChain

### 基本信息
- **GitHub**: https://github.com/langchain-ai/langchain
- **官网**: https://www.langchain.com/
- **文档**: https://python.langchain.com/
- **Stars**: 90k+
- **语言**: Python, JavaScript/TypeScript

### 核心特性
1. **Chains（链）**: 将多个组件串联起来
2. **Agents**: AI 可以自主决定使用哪些工具
3. **Memory**: 管理对话历史和长期记忆
4. **Tools**: 内置丰富的工具集成（搜索、计算、API 等）
5. **Templates**: 预构建的常用模板

### 快速入门

#### 安装
```bash
pip install langchain langchain-openai
```

#### 简单示例
```python
from langchain.agents import AgentExecutor, create_openai_tools_agent
from langchain.tools import Tool
from langchain_openai import ChatOpenAI
from langchain import hub

# 1. 定义工具
def search_engine(query: str) -> str:
    """搜索引擎工具"""
    return f"搜索结果：{query}"

tools = [
    Tool(
        name="Search",
        func=search_engine,
        description="用于搜索信息的工具"
    )
]

# 2. 初始化模型和 agent
llm = ChatOpenAI(model="gpt-4", temperature=0)
prompt = hub.pull("hwchase17/openai-tools-agent")

agent = create_openai_tools_agent(llm, tools, prompt)
agent_executor = AgentExecutor(agent=agent, tools=tools, verbose=True)

# 3. 运行
result = agent_executor.invoke({"input": "搜索最新的 AI 编程工具"})
print(result)
```

### 适用场景
✅ 企业级应用开发
✅ 需要丰富集成的项目
✅ 复杂的工作流
✅ 需要长期记忆的应用

### 学习资源
- [LangChain 官方教程](https://python.langchain.com/docs/get_started/introduction)
- [LangChain 中文社区](https://github.com/liaokongVFX/LangChain-Chinese-Getting-Started-Guide)

---

## 🤖 AutoGPT

### 基本信息
- **GitHub**: https://github.com/autogpt/autogpt
- **官网**: https://news.agpt.co/
- **Stars**: 160k+
- **语言**: Python

### 核心特性
1. **完全自主**: 设定目标后自动执行
2. **自我迭代**: 可以反思和改进
3. **文件操作**: 可以读写文件
4. **Web 浏览**: 可以搜索和浏览网页
5. **代码执行**: 可以运行代码

### 快速入门

#### 安装
```bash
git clone https://github.com/autogpt/autogpt.git
cd autogpt
pip install -r requirements.txt
```

#### 配置
```bash
cp .env.template .env
# 编辑 .env 文件，添加你的 OpenAI API Key
```

#### 运行
```bash
python -m autogpt
```

### 适用场景
✅ 自动化研究任务
✅ 数据收集和分析
✅ 内容生成
✅ 实验性项目

⚠️ **注意**: AutoGPT 成本较高，需要仔细监控 API 使用

### 学习资源
- [AutoGPT 官方文档](https://docs.agpt.co/)
- [AutoGPT 中文教程](https://github.com/yumenokai0/AutoGPT-CN)

---

## 👥 CrewAI

### 基本信息
- **GitHub**: https://github.com/joaomdmoura/crewAI
- **官网**: https://www.crewai.com/
- **文档**: https://docs.crewai.com/
- **Stars**: 10k+
- **语言**: Python

### 核心特性
1. **Role-Playing Agents**: 定义不同角色的 agent
2. **Autonomous Delegation**: agent 之间可以自主分配任务
3. **Tools Integration**: 丰富的工具集成
4. **Local Models**: 支持本地 LLM（通过 Ollama）

### 快速入门

#### 安装
```bash
pip install crewai
```

#### 示例：创建一个内容创作团队
```python
from crewai import Agent, Task, Crew, Process

# 1. 定义 agents
researcher = Agent(
    role='研究员',
    goal='研究最新的 AI 编程趋势',
    backstory='你是一位经验丰富的技术研究员',
    verbose=True
)

writer = Agent(
    role='技术作家',
    goal='基于研究结果撰写文章',
    backstory='你擅长将技术概念转化为易懂的文章',
    verbose=True
)

# 2. 定义任务
research_task = Task(
    description='研究 2025 年最流行的 AI 编程工具',
    agent=researcher
)

write_task = Task(
    description='基于研究结果，写一篇 500 字的技术文章',
    agent=writer
)

# 3. 创建 crew
crew = Crew(
    agents=[researcher, writer],
    tasks=[research_task, write_task],
    verbose=2
)

# 4. 执行
result = crew.kickoff()
print(result)
```

### 适用场景
✅ 需要多角色协作的任务
✅ 内容创作团队
✅ 研究和分析项目
✅ 客服自动化

### 学习资源
- [CrewAI 官方文档](https://docs.crewai.com/)
- [CrewAI 示例集合](https://github.com/joaomdmoura/crewAI-examples)

---

## 🚀 Phidata

### 基本信息
- **GitHub**: https://github.com/phidatahq/phidata
- **官网**: https://www.phidata.com/
- **文档**: https://docs.phidata.com/
- **Stars**: 15k+
- **语言**: Python

### 核心特性
1. **简单易用**: 最低代码量
2. **内置工具**: 丰富的预构建工具
3. **结构化输出**: 强调类型安全
4. **监控和调试**: 内置 observability

### 快速入门

#### 安装
```bash
pip install phidata
```

#### 示例
```python
from phi.assistant import Assistant
from phi.tools.duckduckgo import DuckDuckGo

# 创建 assistant
assistant = Assistant(
    tools=[DuckDuckGo()],
    description="我是一个有帮助的 AI 助手",
    show_tool_calls=True
)

# 运行
assistant.print_response("搜索最新的 AI 编程工具")
```

### 适用场景
✅ 快速原型开发
✅ 简单的 AI 应用
✅ 学习和实验
✅ MVP 验证

### 学习资源
- [Phidata 官方文档](https://docs.phidata.com/)
- [Phidata Cookbook](https://docs.phidata.com/cookbook)

---

## 🧩 Semantic Kernel (Microsoft)

### 基本信息
- **GitHub**: https://github.com/microsoft/semantic-kernel
- **官网**: https://learn.microsoft.com/en-us/semantic-kernel/
- **Stars**: 20k+
- **语言**: Python, C#, Java

### 核心特性
1. **企业级**: 微软官方支持
2. **多语言**: Python, C#, Java
3. **Plugins**: 丰富的插件生态
4. **Azure 集成**: 与 Azure 服务深度集成

### 快速入门

#### Python 示例
```python
import semantic_kernel as sk
from semantic_kernel.connectors.ai.open_ai import AzureChatCompletion

# 创建 kernel
kernel = sk.Kernel()

# 添加 AI 服务
kernel.add_chat_service(
    "chat",
    AzureChatCompletion(
        deployment_name="your-deployment",
        endpoint="your-endpoint",
        api_key="your-api-key"
    )
)

# 定义插件
from semantic_kernel.skill_definition import sk_function

class MathPlugin:
    @sk_function(description="计算两个数之和")
    def add(self, a: int, b: int) -> int:
        return a + b

# 注册插件
kernel.import_skill(MathPlugin(), "math")

# 运行
result = kernel.run_async("math.add", a=5, b=10)
print(result)
```

### 适用场景
✅ 企业应用
✅ Azure 用户
✅ .NET 生态系统
✅ 需要官方支持的项目

### 学习资源
- [Semantic Kernel 文档](https://learn.microsoft.com/en-us/semantic-kernel/)
- [Microsoft Learn 课程](https://learn.microsoft.com/en-us/training/semantic-kernel/)

---

## 📚 LlamaIndex

### 基本信息
- **GitHub**: https://github.com/run-llama/llama_index
- **官网**: https://www.llamaindex.ai/
- **文档**: https://docs.llamaindex.ai/
- **Stars**: 40k+
- **语言**: Python, TypeScript

### 核心特性
1. **数据框架**: 专注于数据增强的 LLM 应用
2. **RAG**: 检索增强生成（Retrieval-Augmented Generation）
3. **数据连接器**: 支持 100+ 数据源
4. **索引优化**: 高效的向量索引

### 快速入门

#### 安装
```bash
pip install llama-index
```

#### 示例：简单的 RAG
```python
from llama_index import VectorStoreIndex, SimpleDirectoryReader

# 1. 加载文档
documents = SimpleDirectoryReader('data').load_data()

# 2. 创建索引
index = VectorStoreIndex.from_documents(documents)

# 3. 创建查询引擎
query_engine = index.as_query_engine()

# 4. 查询
response = query_engine.query("什么是 Vibe Coding？")
print(response)
```

### 适用场景
✅ 文档问答系统
✅ 知识库应用
✅ RAG 应用
✅ 需要大量数据的应用

### 学习资源
- [LlamaIndex 文档](https://docs.llamaindex.ai/)
- [LlamaIndex 示例](https://github.com/run-llama/llama_index/tree/main/examples)

---

## 🎓 框架选择指南

### 按场景选择

#### 企业级应用
**推荐**: LangChain, Semantic Kernel
- 企业支持和维护
- 丰富的集成
- 完善的文档

#### 快速原型/MVP
**推荐**: Phidata, CrewAI
- 代码简单
- 快速上手
- 演示效果好

#### 数据密集型应用
**推荐**: LlamaIndex
- 专业的数据处理
- 高效的检索
- RAG 优化

#### 实验性项目
**推荐**: AutoGPT
- 完全自主
- 功能强大
- 探索性强

#### 多 agent 协作
**推荐**: CrewAI
- 角色化设计
- 任务分配
- 团队模拟

### 按技术背景选择

#### Python 开发者
- LangChain（最流行）
- LlamaIndex（数据应用）
- Phidata（最简单）

#### .NET/C# 开发者
- Semantic Kernel（官方支持）

#### JavaScript/TypeScript 开发者
- LangChain.js
- LlamaIndex TS

#### 初学者
- Phidata（最简单）
- CrewAI（概念清晰）

---

## 🛠️ 实战案例

### 案例 1: AI 研究助手（使用 LangChain）

```python
from langchain.agents import create_openai_functions_agent, AgentExecutor
from langchain.tools import Tool, DuckDuckGoSearchRun
from langchain_openai import ChatOpenAI
from langchain import hub

# 定义工具
search = DuckDuckGoSearchRun()

tools = [
    Tool(
        name="搜索",
        func=search.run,
        description="搜索互联网信息"
    )
]

# 创建 agent
llm = ChatOpenAI(model="gpt-4", temperature=0)
prompt = hub.pull("hwchase17/openai-functions-agent")

agent = create_openai_functions_agent(llm, tools, prompt)
agent_executor = AgentExecutor(agent=agent, tools=tools, verbose=True)

# 使用
result = agent_executor.invoke({
    "input": "研究 2025 年最流行的 AI 编程工具，并总结它们的优缺点"
})
```

### 案例 2: 内容创作团队（使用 CrewAI）

```python
from crewai import Agent, Task, Crew

# 定义 agents
researcher = Agent(
    role='研究专家',
    goal='收集最新的技术趋势',
    backstory='你是一位技术研究者',
    tools=[search_tool],
    verbose=True
)

writer = Agent(
    role='内容创作者',
    goal='撰写技术博客',
    backstory='你是一位技术作家',
    verbose=True
)

editor = Agent(
    role='编辑',
    goal='审校和优化内容',
    backstory='你是一位资深编辑',
    verbose=True
)

# 定义任务
research = Task(
    description='研究 Vibe Coding 的最新趋势',
    expected_output='详细的研究报告',
    agent=researcher
)

write = Task(
    description='基于研究报告撰写博客文章',
    expected_output='1000 字的博客文章',
    agent=writer
)

edit = Task(
    description='审校和优化文章',
    expected_output='最终版本的文章',
    agent=editor
)

# 创建 crew
crew = Crew(
    agents=[researcher, writer, editor],
    tasks=[research, write, edit],
    verbose=2
)

# 执行
result = crew.kickoff()
```

### 案例 3: 文档问答系统（使用 LlamaIndex）

```python
from llama_index import VectorStoreIndex, SimpleDirectoryReader
from llama_index.node_parser import SimpleNodeParser
from llama_index.llms import OpenAI

# 1. 加载和解析文档
documents = SimpleDirectoryReader('./docs').load_data()
parser = SimpleNodeParser.from_defaults()
nodes = parser.get_nodes_from_documents(documents)

# 2. 创建索引
index = VectorStoreIndex(nodes)

# 3. 创建查询引擎
query_engine = index.as_query_engine(
    llm=OpenAI(model="gpt-4"),
    similarity_top_k=5
)

# 4. 查询
response = query_engine.query(
    "如何在项目中使用 Claude Code？"
)
print(response)
```

---

## 📖 学习路径

### 初级（1-2 周）
1. 理解 Agent 概念
2. 学习 LangChain 基础
3. 完成简单的 agent 示例

### 中级（1-2 个月）
1. 深入学习一个框架（推荐 LangChain 或 CrewAI）
2. 构建 RAG 应用
3. 实现多 agent 系统
4. 集成自定义工具

### 高级（3+ 个月）
1. 掌握多个框架
2. 优化 agent 性能
3. 构建生产级应用
4. 探索 agent 评估和测试

---

## 🔗 相关资源

- [Prompt 工程指南](./vibe-coding-concepts.md)
- [AI 工具清单](./ai-tools.md)
- [GitHub 仓库推荐](./github-repositories.md)
- [LangChain 官方教程](https://python.langchain.com/)
- [CrewAI 示例](https://github.com/joaomdmoura/crewAI-examples)

---

**最后更新**: 2025-01-04
**维护者**: vibe-coding-collection 社区
