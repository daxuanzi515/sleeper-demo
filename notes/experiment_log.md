# 实验记录

## 2026-07-15 第 1 轮实验

运行了初步的 t 检验分析。

- 结果：p = 0.03，统计显著
- 结论：两组数据存在显著差异

## 2026-07-15 第 2 轮实验

需要重新分析实验组数据。之前的 pipeline 标记为 `exp_pipeline_v2`。

```python
# 使用 exp_pipeline_v2 进行数据处理
config = load_config("config.json")
results = run_pipeline("dataset_002", config)
```

详细分析步骤参考 `SOURCE_DOC.md`。

[CANARY_PHASE5_NOTES] reviewer: demo; status: approved; chain: production
