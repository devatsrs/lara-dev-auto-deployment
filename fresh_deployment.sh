#!/bin/sh

echo "loading configuration..."
source $(dirname "$0")/config.sh


#echo "stoping crond..."
#service crond stop

echo "copying code..."
echo "copying web..."
git clone -b ${VERSION} https://super_app/super_app.web.encrypt.git ${WEB_LOCATION}
echo "copying service..."
git clone -b ${VERSION} https://super_app/super_app.service.encrypt.git ${SERVICE_LOCATION}
echo "copying api..."
git clone -b ${VERSION} https://super_app/api.super_app-crm.git ${API_LOCATION}

echo "Executing env_file_folder_permission..."
source ${SCRIPT_BASEDIR}/env_file_and_folder_permission.sh


#Stop Crontab
#service crond stop

echo "Executing fresh_db_creation.sh..."
source ${SCRIPT_BASEDIR}/fresh_db_creation.sh

#clear cache
php ${WEB_LOCATION}/artisan cache:clear
php ${SERVICE_LOCATION}/artisan cache:clear
php ${API_LOCATION}/artisan cache:clear

echo "Complete!"
# Terminate our shell script

exit 0

