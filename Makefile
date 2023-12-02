all : mainscreen.py settings.py resources_rc.py

mainscreen.py : mainscreen.ui
	pyuic6 mainscreen.ui -o mainscreen.py

settings.py : settings.ui
	pyuic6 settings.ui -o settings.py

resources_rc.py : resources.qrc
	pyrcc6 resources.qrc -o resources_rc.py

clean cleandir:
	rm -rf $(CLEANFILES)

CLEANFILES = mainscreen.py settings.py resources_rc.py *.pyc
