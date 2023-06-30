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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeUtf8.{ArrowTypeUtf8}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeUtf8(##org.apache.arrow.vector.types.pojo.ArrowType$Utf8)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeUtf8] {
        pub def toArrowType(t: ArrowTypeUtf8): ArrowType =
            let ArrowTypeUtf8(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeUtf8 =
            let ArrowType(t1) = t;
            ArrowTypeUtf8(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Utf8)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeUtf8 {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeUtf8
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeUtf8.{ArrowTypeUtf8}

    pub def getHH(t: ArrowTypeUtf8): ##org.apache.arrow.vector.types.pojo.ArrowType$Utf8 = 
        let ArrowTypeUtf8(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Utf8): ArrowTypeUtf8 = 
        ArrowTypeUtf8(prim)

    pub def new(): ArrowTypeUtf8 =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Utf8(): ##org.apache.arrow.vector.types.pojo.ArrowType$Utf8 \ {} as new1;
        ArrowTypeUtf8(new1())

    pub def toString(t: ArrowTypeUtf8): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Utf8.toString(): String \ {};
        let ArrowTypeUtf8(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeUtf8, y: ArrowTypeUtf8): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Utf8.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeUtf8(x1) = x;
        let ArrowTypeUtf8(y1) = y;
        equals(x1, checked_cast(y1))


}
