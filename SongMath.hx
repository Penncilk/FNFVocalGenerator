import Main.bpm;
import Main.length;
import Std.parseFloat;
import Std.parseInt;
import Std.int;

class SongMath {

    static var bpmFloat:Float;
    static var lengthInt:Int;
    static var beatsper_sec:Float;
    static var beatsper_song:Float;
    static var cpu_lengthFloat:Float;
    public static var cpu_length:Int;

    public static function calculateLoop() {
        bpmFloat = parseFloat(bpm);
        lengthInt = parseInt(length);
        beatsper_sec = bpmFloat / 60;
        beatsper_song = beatsper_sec * lengthInt;
        cpu_lengthFloat = beatsper_song / 4;
        cpu_length = int(cpu_lengthFloat);

    }


}