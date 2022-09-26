package ;

import haxe.io.Bytes;
import sys.io.File;

class Monke {
    public static function worker(monke:Bytes, outpath:String):Bool {
        try {
            File.write(outpath, true).write(monke);
        }
        catch (e) {
            return (false);
            throw(e);
        }
        return true;
    }
}