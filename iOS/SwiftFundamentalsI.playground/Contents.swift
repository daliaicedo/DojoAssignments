let type: String = "Rectangle"
let description: String = "A quadrilateral with four right angles"

var width: Int = 5
var height: Int = 10
var area: Int = width * height

height += 1
width += 1

area = width * height

print("The shape is a \(type) or \(description) with an area of \(area)")