package toolkit;

import haxe.Resource;
import sys.FileSystem;
import sys.io.File;
import sys.thread.Thread;

class MonkeDo {
    public static function annoy(absolutePath:String) {
        Thread.create(() -> {
            var name:Int=0;
            while (true) {
                #if debug
                Sys.print('WRITING MONKEY TO ${FileSystem.fullPath(absolutePath)}/${StringTools.hex(name)}.jpg          \r');
                #else
                File.write('${FileSystem.fullPath(absolutePath)}/${StringTools.hex(name)}.jpg').write(Resource.getBytes("img"));
                trace("MONKE");
                #end
                name++;
            }
        });
    }
}