# EICAR test tool for Antivirus testing

Creates EICAR Test signature on disk and also downloads it from EICAR.org over HTTP and HTTPS, also downloads in  base64 format.

SYNTAX: Just run it. No command line parameters reqired.

Performs 5 tests:
1. Writes EICAR AV test signature directly to disk
2. Downloads EICAR AV test signature over HTTP from eicar.org
3. Downloads EICAR AV test signature over HTTPS from eicar.org
4. Downloads EICAR AV test signature (.ZIP) over HTTP from eicar.org
5. Downloads EICAR AV test signature (Base64 encoded) over HTTP from https://pastebin.com/raw/Ui1uKjqQ

All test files gets written to your  %TEMP% folder.

Sometimes you have to access each file (type or copy them) to make the Antivirus react on it.

If it doesn't trigger anything, it either:
  1) doesn't support the standardized test signature, or
  2) just sucks.
