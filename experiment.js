var multiplier = 2;
var scores = [316, 320, 312, 370, 337, 318, 214]

var multiplier = 3;

function doubleScores(scores) {
    var newScores = []

    for (var i = 0; i < scores.length; i++) {
        newScores[i] = scores[i] * multiplier;
    }

    return newScores;
}

function scoresLessThan320(scores) {
    return scores.filter(isLessThan320)
}

function isLessThan320(score) {
    return score < 320
}
