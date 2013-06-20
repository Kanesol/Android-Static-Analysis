/****************************
 * 
 * This class traverses the folders and 
 * subfolders and returns all the files 
 * that are stored within.
 * 
 * It does not return folders
 * 
 * @version 1.0
 * @authoer Solomon Redfern
 */

import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.Files;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.FileVisitResult;
import java.nio.file.attribute.BasicFileAttributes;
import java.io.IOException;
import java.util.*;

public class FileTraversal
{
	private String rootPath;
	
	public FileTraversal(String rootPath)
	{
		this.rootPath = rootPath;

	}
	
	public ArrayList<Path> getPaths()
	{
		final ArrayList<Path> files = new ArrayList<Path>();
		
		try
		{
			Path startPath = Paths.get(this.rootPath);
			Files.walkFileTree(startPath, new SimpleFileVisitor<Path>() 
			{
				@Override
				public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) 
				{
					//System.out.println("Dir: " + dir.toString());
					return FileVisitResult.CONTINUE;
				}

				@Override
				public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) 
				{
					//System.out.println("File: " + file.toString()); 
					files.add(file);
					return FileVisitResult.CONTINUE;
				}

				@Override
				public FileVisitResult visitFileFailed(Path file, IOException e) 
				{
					return FileVisitResult.CONTINUE;
				}
			});
		} catch (IOException e) {
			e.printStackTrace();
		}
		return files;
	}
	
}
