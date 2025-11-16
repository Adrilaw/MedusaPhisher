# Medusa Phisher v1.3
Medusa Phisher is a phishing tool script designed to create phishing pages for various online services. It allows users to set up phishing pages for services like Instagram, Facebook, Twitter, and more. The script facilitates hosting these phishing pages using localhost.run for tunnelling, making it easy to capture user credentials.
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/4bdc1c9b-497b-4094-9074-b291071341ca" />

# Features
1. Create phishing pages for multiple online services.

2. Host phishing pages using localhost.run for easy access.

3. Customizable phishing page creation for a tailored approach.

4. Catch credentials entered into phishing pages for analysis.

5. Add option to choose either to use default port or custom.

6. The generated phishing link will be displayed, along with its QR code for easy access.

# Dependencies
• PHP: Required for hosting the phishing pages locally.

• SSH: Necessary for creating SSH tunnels using localhost.run.

• XTERM: Necessary to generate link and QR code.

• Note: `setup.sh` installs those dependencies for you

# Supported Environment
## • Kali Linux

## • Parrot security os

## • Debian

## • Ubuntu

## • Arch

# Usage

1. Clone the repository: `git clone https://github.com/Adrilaw/MedusaPhisher.git`
2. Navigate to the script directory: `cd MedusaPhisher`
3. Ensure all dependencies are installed and configured (see Dependencies section).
4. Grants execution permissions to medusa_phisher script: `chmod +x  medusa_phisher.sh`
5. Grants execution permissions to setup script: `chmod +x  setup.sh`
6. The script installs the required dependencies for running the Medusa Phisher script: `sudo ./setup.sh`
7. Run the script: `sudo ./medusa_phisher.sh`
8. Follow the on-screen menu to select a phishing target and start the phishing process. NOTE:The link is generated in the xterm terminal with a QR code too.

# Demo

https://github.com/user-attachments/assets/43fcf6f2-987a-4f8c-91da-56efaff2258f









# Disclaimer
This script is intended for educational purposes only. The misuse of this tool for illegal activities is strictly prohibited. The author assumes no responsibility for any misuse of this script.

# Author
Adrilaw @ GitHub

Kidpentester @ xda-developers

# License
MedusaPhisher is licensed under the [GNU General Public License](LICENSE) and the [MedusaPhisher Commercial License](C-LICENSE)- see the LICENSE file for details.

