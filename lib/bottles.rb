class Bottles
    def song
        verses(99, 0)
    end

    def verses(high, low)
        current_verse = high
        text = ""
        while current_verse >= low
            text += verse(current_verse)
            text += "\n" unless current_verse == low
            current_verse = current_verse - 1
        end
        text
    end

    def verse(number)
        case number
        when 0 then
            "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the store and buy some more, " +
            "99 bottles of beer on the wall.\n"
        when 1 then
            "1 bottle of beer on the wall, " +
            "1 bottle of beer.\n" +
            "Take it down and pass it around, " +
            "no more bottles of beer on the wall.\n"
        when 2 then
            "2 bottles of beer on the wall, " +
            "2 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "1 bottle of beer on the wall.\n"
        else
            "#{number} bottles of beer on the wall, " +
            "#{number} bottles of beer.\n" +
            "Take one down and pass it around, " +
            "#{number-1} bottles of beer on the wall.\n"
        end
    end
end