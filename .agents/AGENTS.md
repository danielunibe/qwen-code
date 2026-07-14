# Reglas del Proyecto (Workspace Rules)

## Contexto de la Estación de Desarrollo Local
Este workspace utiliza una infraestructura de IA local y offline basada en:
*   **Editor**: VS Code con las extensiones **Continue.dev** (para chat y autocompletado) y **Kilo Code** (para agentes autónomos).
*   **Backend**: Ollama que sirve `qwen2.5-coder:7b` para inferencia local y `nomic-embed-text` para embeddings locales en GPU.
*   **Base Vectorial**: ChromaDB local para indexación del repositorio completo mediante el script `C:\AI\Config\indexer.py`.

## Directrices para Agentes de IA
*   **Restricción Offline**: No asumas que hay conexión a internet para descargar paquetes o dependencias adicionales. Utiliza únicamente las herramientas y bibliotecas ya instaladas localmente en el sistema (como `uv`, `npm` global, `python`, `cargo`).
*   **Interacciones Concisas**: Dado que se ejecutan modelos locales, la eficiencia de contexto es crítica. Evita dar largas explicaciones de texto redundante; enfócate en el código directo y respuestas breves.
*   **Organización del Sistema**: Todos los archivos auxiliares de IA (modelos, base vectorial, caché, etc.) deben almacenarse en la estructura centralizada `C:\AI\`. No dejes archivos sueltos en el workspace.
*   **Rollback**: En caso de errores durante la ejecución, revierte los cambios al último commit estable de Git o restaura los archivos usando los respaldos en `C:\AI\Backups\`.
