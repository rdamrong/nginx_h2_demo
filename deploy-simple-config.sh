#!/bin/sh

SHOST=`hostname -s `

rm -f /etc/nginx/conf.d/${SHOST}.conf
cp ${SHOST}-simple.conf /etc/nginx/conf.d/${SHOST}.conf
systemctl enable nginx
systemctl restart nginx
