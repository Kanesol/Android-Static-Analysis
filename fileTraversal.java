import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.Files;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.io.IOException;
import java.util.*;
import java.lang.*;

public class fileTraversal
{
	private String rootPath;
	
	public fileTraversal(String rootPath)
	{
		this.rootPath = rootPath;

	}
	
	public ArrayList<string> getPaths()
	{
		private ArrayList<string> files = new ArrayList<string>();
		
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
					files.add(file.toString());
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
