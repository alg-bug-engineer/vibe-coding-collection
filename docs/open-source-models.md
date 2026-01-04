# 开源代码模型指南

开源大语言模型（LLM）让你可以在本地部署、定制和使用 AI 编程能力，保护隐私且可控。

## 🎯 为什么选择开源模型？

### 优势
✅ **隐私保护**: 数据不离开本地
✅ **成本控制**: 无 API 费用
✅ **可定制**: 可以 fine-tune
✅ **离线使用**: 无需互联网
✅ **透明性**: 模型架构公开

### 劣势
⚠️ **硬件要求**: 需要强大的 GPU
⚠️ **性能差距**: 相比 GPT-4/Claude 有差距
⚠️ **设置复杂**: 需要技术知识
⚠️ **维护成本**: 需要自己管理和更新

---

## 🏆 主流开源代码模型

| 模型 | 开发者 | 参数量 | 特色 | 硬件要求 |
|------|--------|--------|------|---------|
| **DeepSeek Coder** | DeepSeek | 6.7B - 33B | 中文友好 | 16GB+ |
| **CodeLlama** | Meta | 7B - 34B | 生态成熟 | 16GB+ |
| **Codestral** | Mistral | 22B | 性能优秀 | 24GB+ |
| **StarCoder2** | BigCode | 3B - 15B | 开源训练 | 12GB+ |
| **Qwen-Coder** | 阿里 | 1.5B - 14B | 中文优化 | 12GB+ |
| **CodeGemma** | Google | 2B - 7B | 轻量级 | 8GB+ |

---

## 🚀 DeepSeek Coder

### 基本信息
- **GitHub**: https://github.com/deepseek-ai/deepseek-coder
- **官网**: https://www.deepseek.com/
- **许可证**: Apache 2.0（可商用）
- **参数**: 6.7B, 20B, 33B
- **上下文**: 16K tokens

### 特色
✅ **中文友好**: 专为中文优化
✅ **填空能力**: FIM（Fill-In-Middle）模式
✅ **多语言**: Python, JavaScript, C++, Go, Rust 等
✅ **商业友好**: Apache 2.0 许可证

### 快速开始

#### 使用 Ollama
```bash
# 安装 Ollama
curl -fsSL https://ollama.com/install.sh | sh

# 拉取模型
ollama pull deepseek-coder:6.7b

# 运行
ollama run deepseek-coder:6.7b
```

#### 使用 Python API
```python
from openai import OpenAI

# 连接到本地 Ollama
client = OpenAI(
    base_url='http://localhost:11434/v1',
    api_key='ollama'  # required but unused
)

# 代码生成
response = client.chat.completions.create(
    model='deepseek-coder:6.7b',
    messages=[
        {
            'role': 'user',
            'content': '用 Python 写一个快速排序'
        }
    ]
)

print(response.choices[0].message.content)
```

### 性能建议
- **6.7B**: 适合日常编程，需要 16GB RAM
- **33B**: 更强的推理能力，需要 64GB+ RAM

---

## 🦙 CodeLlama

### 基本信息
- **GitHub**: https://github.com/facebookresearch/codellama
- **开发者**: Meta
- **许可证**: Llama 2 Community
- **参数**: 7B, 13B, 34B
- **上下文**: up to 100K tokens（34B 版本）

### 特色
✅ **成熟稳定**: Meta 官方支持
✅ **长上下文**: 支持 16K-100K tokens
✅ **Python 专用**: 有专门针对 Python 的版本
✅ **填空模式**: 支持 FIM

### 快速开始

#### 使用 Ollama
```bash
# 拉取模型
ollama pull codellama:7b
ollama pull codellama:13b
ollama pull codellama:34b

# Python 专用版本
ollama pull codellama:python
```

#### 使用 Transformers
```python
from transformers import AutoTokenizer, AutoModelForCausalLM

# 加载模型
tokenizer = AutoTokenizer.from_pretrained("codellama/CodeLlama-7b-Python-hf")
model = AutoModelForCausalLM.from_pretrained("codellama/CodeLlama-7b-Python-hf")

# 生成代码
prompt = "def fibonacci(n):"
inputs = tokenizer(prompt, return_tensors="pt")
outputs = model.generate(**inputs, max_length=200)
code = tokenizer.decode(outputs[0])
print(code)
```

### 版本选择
- **CodeLlama-7b**: 日常开发，12GB RAM
- **CodeLlama-13b**: 平衡性能和资源，24GB RAM
- **CodeLlama-34b**: 最佳性能，64GB+ RAM
- **CodeLlama-Python**: Python 专用，性能更好

---

## 🌟 Codestral (Mistral)

### 基本信息
- **GitHub**: https://github.com/mistralai/mistral-src
- **官网**: https://mistral.ai/
- **许可证**: Mistral AI License（可商用）
- **参数**: 22B
- **上下文**: 32K tokens

