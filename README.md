# SIMPLE AND FAST FOR PRIVATE USAGE (for now)

# GitHub Action: Markdown to HTML in Python 


Input as file - CHANGELOG.MD
Output as file - CHANGELOG.HTML


## Usage

### GitHub Actions
```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - name: curl
      uses: mlunax/actions-md-html@master
```

