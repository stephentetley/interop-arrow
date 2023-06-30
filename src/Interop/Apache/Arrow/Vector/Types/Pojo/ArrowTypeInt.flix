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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt.{ArrowTypeInt}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeInt(##org.apache.arrow.vector.types.pojo.ArrowType$Int)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeInt] {
        pub def toArrowType(t: ArrowTypeInt): ArrowType =
            let ArrowTypeInt(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeInt =
            let ArrowType(t1) = t;
            ArrowTypeInt(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Int)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt.{ArrowTypeInt}

    pub def getHH(t: ArrowTypeInt): ##org.apache.arrow.vector.types.pojo.ArrowType$Int = 
        let ArrowTypeInt(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Int): ArrowTypeInt = 
        ArrowTypeInt(prim)

    pub def new(bitWidth: Int32, isSigned: Bool): ArrowTypeInt =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Int(Int32, Bool): ##org.apache.arrow.vector.types.pojo.ArrowType$Int \ {} as new1;
        ArrowTypeInt(new1(bitWidth, isSigned))

    pub def toString(t: ArrowTypeInt): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Int.toString(): String \ {};
        let ArrowTypeInt(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeInt, y: ArrowTypeInt): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Int.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeInt(x1) = x;
        let ArrowTypeInt(y1) = y;
        equals(x1, checked_cast(y1))


}
