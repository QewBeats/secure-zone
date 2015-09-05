#!/bin/bash
echo "Content-type: text/html"
echo ""
echo '<html>'
echo  '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Hello World</title>'
echo '</head>'
echo '<body>'
echo '<div style="color:red;">'
nslookup facebook.com
echo '<br>'
echo '</div>'
echo 'Hello World'
echo '</body>'
echo '</html>'

