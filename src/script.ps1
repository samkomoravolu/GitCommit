$num_commits = Get-Random -Minimum 1 -Maximum 2
for ($i = 0; $i -lt $num_commits; $i++) {
    $date = Get-Date
    $message = "Commit $i on $date"
    python3 .\update.py
    git add .
    git commit --allow-empty -m $message
    git push
}