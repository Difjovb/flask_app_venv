
# Stop het script bij fouten
set -e

# 1. Maak een virtual environment
python3 -m venv flask_app_env

# 2. Activeer de virtual environment
source flask_app_env/bin/activate

# 3. Clone de repository
git clone https://github.com/Difjovb/flask_app
cd flask_app

# 5. Maak of update requirements.txt
echo -e "flask\nrequests" > requirements.txt  # Voeg Flask en andere modules toe
# pip install flask 
# pip freeze > requirements.txt

# 6. Installeer de vereisten
pip install -r requirements.txt

# 7. Start de Flask-app
python sample_app.py