### 特色
✅ **性能优异**: 在多个基准测试中表现出色
✅ **推理能力强**: 数学问题解决
✅ **多语言**: 支持 80+ 编程语言
✅ **快速**: Mistral 的推理优化

### 快速开始

#### 使用 Ollama
```bash
ollama pull codestral
```

#### 使用 vLLM
```bash
pip install vllm

# 启动服务
python -m vllm.entrypoints.openai.api_server \
    --model mistralai/Codestral-22B-v0.1 \
    --host 0.0.0.0 \
    --port 8000
```

### 适用场景
- 需要高性能推理
- 数学密集型编程
- 复杂算法实现

---

## 🌟 StarCoder2

### 基本信息
- **GitHub**: https://github.com/bigcode-project/starcoder2
- **官网**: https://huggingface.co/bigcode
- **开发者**: BigCode（Hugging Face + ServiceNow）
- **许可证**: OpenRAIL-M
- **参数**: 3B, 7B, 15B

### 特色
✅ **完全开源**: OpenRAIL 许可
✅ **透明训练**: 训练数据公开
✅ **轻量级**: 3B 版本可在 CPU 运行
✅ **多语言**: 支持 358+ 编程语言

### 快速开始

#### 使用 Hugging Face
```python
from transformers import AutoModelForCausalLM, AutoTokenizer

# 加载模型
model = AutoModelForCausalLM.from_pretrained("bigcode/starcoder2-7b")
tokenizer = AutoTokenizer.from_pretrained("bigcode/starcoder2-7b")

# 生成代码
inputs = tokenizer("def hello_world():", return_tensors="pt")
outputs = model.generate(**inputs, max_length=100)
print(tokenizer.decode(outputs[0]))
```

### 版本选择
- **3B**: CPU 可运行，8GB RAM
- **7B**: GPU 推荐，16GB RAM
- **15B**: 最佳性能，32GB+ RAM

---

## 🇨🇳 Qwen-Coder (通义千问)

### 基本信息
- **GitHub**: https://github.com/QwenLM/Qwen2.5-Coder
- **开发者**: 阿里云
- **许可证**: Apache 2.0
- **参数**: 0.5B, 1.5B, 3B, 7B, 14B

### 特色
✅ **中文优化**: 针对中文场景优化
✅ **轻量级**: 0.5B 版本可在移动端运行
✅ **商业友好**: Apache 2.0 许可
✅ **长上下文**: 支持 32K tokens

### 快速开始

#### 使用 Ollama
```bash
ollama pull qwen2.5-coder:7b
```

#### 使用 Transformers
```python
from transformers import AutoModelForCausalLM, AutoTokenizer

model = AutoModelForCausalLM.from_pretrained(
    "Qwen/Qwen2.5-Coder-7B-Instruct",
    device_map="auto"
)
tokenizer = AutoTokenizer.from_pretrained("Qwen/Qwen2.5-Coder-7B-Instruct")

# 对话
messages = [
    {"role": "system", "content": "你是一个编程助手"},
    {"role": "user", "content": "用 Python 实现二分查找"}
]

text = tokenizer.apply_chat_template(messages, tokenize=False, add_generation_prompt=True)
inputs = tokenizer([text], return_tensors="pt")
outputs = model.generate(**inputs, max_length=512)
print(tokenizer.decode(outputs[0]))
```

---

## 🔧 部署工具

### Ollama（最简单）

#### 特点
- 一键安装和使用
- 自动硬件优化
- 支持多种模型
- 跨平台（macOS, Linux, Windows）

#### 安装
```bash
# macOS / Linux
curl -fsSL https://ollama.com/install.sh | sh

# 运行模型
ollama run codellama:7b
```

#### API 使用
```bash
# 启动 API 服务
ollama serve

# 调用 API
curl http://localhost:11434/api/generate -d '{
  "model": "codellama:7b",
  "prompt": "写一个 Python 函数"
}'
```

### vLLM（高性能）

#### 特点
- 高吞吐量推理
- PagedAttention 技术
- OpenAI 兼容 API
- 适合生产环境

#### 安装和使用
```bash
# 安装
pip install vllm

# 启动服务
python -m vllm.entrypoints.openai.api_server \
    --model bigcode/starcoder2-7b \
    --host 0.0.0.0 \
    --port 8000

# 调用
curl http://localhost:8000/v1/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "bigcode/starcoder2-7b",
    "prompt": "def hello():"
  }'
```

### LM Studio（图形界面）

#### 特点
- 友好的 GUI
- 模型市场
- 本地聊天
- 支持 GPU 加速

#### 下载
- https://lmstudio.ai/

### Text Generation WebUI（功能丰富）

#### 特点
- Web 界面
- 支持多种后端
- 扩展性强
- 社区活跃

#### 安装
```bash
git clone https://github.com/oobabooga/text-generation-webui
cd text-generation-webui
bash start_linux.sh  # 或 start_windows.bat / start_macos.sh
```

