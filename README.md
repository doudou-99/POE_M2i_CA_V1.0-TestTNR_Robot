# POE_M2i_CA_V1.0-TestTNR_Robot

## Installation du repository en local
Saisir dans le terminal: git clone https://github.com/doudou-99/POE_M2i_CA_V1.0-TestTNR_Robot.git

## Exécution des tests
A chaque push, l'exécution des tests est automatisé grâce à la pipeline CI créée dans le dossier .github/workflows et sur Github, dans la page du repository dans l'onglet Actions, on peut observer l'exécution des tests dans la pipeline.
Une autre manière d'exécuter des tests est de saisir dans le terminal du projet:
1. cd POE_M2i_CA_V1.0-TestTNR_Robot
2. python -m venv venv
3. pip install -r requirements.txt
4. robot -d reports .
