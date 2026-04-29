# Activity 2 — Shell Scripting Task

**Student:** Haris Muhammad Imran

## Files
- `activity2.sh` — the main script

## Run interactively
```bash
chmod +x activity2.sh
./activity2.sh
# It will prompt: "Enter your name:"
```

## Run non-interactively (for cron)
```bash
NAME="Haris" ./activity2.sh
```

## Add a cron job (Linux / macOS / WSL)
Open the crontab:
```bash
crontab -e
```
Add this line (run every minute, log to /tmp/activity2.log):
```
* * * * * NAME="Haris" /bin/bash /absolute/path/to/activity2.sh >> /tmp/activity2.log 2>&1
```
Verify the job is registered:
```bash
crontab -l
```
Tail the log to see it firing each minute:
```bash
tail -f /tmp/activity2.log
```

## Windows note
Native Windows has no `cron`. Equivalents:
- **WSL:** install Ubuntu, run the cron command above inside WSL.
- **Task Scheduler:** create a basic task -> "Daily" -> "Repeat every 1 minute for a duration of 1 day", action = `C:\Program Files\Git\bin\bash.exe -c "/c/path/to/activity2.sh"`.

## What the script does
1. Reads your name (prompt, `$NAME` env var, or default for cron).
2. Creates a folder named after you, or reports if it already exists.
3. Loops 1..5 and prints each number.
4. Calls a `greet()` function to print a timestamped welcome message.
