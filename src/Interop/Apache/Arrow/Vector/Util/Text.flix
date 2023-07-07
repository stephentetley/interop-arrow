/*
 * Copyright 2023 Stephen Tetley
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

mod Interop.Apache.Arrow.Vector.Util {

    
    /// Mutable? (has append and clear)

    pub enum Text[_: Region](##org.apache.arrow.vector.util.Text)


}

mod Interop.Apache.Arrow.Vector.Util.Text {

    use Interop.Apache.Arrow.Vector.Util.Text
    use Interop.Apache.Arrow.Vector.Util.Text.{Text}


    pub def getHH(t: Text[r]): ##org.apache.arrow.vector.util.Text = 
        let Text(t1) = t;
        t1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.util.Text): Text[r] = 
        Text(prim)

    pub def new(_: Region[r]): Text[r] \ r =
        import new org.apache.arrow.vector.util.Text(): ##org.apache.arrow.vector.util.Text \ r as new1;
        Text(new1())

    pub def toString(t: Text[r]): String \ r = 
        import org.apache.arrow.vector.util.Text.toString(): String \ r;
        let Text(t1) = t;
        toString(t1)


    pub def equals(x: Text[r], y: Text[r]): Bool \ r =
        import org.apache.arrow.vector.util.Text.equals(##java.lang.Object): Bool \ r;
        let Text(x1) = x;
        let Text(y1) = y;
        equals(x1, checked_cast(y1))


    pub def charAt(index: {index = Int32}, t: Text[r]): Int32 \ r = 
        import org.apache.arrow.vector.util.Text.charAt(Int32): Int32 \ r;
        let Text(t1) = t;
        charAt(t1, index.index)

    pub def append!(utf8: Array[Int8, r], start: {start = Int32}, length: {length = Int32}, t: Text[r]): Unit \ r = 
        import org.apache.arrow.vector.util.Text.append(Array[Int8, r], Int32, Int32): Unit \ r;
        let Text(t1) = t;
        append(t1, utf8, start.start, length.length)

    pub def clear!(t: Text[r]): Unit \ r = 
        import org.apache.arrow.vector.util.Text.clear(): Unit \ r;
        let Text(t1) = t;
        clear(t1)


    pub def copyBytes(t: Text[r]): Array[Int8, r] \ r = 
        import org.apache.arrow.vector.util.Text.copyBytes(): Array[Int8, r] \ r;
        let Text(t1) = t;
        copyBytes(t1)

    pub def getBytes(t: Text[r]): Array[Int8, r] \ r = 
        import org.apache.arrow.vector.util.Text.getBytes(): Array[Int8, r] \ r;
        let Text(t1) = t;
        getBytes(t1)

    pub def getLength(t: Text[r]): Int32 \ r = 
        import org.apache.arrow.vector.util.Text.getLength(): Int32 \ r;
        let Text(t1) = t;
        getLength(t1)

}
