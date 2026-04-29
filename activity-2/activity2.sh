

set -u

greet() {
    local who="$1"
    echo "============================================="
    echo " Hello, ${who}! Welcome to the DevOps script."
    echo " Script run at: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "============================================="
}

if [ -n "${NAME:-}" ]; then
    name="$NAME"
elif [ -t 0 ]; then
    read -rp "Enter your name: " name
else
    name="Haris-Muhammad-Imran"
fi

if [ -z "$name" ]; then
    echo "Error: name cannot be empty." >&2
    exit 1
fi

target_dir="./${name}"
if [ -d "$target_dir" ]; then
    echo "Folder '$target_dir' already exists. Skipping creation."
else
    mkdir -p "$target_dir"
    echo "Folder '$target_dir' created."
fi

echo "Counting from 1 to 5:"
for i in 1 2 3 4 5; do
    echo "  -> $i"
done

greet "$name"

exit 0
