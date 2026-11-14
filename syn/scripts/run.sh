STEP="$1"

TARGET_DIR="$HOME/EE465/Lab10/syn$STEP"

find "$TARGET_DIR/scripts" -type f -name "syn.tcl" | while read -r script_path; do

    echo "Running Genus on: $script_path"
    # Extract just the filename for log naming
    filename=$(basename "$script_path" .tcl)
    (
        cd "$TARGET_DIR" || exit 1
        genus -legacy_ui -f "$script_path" > "${filename}.log"
    ) &
    echo "Launched Genus $i (PID: $!)"
done

jobs -l


wait
cd ~/EE465/Lab10
