function Point(x, y) {
    this.origin = {
        x: 0,
        y: 0
    },
    this.x = x;
    this.y = y;
    this.distance = function(other) {
        if (!other) {
            other = this.origin
        };
        return Math.sqrt(Math.pow(this.x - other.x, 2) + Math.pow(this.y - other.y, 2))
    }
}

var point = new Point(4, 3);
console.log( point.distance() );
