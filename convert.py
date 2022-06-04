import markdown

with open('CHANGELOG.md', 'r') as f:
    text = f.read()
    html = markdown.markdown(text)

with open('CHANGELOG.html', 'w') as f:
    f.write(html)

