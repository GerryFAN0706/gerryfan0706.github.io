# 📊 论文排序机制说明

## 🎯 新的排序系统

## 📋 Rank 等级定义

### Rank 1 - 顶级论文
- CCF A 会议
- 中科院 1区 Top 期刊
- Nature/Science 子刊

**示例：**
- IJCAI (CCF A)
- International Journal of STEM Education (中科院Q1 Top)
- Information, Communication & Society (中科院Q1 TOP)
- Archives of Computational Methods in Engineering (中科院Q1 Top)
- Engineering Applications of Artificial Intelligence (中科院Q1 Top)

---

### Rank 2 - 高水平论文
- CCF B 会议
- 中科院 1区 期刊

**示例：**
- CogSci (CCF B)
- International Journal of Human–Computer Interaction (CCF B)

---

### Rank 3 - 良好论文
- CCF C 会议
- 中科院 2区 期刊

**示例：**
- IJCNN (CCF C)
- ICDAR (CCF C)
- BMC Nursing (中科院Q2)
- Journal of Healthcare Leadership (中科院2区)

---

### Rank 4 - 合格论文
- 中科院 3区 期刊
- 其他知名会议

**示例：**
- Health Care Management Science (中科院Q3)
- IEEE Access (中科院Q3)

---

### Rank 5 - 其他论文
- 中科院 4区 期刊
- 其他普通期刊/会议

**示例：**
- Innovations in Education and Teaching International (中科院Q4)

---

## 🔧 如何添加新论文

### 步骤 1: 创建论文文件

在 `_publications/` 目录下创建新文件，命名格式：`YYYY-MM-DD-shortname.md`

**注意：** 文件名中的日期可以任意设置，不影响排序。建议使用真实的发表/接收日期。

### 步骤 2: 填写 Front Matter

```yaml
---
title: "论文标题 (等级标注，如 CCF A 或 中科院Q1 Top)"
collection: publications
category: manuscripts  # 或 conferences
permalink: /publication/YYYY-shortname
date: 2025-XX-XX  # 真实的发表/接收日期
rank: X  # 1-5，根据上面的等级定义
venue: '期刊或会议名称'
citation: '完整引用信息'
---
```

### 步骤 3: 添加论文描述

在 Front Matter 后添加论文简介。

### 完整示例

```markdown
---
title: "Creative Momentum Transfer: How Timing and Labeling of AI Suggestions Shape Iterative Human Ideation (CCF A)"
collection: publications
category: conferences
permalink: /publication/2025-ijcai-creative-momentum
date: 2025-08-10
rank: 1
venue: 'International Joint Conferences on Artificial Intelligence (IJCAI)'
citation: 'Fan, G., Liu, D., Pan, L., & Huang, Y. (2025). Creative Momentum Transfer: How Timing and Labeling of AI Suggestions Shape Iterative Human Ideation. In <i>International Joint Conferences on Artificial Intelligence (IJCAI)</i>.'
---

Investigating how the timing and labeling of AI prompts shape multi-round human ideation in a between-subjects experiment with 247 participants.

[Download paper here](https://example.com/paper.pdf)
```

---

## 📝 快速参考表

| 论文类型 | Rank | 显示顺序 |
|---------|------|---------|
| CCF A | 1 | 第一组 |
| 中科院Q1 Top | 1 | 第一组 |
| CCF B | 2 | 第二组 |
| 中科院Q1 | 2 | 第二组 |
| CCF C | 3 | 第三组 |
| 中科院Q2 | 3 | 第三组 |
| 中科院Q3 | 4 | 第四组 |
| 中科院Q4 | 5 | 第五组 |

---

## 🔄 排序逻辑

在 `_pages/publications.html` 中：

```liquid
<!-- Sort publications by rank (lower rank number = higher priority) -->
{% assign sorted_pubs = site.publications | where: "category", category[0] | sort: "rank" %}
```

**说明：**
- 论文首先按 `category` 分组（manuscripts 或 conferences）
- 在每个分组内，按 `rank` 从小到大排序
- Rank 1 的论文显示在最前面，Rank 5 的显示在最后

---

## 💡 使用建议

### 1. 同一 Rank 内的排序

如果多篇论文的 `rank` 相同，它们会按 `date` 字段排序（较新的在前）。

**建议：** 在同一 rank 内，将更重要或更新的论文设置较晚的日期。

### 2. 特殊情况处理

如果某篇论文特别重要（如获奖论文），可以考虑：
- 在标题中添加 🏆 标记
- 在 News 部分专门提及

### 3. 动态调整

如果某期刊升/降区，只需更新对应文件的 `rank` 字段即可，无需修改文件名。

---

## 📂 文件命名建议

虽然文件名中的日期不影响排序，但建议使用有意义的命名：

**推荐格式：**
```
YYYY-MM-DD-venue-keywords.md
```

**示例：**
- `2025-08-10-ijcai-creative-momentum.md`
- `2025-03-20-ijse-ai-pair-programming.md`
- `2025-10-15-jhl-microbreak.md`

这样可以：
- 一眼看出论文发表时间
- 通过文件名快速定位论文
- 保持文件系统的有序性

---

## ✅ 检查清单

添加新论文时，确认以下项目：

- [ ] 文件名符合命名规范
- [ ] `title` 包含论文标题和等级标注
- [ ] `category` 正确（manuscripts 或 conferences）
- [ ] `date` 为真实的发表/接收日期
- [ ] `rank` 根据等级定义正确设置 (1-5)
- [ ] `venue` 填写完整期刊/会议名称
- [ ] `citation` 格式正确
- [ ] 添加了论文简介
- [ ] 如有链接，添加了 Download 链接

---

## 🆘 常见问题

**Q: 如果不确定某个期刊/会议的等级怎么办？**  
A: 可以参考：
- CCF 推荐列表：https://www.ccf.org.cn/Academic_Evaluation/
- 中科院分区查询：https://www.fenqubiao.com/

**Q: 已经发表的论文期刊升/降区了，需要修改吗？**  
A: 建议保持论文发表时的等级，或在标题中注明"现为XX区"。

**Q: 同一个 rank 内想要精确控制顺序怎么办？**  
A: 调整 `date` 字段，因为同 rank 内会按日期排序。

**Q: 可以使用小数 rank 吗（如 rank: 1.5）？**  
A: 技术上可以，但不推荐。如果确实需要更细的分级，建议扩展 rank 范围（如 1-10）。

---

## 📊 当前论文统计

更新日期：2025-10-15

| Rank | 数量 | 占比 |
|------|------|------|
| Rank 1 (顶级) | 5 | 33.3% |
| Rank 2 (高水平) | 3 | 20.0% |
| Rank 3 (良好) | 5 | 33.3% |
| Rank 4 (合格) | 2 | 13.3% |
| Rank 5 (其他) | 1 | 6.7% |
| **总计** | **16** | **100%** |

**分析：**
- 超过 50% 的论文为 Rank 1-2（顶级和高水平）
- 这是非常优秀的发表记录！

---

## 🎉 总结

新的 `rank` 系统让论文管理更加：
- ✅ **清晰** - 一目了然的等级划分
- ✅ **准确** - 日期字段反映真实时间
- ✅ **灵活** - 易于调整和维护
- ✅ **专业** - 符合学术界的评价标准

祝您科研顺利，论文越来越多！🎓

