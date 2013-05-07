import java.io.File;
import java.util.*;
import java.lang.*;

public class missionControl
{
	ArrayList<smailReader> smaliReaders = new ArrayList<smailReader>();

	public void process()
	{
		ArrayList<string> traceLog = new ArrayList<string>();
		fileTraversal fileTraversal = new fileTraversal("C:\\Users\\Kanesol\\Dropbox\\Malware Samples\\smali\\");
		ArrayList<string> files = fileTraversal.getPaths();
		
		String result = "";
		String search = "->getDeviceId";
		
		for(int i=0; i< files.size(); i++)
		{
			File file = new File(files.get(i).toString());
			smaliReader reader = new smaliReader(file, 0, search);
			smaliReaders.add(reader);
		}
		
		while (this.smaliReaders.size() > 0)
		{
			smaliReader reader = this.smaliReaders.get(0);
			
			if (reader.file == null)
			{
				for(int i=0; i< files.size(); i++)
				{
					File file = new File(files.get(i).toString());
					smaliReader reader = new smaliReader(file, 0, reader.keyword);
					smaliReaders.add(reader);
				}
				
				
				smaliReader.remove(0);
				continue;
			}
			
			ArrayList<smaliReader> newSmaliReaders = reader.findKeyword();
			
			if(result.compareTo("")!=0)
			{
				search=result;
				this.smaliReaders.add(new smaliReader(reader.File, 0, search);				
			
				traceLog.add(reader.getTraceLog());
				result="";
			}
			
			smaliReaders.remove(0);
		}
				
		ArrayList log = (ArrayList)traceLog.get(traceLog.size()-1);
		
		System.out.println("Final call at: "+log.get(log.size()-1));
	}
	
	public static void main(String [] args)
	{
		new missionControl().process();
		
	}
} 