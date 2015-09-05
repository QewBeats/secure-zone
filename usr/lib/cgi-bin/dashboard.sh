#!/bin/bash
echo "Content-type: text/html"
echo ""
thewho="localhost"
echo '<html>'
  		echo  '<head>'
  			echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
  				echo '<title>Security-Zone Dashboard</title>'
			echo '<link rel="stylesheet" href="/css/materialize.min.css" media="screen,projection" />'
		echo '</head>'
echo '<body>'
	echo '<div class="container">'
		#echo '<div style="color:red;">'

		echo '<h1>'
			echo 'Dashboard'
		echo '</h1>'
		
		echo '<br>'
		
		#echo '</div>'
		
		

     
         echo '<div class="row">'

   
    echo '<form action="#" method="get" >'
    echo '<div class="col s4">'
    echo '<h5 class="waves-effect waves-light btn">'
    echo 'NS Lookup'
    echo '</h5>'
    echo '<input type="text" placeholder="type in url eg facebook.com" name="url1" />' 
    echo '<input type="submit" class="btn waves-effect waves-light" value="Lookup" />'
    echo '<br>'
    nslookup $QUERY_STRING | sed 's/url1\=\([^&]\+\)*/\1/'
    echo '</div>'
    echo '</form>'

    echo '<div class="col s4">'
    echo '<h5 class="waves-effect waves-light btn">'
    echo '<form action="#" method="get" >'
    echo 'Who Is IP/Domain'
    echo '</h5>'
    echo '<input type="text" placeholder="type in url eg twitter.com" name="whois" />' 
    echo '<input type="submit" class="btn waves-effect waves-light" value="Lookup" />'
    echo '<br>'
    whois $QUERY_STRING | sed 's/url1\=\([^&]\+\)*/\1/'
    echo '</div>'
    echo '</form>'
    echo '<div class="col s4">'
    echo '<h5 class="waves-effect waves-light btn">'
    echo 'Future Feature'
    echo '</h5>'
    echo '<br>'

    echo '</div>'
 

    echo   '</div>'
    #end of row   
            


    #second row
  
            echo '<div class="row">'

   
    
    echo '<div class="col s6">'
    echo '<h5 class="waves-effect waves-light btn">'
    echo '<form action="#" method="get" >'
    echo 'Scan Site Vulnerabilities'
    echo '</h5>'
    echo '<input type="text" placeholder="type in url eg twitter.com" name="nikto" />' 
    echo '<input type="submit" class="btn waves-effect waves-light" value="Lookup" />'
    echo '<br>'
    
    nikto Display -V -o results.html -Format htm  -h $QUERY_STRING | sed 's/nikto\=\([^&]\+\)*/\1/'
    php test.php
    echo '</form>'
#number of tests done 
#0 - File Upload
 #1 - Interesting File / Seen in logs
 #2 - Misconfiguration / Default File
 #3 - Information Disclosure
 #4 - Injection (XSS/Script/HTML)
 #5 - Remote File Retrieval - Inside Web Root
 #6 - Denial of Service
 #7 - Remote File Retrieval - Server Wide
 #8 - Command Execution / Remote Shell
 #9 - SQL Injection
 #a - Authentication Bypass
 #b - Software Identification
 #c - Remote Source Inclusion

    echo 'output saved as result.html'
    echo '<a href="../results.html">Results </a>'
    echo '</div>'

    echo '<div class="col s6">'
   
    echo '<h5 class="waves-effect waves-light btn">'
    echo 'Log A Case'
    echo '</h5>'
echo    '<form class="col s12" action="#" method="post">'
     echo  '<p>'
    echo '<input class="with-gap" name="group3" type="radio" id="test5" checked />'
    echo '<label for="fraudntheft">Fraud/Theft</label>'
    echo '</p>'

    
     echo  '<p>'
     echo '<input class="with-gap" name="group3" type="radio" id="test5" checked />'
     echo '<label for="fraudntheft">Cert Report</label>'
     echo '</p>'

    
     echo  '<p>'
    echo '<input class="with-gap" name="group3" type="radio" id="test5" checked />'
    echo '<label for="fraudntheft">Report Suspicious Activity</label>'
    echo '</p>'



echo '<div class="row">'
echo        '<div class="input-field col s12">'
echo          '<textarea id="textarea1" class="materialize-textarea"></textarea>'
echo          '<label for="textarea1">Type In Issue</label>'
echo        '</div>'
echo    ' </div>'

echo '<div class="row">'
echo '<div class="input-field col s12"> ' 
echo '<input class="btn waves-effect waves-light" type="submit" value="Log" />'
echo '</div>'

echo   '</div>'


echo    '</form>'
  

   





    echo '</div>'

    #end od col6 div   
 

    echo   '</div>'
    #end of row     




    echo '</div>'
    #container end
  echo '<script>type="text/javascript" src="js/jquery.js"></script>'
  echo '<script type="text/javascript" src="js/materialize.js"></script>'
echo '</body>'


echo '</html>'

