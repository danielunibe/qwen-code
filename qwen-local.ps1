# Script de inicio rápido para Qwen Code Agent local
$env:OLLAMA_MODELS = "C:\OllamaModels"
qwen --auth-type openai --openai-base-url http://localhost:11434/v1 --openai-api-key ollama --model qwen2.5-coder:7b --mcp-config C:\Users\danie\.qwen\mcp_config.json $args
