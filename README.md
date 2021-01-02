# MusicHelper
AppleScript to control Music.app in background.

Run in macOS Big Sur 11.1 for using SF symbols in it.

Use `Automator.app` or `Alfred 4.app` to run these applescripts with keyboard shortcuts.

# mdbook

```bash
# /
echo "book" >> .gitignore
mkdir mdbook
cd mdbook
# /mdbook
mdbook init
# write markdowns in ./src and add highlight in ./theme
# modify book.toml
mdbook build -d ../docs
cd ..
# /
git add .
git commit -m"..."
git push
```

GitHub pages 需要设置为docs路径