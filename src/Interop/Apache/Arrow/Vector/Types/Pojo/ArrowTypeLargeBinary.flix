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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeBinary.{ArrowTypeLargeBinary}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeLargeBinary(##org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeLargeBinary] {
        pub def toArrowType(t: ArrowTypeLargeBinary): ArrowType =
            let ArrowTypeLargeBinary(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeLargeBinary =
            let ArrowType(t1) = t;
            ArrowTypeLargeBinary(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeBinary {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeBinary
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeBinary.{ArrowTypeLargeBinary}

    pub def getHH(t: ArrowTypeLargeBinary): ##org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary = 
        let ArrowTypeLargeBinary(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary): ArrowTypeLargeBinary = 
        ArrowTypeLargeBinary(prim)

    pub def new(): ArrowTypeLargeBinary =
        import new org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary(): ##org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary \ {} as new1;
        ArrowTypeLargeBinary(new1())

    pub def toString(t: ArrowTypeLargeBinary): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary.toString(): String \ {};
        let ArrowTypeLargeBinary(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeLargeBinary, y: ArrowTypeLargeBinary): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$LargeBinary.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeLargeBinary(x1) = x;
        let ArrowTypeLargeBinary(y1) = y;
        equals(x1, checked_cast(y1))


}
