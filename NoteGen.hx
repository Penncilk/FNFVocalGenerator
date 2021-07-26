 package;

import Std.random;
import sys.io.File.saveContent;

class NoteGen {

    var scale = ["A", "B", "C", "D", "E", "F", "G#"];
    
    var note1:String;
    var note2:String;
    var note3:String;
    var note4:String;

    var note5:String = "";
    var note6:String = "";
    var note7:String = "";
    var note8:String = "";

    var output:String = "start";
    var choice:Int;
    var halfnote:Int;

    public function new() {}

    public function makeBar() {
        note5 = ""; 
        note6 = ""; 
        note7 = ""; 
        note8 = ""; 


        halfnote = 0;
        choice = random(scale.length);
        halfnote = random(2);
        note1 = scale[choice];

        if (halfnote == 1) {
            choice = random(scale.length);
            note1 = note1 + "2";
            note5 = scale[choice] + "2";
        }

        halfnote = 0;
        choice = random(scale.length);
        halfnote = random(2);
        note2 = scale[choice];

        if (halfnote == 1) {
            choice = random(scale.length);
            note2 = note2 + "2";
            note6 = scale[choice] + "2";
        }

        halfnote = 0;
        choice = random(scale.length);
        halfnote = random(2);
        note3 = scale[choice];

        if (halfnote == 1) {
            choice = random(scale.length);
            note3 = note3 + "2";
            note7 = scale[choice] + "2";
        }

        halfnote = 0;
        choice = random(scale.length);
        halfnote = random(2);
        note4 = scale[choice];

        if (halfnote == 1) {
            choice = random(scale.length);
            note4 = note4 + "2";
            note8 = scale[choice] + "2";
        }

        output = output + " | " + note1 + ", " + note5 + ", " +  note2 + ", " + note6 + ", " + note3 + ", " + note7 + ", " + note4 + ", " + note8;
        return note1 + " | " + note5 + " | " + note2 + " | " + note6 + " | " + note3 + " | " + note7 + " | " + note4 + " | " + note8; 
    }

    public function saveSong() {
        saveContent("./song.txt", output);
    }
}