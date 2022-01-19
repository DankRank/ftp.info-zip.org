#!/usr/bin/perl -w
## Author: Ryan Little <rlittle46@comcast.net>
## Useful for generating html content from zip files for indexing with
## htdig, perlfect, etc.
$unzip="/usr/bin/unzip";
$zipinfo="$unzip -Z";
## Make sure we got a file passed to us.
if(!$ARGV[0])
    {
     print "\nUsage:\nzipcontent.pl file.zip\n\n";
     exit;
     }
# Grab our package name.
$zipfile = $ARGV[0];

#Grab the archive name for use as the <TITLE>.
$title = `$zipinfo -h $zipfile`;
$title =~ s/(.*)\/(.*)\n/Archive: $2 /gi; #remove file path
$title =~ s/_/ /gi; #remove any underscores in filename (helps indexer)
$title=~ s/Archive:  (.*).zip(.*)\n/$1/gi; #grab the actual title now, and strip the .zip

#Grab the comments from the zip file. (will go in meta description).
$comments = `$unzip -z $zipfile`;
$comments =~ s/Archive:(.*)\n(.*)/$2/gi; #strip the archive name from the output

#Grab the list of files from the archive (will go in the body of the document under <h1>).
$files= `$zipinfo -1 $zipfile`;
$files=~ s/(.*)\/(.*)\n/$2 /gi; #remove path info

#Put it all together into some properly formatted html output:
print "<!DOCTYPE html PUBLIC \"-\/\/W3C\/\/DTD XHTML 1.0 Strict\/\/EN\"
\"http:\/\/www.w3.org\/TR\/xhtml1\/DTD\/xhtml1-strict.dtd\">\n";
print "<html lang=\"en\" xml:lang=\"en\">\n";
print "<head>\n";
print "<title> $title <\/title>\n";
print "<meta http-equiv=\"content-type\" content=\"text\/html; charset=utf-8\" \/>\n";
print "<meta name=\"description\" content=\"$comments\" \/>\n";
print "<\/head>\n\n";
print "<body>\n";
print "<h1>Files in this archive include:<\/h1>\n";
print "<pre>\n$files\n";
print "<\/pre>\n<\/body>\n<\/html>\n";
