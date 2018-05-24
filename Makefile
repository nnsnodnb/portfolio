deploy:
	@ python -m venv venv
	@ source ./venv/bin/activate
	@ pip install fabric3
	@ fab deploy
	@ pip uninstall -y fabric
	@ deactivate
	@ rm -rf venv
