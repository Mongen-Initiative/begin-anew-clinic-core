# Begin Anew Clinic Core Service

<p>
  This project uses Electron React Boilerplate which uses <a href="https://fastapi.tiangolo.com/">FastAPI</a>
</p>

## Python virtual environment

In order to keep your dependencies in order, we recomend that you create virtual environment for this project:


```bash
python -m venv <repo_folder>
```

Then go into the folder, activate the virtual environment and install the dependencies if not done yet:

```bash
. bin/activate
pip install -r requeriments.txt
```

Start the app:

```bash
sh start_service.sh
```

## Endpoints docs

FastAPI has total integration with Swagger, feel free to check the docs on any of this locations:

- http://localhost:8000/docs
- http://localhost:8000/redoc
