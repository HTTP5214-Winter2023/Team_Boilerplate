window.onload = (event) => {
    console.log("page is fully loaded");
 

var ans = document.getElementsByClassName("answers")

function compareNumbers(a, b) {
    return a - b;
}

function bias(ratings) {
    var re = ratings.sort(compareNumbers)
    var an = 0
    
    for (i = 0; i < re.length; i++) {
        an = an + ((re[i + 1]) - re[i])
        re.splice(0, 2)
        i--;
    }
    return an;
};


bias([1, 3, 7, 5, 10, 12])=ans.innerTEXT
};
