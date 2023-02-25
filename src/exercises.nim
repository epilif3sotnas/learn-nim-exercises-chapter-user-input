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

# proc exercise_3*(point_1: tuple[x, y: float], point_2: tuple[x, y: float]): tuple[x, y: float] =
#     return (point_1[0] + point_2[0], point_1[1] + point_2[1])

# proc tick() =
#     echo "tick"

# proc tock() =
#     echo "tock"

# proc exercise_4*() =
#     for idx in countup(1,20):
#         tick()
#         tock()