---

## 💻 硬件需求指南

### 最低配置（CPU 推理）
- **CPU**: 8 核心以上
- **RAM**: 16GB
- **存储**: 50GB SSD
- **模型**: CodeGemma-2B, StarCoder2-3B, Qwen-0.5B/1.5B
- **速度**: 较慢（2-10 tokens/秒）

### 推荐配置（GPU 推理）
- **GPU**: RTX 3060 (12GB) 或更高
- **RAM**: 32GB
- **存储**: 100GB SSD
- **模型**: CodeLlama-7B/13B, DeepSeek-6.7B/20B
- **速度**: 快（20-50 tokens/秒）

### 最佳配置（高端）
- **GPU**: RTX 4090 (24GB) 或 A100 (40GB+)
- **RAM**: 64GB+
- **存储**: 200GB NVMe SSD
- **模型**: CodeLlama-34B, DeepSeek-33B, Codestral
- **速度**: 非常快（50-100+ tokens/秒）

---

## 🔗 集成到开发工具

### VS Code + Continue

1. 安装 Continue 扩展
2. 配置使用 Ollama:

```json
{
  "models": [{
    "title": "DeepSeek Coder",
    "provider": "ollama",
    "model": "deepseek-coder:6.7b",
    "apiBase": "http://localhost:11434"
  }]
}
```

### Cursor + Ollama

1. 打开 Cursor 设置
2. 配置自定义模型:
```
Model Provider: OpenAI Compatible
Base URL: http://localhost:11434/v1
API Key: ollama
Model: deepseek-coder:6.7b
```

### Aider + 本地模型

```bash
# 使用 Ollama 模型
aider --model ollama/deepseek-coder:6.7b

# 使用 vLLM
aider --model openai/deepseek \
  --openai-api-base http://localhost:8000/v1 \
  --openai-api-key not-needed
```

---

## 📊 性能对比

### 代码生成基准（HumanEval）

| 模型 | Pass@1 | Pass@10 |
|------|--------|---------|
| GPT-4 | 67.0% | 85.0% |
| Claude 3.5 | 72.0% | 88.0% |
| **DeepSeek-33B** | 62.0% | 78.0% |
| **Codestral-22B** | 65.0% | 81.0% |
| **CodeLlama-34B** | 48.8% | 60.0% |
| **StarCoder2-15B** | 45.0% | 58.0% |

### 实用建议
- **最佳质量**: DeepSeek-33B, Codestral-22B
- **最佳性价比**: DeepSeek-6.7B, CodeLlama-7B
- **最轻量**: Qwen-1.5B, CodeGemma-2B

---

## 🎯 选择建议

### 按用途选择

#### 日常编程
- **推荐**: DeepSeek Coder 6.7B
- **原因**: 中文友好，性能好，资源需求适中

#### Python 专用
- **推荐**: CodeLlama-Python 7B/13B
- **原因**: 针对 Python 优化

#### 低端硬件
- **推荐**: Qwen-1.5B, CodeGemma-2B
- **原因**: 资源需求低，可在 CPU 运行

#### 高性能需求
- **推荐**: DeepSeek-33B, Codestral-22B
- **原因**: 接近 GPT-3.5 水平

#### 商业使用
- **推荐**: DeepSeek, Qwen, Codestral
- **原因**: 商业友好许可证

### 按语言选择

| 语言 | 推荐模型 |
|------|---------|
| **Python** | CodeLlama-Python, DeepSeek |
| **JavaScript/TypeScript** | Codestral, StarCoder2 |
| **Go** | DeepSeek, StarCoder2 |
| **Rust** | Codestral, DeepSeek |
| **Java** | CodeLlama, StarCoder2 |
| **C++** | Codestral, CodeLlama-34B |
| **中文项目** | DeepSeek, Qwen |

---

## 📚 学习资源

### 官方文档
- [Ollama 文档](https://github.com/ollama/ollama/blob/main/docs.md)
- [vLLM 文档](https://docs.vllm.ai/)
- [Hugging Face Transformers](https://huggingface.co/docs/transformers)

### 教程
- [本地运行 CodeLlama](https://www.philschmid.de/deploy-code-llama)
- [DeepSeek Coder 使用指南](https://github.com/deepseek-ai/deepseek-coder)
- [Fine-tuning 教程](https://huggingface.co/blog/lora-for-code)

### 社区
- [Reddit r/LocalLLM](https://reddit.com/r/LocalLLM)
- [Hugging Face Forums](https://discuss.huggingface.co/)
- [Ollama Discord](https://discord.gg/ollama)

---

## 🔗 相关资源

- [AI 工具清单](./ai-tools.md)
- [Agent 框架详解](./agent-frameworks.md)
- [GitHub 仓库推荐](./github-repositories.md)
- [Ollama 模型库](https://ollama.com/library)

---

**最后更新**: 2025-01-04
**维护者**: vibe-coding-collection 社区
