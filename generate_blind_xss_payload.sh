#!/bin/bash

# Prompt user for the Burp Collaborator URL
read -p "Enter your Burp Collaborator URL (e.g., your-custom-id.burpcollaborator.net): " collaborator_url

# Validate input
if [[ -z "$collaborator_url" ]]; then
    echo "Collaborator URL cannot be empty. Exiting."
    exit 1
fi

# Prompt user for the output file location
read -p "Enter the output file path (e.g., /path/to/blind_xss_payloads_saved.txt): " output_file

# Validate output file input
if [[ -z "$output_file" ]]; then
    echo "Output file path cannot be empty. Exiting."
    exit 1
fi

# Replace the placeholder URL in the payload file and save to the output file
sed "s/example\.burpcollaborator\.net/$collaborator_url/g" blind_xss_payloads.txt > "$output_file"

# Confirm completion
echo "Payloads with the updated Burp Collaborator URL have been saved to $output_file"
