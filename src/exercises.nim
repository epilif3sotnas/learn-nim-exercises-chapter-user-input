# nim
import strutils


proc exercise_1*() =
    echo "Enter your Height:"
    let height = read_line(stdin).parseFloat()

    echo "Enter your Weight:"
    let weight = read_line(stdin).parseFloat()

    let bmi = weight / (height * height)
    echo("BMI: " & $bmi)

proc exercise_2*() =
    echo "Enter a number:"
    var num = read_line(stdin).parseInt()

    var sequence: seq[int] = @[num]
    while num != 1:
        if num mod 2 == 0:
            num = (num / 2).toInt()
            sequence.add(num)
            continue

        num = (3 * num) + 1
        sequence.add(num)

    echo("Result: " & $sequence)

proc exercise_3*() =
    echo "Enter a word:"
    let text = read_line(stdin)

    var inversed_text = ""
    
    for letter in text:
        inversed_text = $letter & inversed_text

    echo("Word: " & $text)
    echo("Word inversed: " & $inversed_text)