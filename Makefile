deploy:
	@ python -m venv venv
	@ ./venv/bin/pip install fabric3
	@ ./venv/bin/fab deploy
	@ ./venv/bin/pip uninstall -y fabric3
	@ rm -rf venv
