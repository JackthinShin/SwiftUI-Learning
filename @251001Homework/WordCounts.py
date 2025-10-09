textin = input()
text = ''
for c in textin:
    if 'a' <= c <= 'z' or 'A' <= c <= 'Z' or c == ' ':
        text = text + c
words = text.lower().split()
word_counts = {}
for word in words:
    if word in word_counts:
        word_counts[word] += 1
    else:
        word_counts[word] = 1
max_word = max(word_counts, key=word_counts.get)
print(word_counts)
print("出现最多的字符串是：",max_word,"总计出现了：",word_counts[max_word],"次")
print(text[::-1])
