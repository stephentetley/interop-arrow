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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeUtf8.{ArrowTypeLargeUtf8}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeLargeUtf8(##org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeLargeUtf8] {
        pub def toArrowType(t: ArrowTypeLargeUtf8): ArrowType =
            let ArrowTypeLargeUtf8(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeLargeUtf8 =
            let ArrowType(t1) = t;
            ArrowTypeLargeUtf8(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeUtf8 {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeUtf8
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeUtf8.{ArrowTypeLargeUtf8}

    pub def getHH(t: ArrowTypeLargeUtf8): ##org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8 = 
        let ArrowTypeLargeUtf8(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8): ArrowTypeLargeUtf8 = 
        ArrowTypeLargeUtf8(prim)

    pub def new(): ArrowTypeLargeUtf8 =
        import new org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8(): ##org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8 \ {} as new1;
        ArrowTypeLargeUtf8(new1())

    pub def toString(t: ArrowTypeLargeUtf8): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8.toString(): String \ {};
        let ArrowTypeLargeUtf8(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeLargeUtf8, y: ArrowTypeLargeUtf8): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$LargeUtf8.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeLargeUtf8(x1) = x;
        let ArrowTypeLargeUtf8(y1) = y;
        equals(x1, checked_cast(y1))


}
