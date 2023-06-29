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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBinary.{ArrowTypeBinary}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeBinary(##org.apache.arrow.vector.types.pojo.ArrowType$Binary)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeBinary] {
        pub def toArrowType(t: ArrowTypeBinary): ArrowType =
            let ArrowTypeBinary(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeBinary =
            let ArrowType(t1) = t;
            ArrowTypeBinary(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Binary)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBinary {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBinary
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBinary.{ArrowTypeBinary}


    pub def getHH(s: ArrowTypeBinary): ##org.apache.arrow.vector.types.pojo.ArrowType$Binary = 
        let ArrowTypeBinary(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Binary): ArrowTypeBinary = 
        ArrowTypeBinary(prim)


    pub def new(): ArrowTypeBinary =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Binary(): ##org.apache.arrow.vector.types.pojo.ArrowType$Binary \ {} as new1;
        ArrowTypeBinary(new1())

    pub def toString(t: ArrowTypeBinary): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Binary.toString(): String \ {};
        let ArrowTypeBinary(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeBinary, y: ArrowTypeBinary): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Binary.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeBinary(x1) = x;
        let ArrowTypeBinary(y1) = y;
        equals(x1, checked_cast(y1))


}
