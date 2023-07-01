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

mod Interop.Apache.Arrow.Vector.Types.Pojo {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeBinary.{ArrowTypeFixedSizeBinary}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeFixedSizeBinary(##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeFixedSizeBinary] {
        pub def toArrowType(t: ArrowTypeFixedSizeBinary): ArrowType =
            let ArrowTypeFixedSizeBinary(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeFixedSizeBinary =
            let ArrowType(t1) = t;
            ArrowTypeFixedSizeBinary(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeBinary {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeBinary
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeBinary.{ArrowTypeFixedSizeBinary}


    pub def getHH(s: ArrowTypeFixedSizeBinary): ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary = 
        let ArrowTypeFixedSizeBinary(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary): ArrowTypeFixedSizeBinary = 
        ArrowTypeFixedSizeBinary(prim)


    pub def new(byteWidth: Int32): ArrowTypeFixedSizeBinary =
        import new org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary(Int32): ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary \ {} as new1;
        ArrowTypeFixedSizeBinary(new1(byteWidth))

    pub def toString(t: ArrowTypeFixedSizeBinary): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary.toString(): String \ {};
        let ArrowTypeFixedSizeBinary(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeFixedSizeBinary, y: ArrowTypeFixedSizeBinary): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeBinary.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeFixedSizeBinary(x1) = x;
        let ArrowTypeFixedSizeBinary(y1) = y;
        equals(x1, checked_cast(y1))


}
