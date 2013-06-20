/*
 * This class handles most of the 
 * file operations for SmaliReader
 * 
 * @version 1.0
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;


public class SmaliIO {
	
	private Path foundInstanceFilename;
	
	public SmaliIO()
	{
		foundInstanceFilename = null;
	}
	
	//This method retrieves the file after
	//Receiving a path
	public ArrayList<String> getFileText(Path path)
	{
		
		path = FileSystems.getDefault().getPath(System.getProperty("user.dir") + "\\smali\\" + path.toString());
			    
	    return readFile(path);
	}
	
	//This method returns a file based on a keyword to be found
	public ArrayList<String> findInstance(CodeInstance keyword)
	{
		FileTraversal fileTraversal = new FileTraversal(System.getProperty("user.dir") + "\\smali\\");
		
		ArrayList<Path> files = fileTraversal.getPaths();
				
		for(Path path : files)
		{
			
			ArrayList<String> fileText = readFile(path);
			for(String line : fileText)
			{
				if(line.contains(keyword.getInstanceName()) && line.contains(keyword.getPackageName()))
				{
					foundInstanceFilename = path;
					return fileText;
				}
			}
		}
		System.out.println("returned null");
		return null;
	}
	
	//Reads in the file
	private ArrayList<String> readFile(Path path)
	{
		ArrayList<String> fileText = new ArrayList<String>();
		
		try 
		{
			BufferedReader reader = Files.newBufferedReader(path, StandardCharsets.UTF_8);
			String line = reader.readLine();
			while (line != null)
			{
				fileText.add(line);
				
				line = reader.readLine();
				
			}
			return fileText;
		}
		catch (IOException e) 
		{
			e.printStackTrace();
		}
		return null;
	}
	
	public Path getFoundInstanceFilename()
	{
		return foundInstanceFilename;
	}
	
}
