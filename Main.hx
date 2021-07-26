 package;

 import Sys.println;
 import SongMath.calculateLoop;
 import SongMath.cpu_length;
 
 class Main {

    static public var bpm:String;
    static public var length:String;

    static function main() {
    var notes = new NoteGen();

    println("PenncilkDerpnz's FNF track generator");
    println("For the memes");
    println("");
    println("what BPM do you want?");

    bpm = Sys.stdin().readLine();

    println(bpm);
    println("what length should the song be? (in seconds)");

    length = Sys.stdin().readLine();

    println(length);
    println("");
    calculateLoop();
    trace(cpu_length);
    

    for (i in 0...cpu_length) {
    println(notes.makeBar());
    }
    notes.saveSong();
    }


 }
