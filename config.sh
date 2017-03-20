#!/bin/sh

#Version number to be deploy
VERSION=4.09
#Rollback Version number to be deploy
PREVIOUS_VERSION=4.08
# is wholesale setup or retail
IS_WHOLESALE=0
#Company name in Licence
COMPANY=DevCompany
#Real Company Name
DB_COMPANY_NAME="Dev Company"
#First Name for Company Page
FIRST_NAME=Dev
#First Name for Company Page
LAST_NAME=Company
#Company Email for company email
COMPANY_EMAIL=dev@companyname.com
#Licence key
LICENCE_KEY=P2bs9zeJGFfAOitXauVjio0G3Q12xQet
#Temp path for document upload and cdrs.
TEMP_PATH=/var/www/tmp
#DB host ip or name
DB_HOST=localhost
#DB host username
DB_USERNAME=super-user
#DB host password salt (any 5 character)
DB_PASSWORD_SALT=U03Y!
#DB Password with salt
DB_PASSWORD=${DB_PASSWORD_SALT}password
# OLD / Existing SUPERAPP DB Name (for first time deployment only.)
OLD_DB_DATABASE=DevCompany2RM
#SUPERAPP DB Name
DB_DATABASE=${COMPANY}SUPERAPP
#OLD/Existing Billing DB Name (for first time deployment only.)
OLD_DB_DATABASE2=DevCompany2Billing
#Billing DB Name
DB_DATABASE2=${COMPANY}Billing
#OLD/Existing CDR DB Name (for first time deployment only.)
OLD_DB_DATABASECDR=DevCompany2CDR
#CDR DB Name
DB_DATABASECDR=${COMPANY}CDR
#OLD/Existing Report DB Name (for first time deployment only.)
OLD_DB_DATABASEREPORT=DevCompany2Report
#Report DB Name
DB_DATABASEREPORT=${COMPANY}Report
#Domain Name
HOST_DOMAIN=domain.super-soft.com
#HTTP / HTTPS
HOST_DOMAIN_URL=http://${HOST_DOMAIN}
#Host IP = DB Host(IP)
HOST_IP=${DB_HOST}
#web folder name (standard)
WEB_FOLDER_NAME=${COMPANY}.super
#service folder name (standard)
SERVICE_FOLDER_NAME=${COMPANY}.super.service
#API folder name (standard)
API_FOLDER_NAME=super.api
#Web Service Root location
DOC_ROOT=/var/www/html
#Web location
WEB_LOCATION=${DOC_ROOT}/${WEB_FOLDER_NAME}
#Web URL
WEB_URL=${HOST_DOMAIN_URL}
#Service location
SERVICE_LOCATION=${DOC_ROOT}/${SERVICE_FOLDER_NAME}
#API location within web.
API_LOCATION=${WEB_LOCATION}/public/${API_FOLDER_NAME}
#API Url
APP_API_URL=${WEB_URL}/${API_FOLDER_NAME}/public/api
#Internal variable for __DIR__ equivalent in shell script
SCRIPT_BASEDIR=$(dirname "$0")
#SSH Settings for host ip / domain for cron job and other shell commands.
SSH_HOST=localhost
#SSH user
SSH_HOST_USER=root
#SSH password
SSH_HOST_PASS=
#Web Storage locations
FRONT_STORAGE_PATH=${WEB_LOCATION}"/app/storage"
#Sippy cdr file location
SIPPYFILE_LOCATION=${TEMP_PATH}"/sippy_files"
#Vos cdr file Location
VOS_LOCATION=${TEMP_PATH}"/vos_files"
#Email to customer?
EMAIL_TO_CUSTOMER=1
#Upload path
UPLOAD_PATH=${TEMP_PATH}"/uploads"
#Account document path
ACC_DOC_PATH=${TEMP_PATH}"/account_documents"
#Payment proof path
PAYMENT_PROOF_PATH=${TEMP_PATH}"/payment_proof"
#profile_pictures
PROFILE_PICTURE_PATH=${TEMP_PATH}"/profile_pictures"
#First time sql
FIRST_TIME_POST_INSTALLATION_SQL_SCRIPT=${SCRIPT_BASEDIR}"/first_time_post_installation.sql"