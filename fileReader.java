import java.io.*;
import java.util.*;
import java.lang.*;



public class fileReader
{
	private static String found;
	private static ArrayList<String[]> exceptionList;
	
	public static void main(String[] args) 
	{	
		exceptionList = new ArrayList<String[]>();
		String searchString = "getDeviceId";
		File passedDir = new File(args[0]);
		control(passedDir, searchString);
		
	}
	
	public static void control(File dir, String passSS) 
	{
		found=null;
		searchInSmaliFiles(dir, passSS);
		if(found!=null)
		{
			System.out.println("Method: "+found);
			control(dir, found);
		}
	}
	
	public static void searchInSmaliFiles(File dir, String passSS) 
	{
        File[] a = dir.listFiles();
		
		if (a != null)
		{
			for (File f : a) 
			{
				if (f.isDirectory()) 
				{
					searchInSmaliFiles(f, passSS);
				} 
				else if (f.getName().endsWith(".smali")) 
				{
					searchInFile(f.toString(), passSS);
					
				}
			}
		}
		else
		{
			System.out.println("No files or Directories");
		}
		
    }
	
	public static void searchInFile(String fileName, String passSS)
	{
		BufferedReader reader;
		ArrayList readF = new ArrayList();
		try {
            reader = new BufferedReader(new FileReader(fileName));
        
			String line = null;
			
            line = reader.readLine();
       
			while (line != null)
			{
				readF.add(line);
				
				line = reader.readLine();
				
			}
		
		} catch(IOException fnfe3) { 
				System.out.println(fnfe3.getMessage());
		}
		
		boolean exception=false;
		int start =-1, finish = -1;
		if(exceptionList.size()>0)
		{
			for(int z=0; z<exceptionList.size(); z++)
			{
				String[] e = exceptionList.get(z);
				//System.out.println(e[0] + e[1]);
				if(e[0].equals(fileName) && e[1].equals(passSS))
				{
					System.out.println("entered");
					start=Integer.parseInt(e[2]);
					finish=Integer.parseInt(e[3]);
				}
			}
				
		}
			
		for(int i=0; i<readF.size(); i++)
		{
			
			String tmp = readF.get(i).toString();
			if(tmp.contains(passSS) && (i<start || i>finish) )
			{
				System.out.println(passSS+" accessed in " + fileName);
				String[] addE = new String[4];
				addE[0] = fileName;
				addE[1] = passSS;
				addE[3] = Integer.toString(i);
				
				for(int j=i; j>0; j--)
				{
					String tmp2 = readF.get(j).toString();
					if(tmp2.contains("method"))
					{
						String[] methNames = tmp2.split(" ");
						addE[2] = Integer.toString(j-1);
						exceptionList.add(addE);
						
						for (String a : methNames)
						{
							if (a.contains("("))
							{
								int endMethName = a.indexOf("(");
								String methName = a.substring(0, endMethName);
								//System.out.println("Method called in: "+methName);
								found = methName;
							}
						}
						break;
					}
				}
			}
		}
		
	}
	

}