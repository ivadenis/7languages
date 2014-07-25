// Distance = SquareRoot(xd*xd + yd*yd)
// 

var myLabeledPoint = {
    x: 0,
    y: 0,
    label: "origin"
};

var myPoint = {
    default: { x: 0, y: 0 },
    x: 4,
    y: 3,
    distance: function(other) {
        if (!other) { other = this.default };
        return Math.sqrt(Math.pow(this.x - other.x, 2) + Math.pow(this.y - other.y, 2))
    }
}


console.log(myPoint.distance(myLabeledPoint));
console.log(myPoint.distance());
