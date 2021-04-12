# File manipulation

## Specify input

First you need to choose which files to work with. By default, all files in current directory are selected.

```
./FileManipulation
```

If you want select all files from another directory, you can use `-Dir` argument.

```
./FileManipulation -Dir my_dir/files
```

You can also specify files from that directory using `-Mask` argument.

```
./FileManipulation -Mask *.txt
```

## Specify output

By default, all changes will be executed in the selected directory (selected files can be changed). If you want to write the result to another directory, you can specify it with the `-Out` argument.

```
./FileManipulation -Out out_dir
```

After you select input and output of script, you can perform various actions.

## Add content

You can add content (text) to all selected files using `-Add` argument. By default, new content will be added to the end of file.

```
./FileManipulation -Add "new content"
```

You can also specify on which line the content will be inserted with `-Line` argument.

```
./FileManipulation -Add "new content" -Line 1
```

## Set content

If you need to delete the old contents of files and set new one, `-Set` can be used.

```
./FileManipulation -Set "new content"
```

## Sort into subdirectories

You can also sort files into subdirectories according their metadata, e. g. year of creation.

```
./FileManipulation -DirSort Year
```

Allowed values for `-DirSort` argument are:

- `Year` – year of creation,
- `Month` – month of creation,
- `Day` – day of creation,
- `City` – city where the file was created (only for images with Exif information).

