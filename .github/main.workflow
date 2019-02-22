workflow "on push" {
  on = "push"
  #  resolves = ["Find Python 3 syntax errors and undefined names", "GitHub Action for Flake8", "GitHub Action for pylint"]
  resolves = ["GitHub Action for cpplint"]
}

action "GitHub Action for cpplint" {
  uses = "cclauss/GitHub-Action-for-cpplint@master"
  args = "cpplint --recursive ."
}

action "Find Python 3 syntax errors and undefined names" {
  uses = "cclauss/Find-Python-syntax-errors-action@master"
}

action "GitHub Action for Flake8" {
  uses = "cclauss/GitHub-Action-for-Flake8@master"
  args = "flake8 . --count --select=E901,E999,F821,F822,F823 --show-source --statistics"
}

action "GitHub Action for pylint" {
  uses = "cclauss/pylint/github_actions@GitHub-Action"
  args = "pylint tools"
}
