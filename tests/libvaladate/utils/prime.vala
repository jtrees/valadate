/*
 * Valadate - Unit testing library for GObject-based libraries.
 * Copyright (C) 2009  Jan Hudec <bulb@ucw.cz>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or (at
 * your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

using GLib;
using Valadate;

namespace Test {
    public class TestPrime : Object, Fixture {
        public int prime { get; set; }

        public static ValueArray generate_prime() {
            var ret = new ValueArray(8);
            ret.append(3);
            ret.append(5);
            ret.append(7);
            ret.append(11);
            ret.append(13);
            ret.append(17);
            ret.append(19);
            ret.append(23);
            return ret;
        }

        public void test_prime() {
            assert(prime > 1);
            for(int i = 2; prime / i >= i; ++i) {
                assert(prime % i != 0);
            }
        }
    }
}
