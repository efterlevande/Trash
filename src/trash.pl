#!/usr/bin/perl
use warnings;
if($#ARGV + 1 == 0){
  $text="Welcome to trash! \n To Do Delete Files do rm <filename> or trash <filename> \n Everything is moved to a bin, and is cleared every week, \n to empty the bin do 'trash -c' \n";
  print("$text");
  exit;
} elsif($ARGV[0] eq "-c"){
  system("rm -r ~/bin/*");
  exit;
} else{
  $file=$ARGV[0];
  system("mv $file ~/bin");
}




