//
// NopSCADlib Copyright Chris Palmer 2025
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// This file is part of NopSCADlib.
//
// NopSCADlib is free software: you can redistribute it and/or modify it under the terms of the
// GNU General Public License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// NopSCADlib is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with NopSCADlib.
// If not, see <https://www.gnu.org/licenses/>.
//
include <../core.scad>
use <../utils/chamfer.scad>

module chamfer() {
    difference() {
        h = 1;
        rounded_rectangle([20, 20, h], 2);

        translate_z(h)
            chamfer_hole(h + eps) {
                circle(2);

                translate([-1, 0])
                    square([2, 5]);
            }
    }
}

chamfer();
