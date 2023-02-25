#!/usr/bin/perl
$pdf_mode          = 1; # use pdflatex
$latex             = 'pdflatex -synctex=1 -halt-on-error %S';
$dvipdf            = 'dvipdfmx %S';
# Prevent latexmk from removing PDF after typeset.
$pvc_view_file_via_temporary = 0;

if ($^O eq 'darwin') {
  $pdf_previewer     = "open -ga /Applications/Skim.app";
} elsif ($^O eq 'linux') {
  $pdf_previewer     = "start evince";
}
