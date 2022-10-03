package toolkit;

import haxe.Exception;
import sys.FileSystem;

class MonkeSee {
	public static function indexFolders(startpath:String):Array<String> {
		if (!FileSystem.isDirectory(startpath))
			throw new Exception('StartPath ${FileSystem.absolutePath(startpath)} is not a directory');
        var ret:Array<String> = [FileSystem.absolutePath(startpath)];
		for (entry in FileSystem.readDirectory(startpath)) {
            if (FileSystem.isDirectory('${startpath}/${entry}'))
                ret = ret.concat(indexFolders('${startpath}/${entry}'));
        }
        return(ret);
	}
}
