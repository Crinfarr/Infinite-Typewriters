package naturalName;

function genName() {
    return [for (_ in 0...2) {makeSyllable(null);}].join("");
}

private function makeSyllable(startswith:Null<String>) {
    var syl:String = "";
    if (startswith != null) {
        syl += startswith;
    }
    else {
        syl += letters[Math.round(Math.random()*25)];
    }
    if (syl.charAt(0) == "q") {
        syl += "u";
    }
    syl += vowels[Math.round(Math.random()*5)];
    syl += letters[Math.round(Math.random()*25)];
    return syl;
}

final letters:Array<String> = [for (x in 0...26) (String.fromCharCode(x+97))];

final vowels:Array<String> = ["a", "e", "i", "o", "u", "y"];