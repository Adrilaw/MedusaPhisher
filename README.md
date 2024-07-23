# Medusa Phisher v1.0
Medusa Phisher is a phishing tool script designed to create phishing pages for various online services. It allows users to set up phishing pages for services like Instagram, Facebook, Twitter, and more. The script facilitates hosting these phishing pages using localhost.run for tunnelling, making it easy to capture user credentials.

# Features
Create phishing pages for multiple online services.
Host phishing pages using localhost.run for easy access.
Customizable phishing page creation for a tailored approach.
Catch credentials entered into phishing pages for analysis.
The generated phishing link will be displayed, along with its QR code for easy access.

# Dependencies
PHP: Required for hosting the phishing pages locally.

SSH: Necessary for creating SSH tunnels using localhost.run.

XTERM: Necessary to generate link and QR code.

# Supported Environment
Kali Linux
Parrot security os
Debian 
Ubuntu

# Usage

1. Clone the repository: `git clone https://github.com/Adrilaw/MedusaPhisher.git`
2. Navigate to the script directory: `cd MedusaPhisher`
3. Ensure all dependencies are installed and configured (see Dependencies section).
4. Grants execution permissions to medusa_phisher script: `chmod +x  medusa_phisher.sh`
5. Grants execution permissions to setup script: `chmod +x  setup.sh`
6. The script installs the required dependencies for running the Medusa Phisher script: `sudo ./setup.sh`
7. Run the script: `sudo ./medusa_phisher.sh`
8. Follow the on-screen menu to select a phishing target and start the phishing process. NOTE:The link is generated in the xterm terminal also a QR code too.


![Screenshot (4)](https://github.com/Adrilaw/MedusaPhisher/assets/65346144/75af71ae-c410-4fe5-a628-f4b46f695ee6)




# Disclaimer
This script is intended for educational purposes only. The misuse of this tool for illegal activities is strictly prohibited. The author assumes no responsibility for any misuse of this script.

# Author
Adrilaw (GitHub)

# License
This project is licensed under the GNU General Public License - see the LICENSE file for details.

