# Backup Script

This project contains a script to create a backup of a specified directory.
The resulting backup archive can be compressed using the selected algorithm (none, gzip, bzip, etc.),
and it will be encrypted.

## Usage

The script accepts three parameters:

* __Directory to backup__: The path of the directory you want to back up.
* __Compression algorithm__: The algorithm you want to use for compression. You can choose from none, gzip, or bzip.
* __Output file name__: The name of the output file where the backup will be stored.

Here's an example of how you can call the script:

```bash
./backup-script.sh /path/to/directory gzip backup.tar.gz
```

This example would back up the contents of `/path/to/directory`,
compress them using gzip, and save the result in a file named `backup.tar.gz`.

## Error Handling
All output, except errors, is suspended during the execution of the script.
Any errors that occur will be written to the `error.log` file instead of stderr.

## Requirements
tar: Used for creating the archive and handling compression.
openssl: Used for encrypting the backup archive.