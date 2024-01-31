#!/usr/bin/with-contenv bashio
set +u

sed -i "s/{{HOSTNAME}}/$HOSTNAME/g" custom_component/whatsapp.py

mkdir -p config/custom_components/whatsapp_self
cp --recursive /custom_component/* config/custom_components/whatsapp_self/
bashio::log.info "Installed custom component."

node index
