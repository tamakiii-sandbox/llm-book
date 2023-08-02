from transformers import pipeline

# 文章分類(Document classification)
# 感情分析（sentiment analysis）

text_classification_pipeline = pipeline(
    model="llm-book/bert-base-japanese-v3-marc_ja"
)

positive_text = "世界には言葉がわからなくても感動する音楽がある。"
# positive_text の極性を予測
print(text_classification_pipeline(positive_text)[0])
