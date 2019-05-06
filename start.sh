if [ -z "$SERVICE_NAME" ]; then
    echo "Mising SERVICE_NAME var :: -e SERVICE_NAME=MyServiceName"
    exit 1
fi

if [ -z "$PROJECT_PATH" ]; then
    echo "Mising PROJECT_PATH var :: -e SERVICE_NAME=/home/projects/MyProject.xml"
    exit 1
fi

./SoapUI-5.5.0/bin/mockservicerunner.sh -Djava.awt.headless=true -Dfile.encoding=UTF8 -p 8080 -m $SERVICE_NAME $PROJECT_PATH
