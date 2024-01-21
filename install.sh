#!/bin/bash

# Function to display script descriptions
display_scripts() {
    echo "Available scripts:"
    for i in "${!script_descriptions[@]}"; do
        echo "$(($i + 1)). ${script_descriptions[$i]}"
    done
}

# Function to run selected scripts
run_scripts() {
    echo "Running selected scripts..."
    for script_number in "${selected_scripts[@]}"; do
        if [ "$script_number" -ge 1 ] && [ "$script_number" -le "${#script_descriptions[@]}" ]; then
            case $script_number in
                1)
                    echo "Running script: script_nerdfont_icons.sh"
                    bash ./scripts/script_nerdfont_icons.sh
                    ;;
                2)
                    echo "Running script: script_pipewire.sh"
                    bash ./scripts/script_pipewire.sh
                    ;;
                3)
                    echo "Running script: script_setup_coding_tools.sh"
                    bash ./scripts/script_setup_coding_tools.sh
                    ;;
                4)
                    echo "Running script: script_setup_coding_utilities.sh"
                    bash ./scripts/script_setup_coding_utilities.sh
                    ;;
                5)
                    echo "Running script: script_setup_nvim.sh"
                    bash ./scripts/script_setup_nvim.sh
                    ;;
                6)
                    echo "Running script: script_setup_starship.sh"
                    bash ./scripts/script_setup_starship.sh
                    ;;
                7)
                    echo "Running script: script_ubuntu_standard_changes.sh"
                    bash ./scripts/script_ubuntu_standard_changes.sh
                    ;;
                # Add more if statements for additional scripts as needed
                *)
                    echo "Invalid script number: $script_number. Skipping..."
                    ;;
            esac
        else
            echo "Invalid script number: $script_number. Skipping..."
        fi
    done
}

# Script descriptions and corresponding script names
script_descriptions=(
    "Install Nerd Font Icons"
    "Install Pipewire"
    "Setup Coding Tools"
    "Setup Coding Utilities"
    "Setup Neovim"
    "Setup Starship"
    "Ubuntu Standard Changes"
)

# Display script descriptions with unique numbers
display_scripts

# Read user input for script selection
read -p "Enter the numbers of the scripts you want to run (comma-separated), 'all' to run all scripts, or 'cancel' to cancel: " input

case $input in
    all)
        selected_scripts=($(seq 1 ${#script_descriptions[@]}))
        run_scripts
        ;;
    cancel)
        echo "Script execution canceled."
        ;;
    *)
        IFS=',' read -ra script_numbers <<< "$input"
        selected_scripts=()
        for number in "${script_numbers[@]}"; do
            selected_scripts+=("$number")
        done
        run_scripts
        ;;
esac
