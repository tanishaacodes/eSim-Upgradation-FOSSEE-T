#!/bin/bash
#=============================================================================
#          FILE: install-eSim.sh
# 
#         USAGE: ./install-eSim.sh --install 
#                            OR
#                ./install-eSim.sh --uninstall
#                
#   DESCRIPTION: Installation script for eSim EDA Suite
#   ORGANIZATION: eSim Team, FOSSEE, IIT Bombay
#=============================================================================

# Function to detect Ubuntu version and full version string
get_ubuntu_version() {
    # Ensure lsb_release is installed or read from /etc/os-release
    if command -v lsb_release &> /dev/null; then
        VERSION_ID=$(lsb_release -rs)
    else
        VERSION_ID=$(grep '^VERSION_ID=' /etc/os-release | cut -d= -f2 | tr -d '"')
    fi
    echo "Detected Ubuntu Version: $VERSION_ID"
}

# Function to choose and run the appropriate script
run_version_script() {
    # Define the directory where version-specific scripts are kept
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/install-eSim-scripts"
    
    SCRIPT=""

    # Logic to select the correct script based on Version ID
    case $VERSION_ID in
        "25.04")
            # This is the new file we will create
            SCRIPT="$SCRIPT_DIR/install-eSim-25.04.sh"
            ;;
        "24.04")
            # If the 24.04 script is empty/broken, you might want to temporarily point this 
            # to 22.04 or 25.04, but for now, we keep it standard.
            SCRIPT="$SCRIPT_DIR/install-eSim-24.04.sh"
            ;;
        "22.04" | "23.04" | "23.10")
            # Fallback for older supported versions
            SCRIPT="$SCRIPT_DIR/install-eSim-22.04.sh"
            ;;
        *)
            echo "Error: Unsupported Ubuntu Version: $VERSION_ID"
            echo "Please contact the eSim team or check documentation."
            exit 1
            ;;
    esac

    # Check if the specific script exists
    if [[ -f "$SCRIPT" ]]; then
        echo "------------------------------------------"
        echo "Running installer for Ubuntu $VERSION_ID..."
        echo "Script path: $SCRIPT"
        echo "------------------------------------------"
        bash "$SCRIPT" "$ARGUMENT"
    else
        echo "Error: Installation script not found at: $SCRIPT"
        echo "Ensure you have the install-eSim-scripts folder properly downloaded."
        exit 1
    fi
}

# --- Main Execution Starts Here ---

# Validate argument
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 --install | --uninstall"
    exit 1
fi

ARGUMENT=$1
if [[ "$ARGUMENT" != "--install" && "$ARGUMENT" != "--uninstall" ]]; then
    echo "Invalid argument: $ARGUMENT"
    echo "Usage: $0 --install | --uninstall"
    exit 1
fi

get_ubuntu_version
run_version_script
