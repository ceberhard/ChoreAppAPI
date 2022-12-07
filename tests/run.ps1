# Setup
.\setup.ps1

# Activate the Virtual Environment
.\virtualenv\Scripts\Activate.ps1

# Run the Test scripts
python .\integration\test_add_chore.py

# Teardown
.\teardown.ps1
