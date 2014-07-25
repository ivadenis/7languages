function Point(x, y) {
    this.origin = {
        x: 0,
        y: 0
    },
    this.x = x;
    this.y = y;
}
// a. We still have a distance field in every object. Modify the constructor to set it only in the prototype.

Point.prototype.distance = function(other) {
    if (!other) {
        other = this.origin
    };
    return Math.sqrt(Math.pow(this.x - other.x, 2) + Math.pow(this.y - other.y, 2))
}

// b. Do you need to change the way you construct an object and invoke a method? If so, how?
var point = new Point(4, 3);
console.log(point.distance());

// c. How can you tell that distance is no longer a property of each object? (Be sure to really prove this.)


