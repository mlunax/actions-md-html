import markdown

with open('CHANGELOG.md', 'r',encoding='utf8') as f:
    text = f.read()
    html = markdown.markdown(text)
    html = html + "<meta charset=\"utf-8\">"

with open('CHANGELOG.html', 'w',encoding='utf8') as f:
    f.write(html)

