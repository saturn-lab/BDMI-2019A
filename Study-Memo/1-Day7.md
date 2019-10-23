# 学习小结

## 数据库SQL进阶

### JOIN

&emsp;&emsp;JOIN实现的是两个表之间的连接，包括左连接、右连接、内连接、外连接：

```sql
SELECT 
FROM 
JOIN
ON
WHERE
```

### SET 

&emsp;&emsp;两个集合之间的关系包括交与并，SQL中

```
INTERSECT
UNION
UNION ALL
```

### Distinct

### 嵌套查询

&emsp;&emsp;通过IN关键字使用查询结果进行查询。

## Aggregation

&emsp;&emsp;For example:

```sql
AVG COUNT SUM MIN MAX
```

### GROUP/HAVING

&emsp;&emsp;分组。条件。 

## 外部排序

&emsp;&emsp;最后我们再次提到了分而置之的思想以及B+树。我们之所以选择B+树，是因为其在I/O中表现最好。磁盘在随机存储方面表现很差，在底层硬件改变之前，几乎都是B+树占据统治地位！

## Tensorflow

&emsp;惊叹与tensorboard的可视化界面！