---* returns a constant Vector
---@return vector|vector3
function ConstVec(v) return v end

---@class g_Vectors
---* global Vectors table
g_Vectors = {
    --- basic zero vector
    v000 = ConstVec({x = 0, y = 0, z = 0}),

    --- positive z-axis direction vector
    v001 = ConstVec({x = 0, y = 0, z = 1}),

    --- positive y-axis direction vector
    v010 = ConstVec({x = 0, y = 1, z = 0}),

    --- positive y and z-axis direction vector
    v011 = ConstVec({x = 0, y = 1, z = 1}),

    --- positive x-axis direction vector
    v100 = ConstVec({x = 1, y = 0, z = 0}),

    --- positive x and z-axis direction vector
    v101 = ConstVec({x = 1, y = 0, z = 1}),

    --- positive x and y-axis direction vector
    v110 = ConstVec({x = 1, y = 1, z = 0}),

    --- positive x, y and z-axis vector
    v111 = ConstVec({x = 1, y = 1, z = 1}),

    --- positive z-axis direction vector
    up = ConstVec({x = 0, y = 0, z = 1}),

    --- negative z-axis direction vector
    down = ConstVec({x = 0, y = 0, z = -1}),
    --- temporary zero vector
    ---@type vector3
    temp = {x = 0, y = 0, z = 0},
    --- temporary zero vector, commonly used for passing rgb color values
    ---@type vector3
    tempColor = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    temp_v1 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    temp_v2 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    temp_v3 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    temp_v4 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    temp_v5 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    temp_v6 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    vecMathTemp1 = {x = 0, y = 0, z = 0},
    --- temporary zero vector
    ---@type vector3
    vecMathTemp2 = {x = 0, y = 0, z = 0},
}

--- basic radian to degree conversion value
g_Rad2Deg = 180 / math.pi;
--- basic degree to radian conversion value
g_Deg2Rad = math.pi / 180;
--- basic Pi constant based on math.pi
g_Pi = math.pi;
--- basic double Pi constant based on math.pi
g_2Pi = 2 * math.pi;
--- basic half Pi constant based on math.pi
g_Pi2 = 0.5 * math.pi;

---* Returns true if all vector components of the given vector a are null.
---@param a vector|vector3
---@return boolean
function IsNullVector(a) end

---* Returns true if any vector components of the given vector a is not null.
---@param a vector|vector3  to check if any of it's components are not null
---@return boolean
function IsNotNullVector(a) end

---* Returns the squared length of the given vector a.
---@param a vector3  to get the squared length from
---@return number
function LengthSqVector(a) end

---* Returns the length of the given vector a.
---@param a vector3 to get the length from
---@return number
function LengthVector(a) end

---* Returns the squared distance between vector a and vector b.
---@param a vector3
---@param b vector3
---@return number
function DistanceSqVectors(a, b) end

---* Returns the squared distance between vector a and vector b in 2D space (without z-component).
---@param a vector
---@param b vector
---@return number
function DistanceSqVectors2d(a, b) end

---* Returns the distance between vector a and vector b.
---@param a vector3
---@param b vector3
---@return number
function DistanceVectors(a, b) end

---* Returns the dot product between vector a and vector b.
---@param a vector3
---@param b vector3
---@return number
function dotproduct3d(a, b) end

---* Returns the dot product between vector a and vector b in 2D space (without z-component).
---@param a vector
---@param b vector
---@return number
function dotproduct2d(a, b) end

---* Logs a given vector to console.
---| usage `LogVec("Local Actor Position", g_localActor:GetPos())`
---@param name string   description name of the vector
---@param v vector3
function LogVec(name, v) end

---* Sets all vector components of the given vector `dest` to zero.
---@param dest vector3 to set
function ZeroVector(dest) end

---* Copies the components of the vector src to the vector dest.
---@param dest vector3	destination vector
---@param src vector3   source vector
function CopyVector(dest, src) end

function SumVectors(a, b) end

function NegVector(a) end

function SubVectors(dest, a, b) end

function FastSumVectors(dest, a, b) end

function DifferenceVectors(a, b) end

function FastDifferenceVectors(dest, a, b) end

function ProductVectors(a, b) end

function FastProductVectors(dest, a, b) end

function ScaleVector(a, b) end

function ScaleVectorInPlace(a, b) end

function NormalizeVector(a) end

function FastScaleVector(dest, a, b) end

function LerpColors(a, b, k) end

function Lerp(a, b, k) end

function __max(a, b) end

function __min(a, b) end

function clamp(_n, _min, _max) end

function Interpolate(actual, goal, speed) end

function sgn(a) end

function sgnnz(a) return (a >= 0) and 1 or -1; end

function sqr(a) return a * a; end

function randomF(a, b) end

function VecRotate90_Z(v) end

function VecRotateMinus90_Z(v) end

function iff(c, a, b) end

---* calculate cross product
function crossproduct3d(dest, p, q) end

---* rotate vector p around vector r by angle
---| the length of r needs to be 1
function RotateVectorAroundR(dest, p, r, angle) end

---* project P to the surface whose normal vector is N.
function ProjectVector(dest, P, N) end

---* get a distance between line(pt+q) and point(a)
function DistanceLineAndPoint(a, p, q) end

---* Get normalized direction vector from point 'a' to point 'b'
function GetDirection(a, b) end

function GetAngleBetweenVectors2D(a, b) end

function GetAngleBetweenVectors(a, b) end
