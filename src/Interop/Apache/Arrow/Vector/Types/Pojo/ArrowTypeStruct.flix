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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeStruct.{ArrowTypeStruct}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeStruct(##org.apache.arrow.vector.types.pojo.ArrowType$Struct)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeStruct] {
        pub def toArrowType(t: ArrowTypeStruct): ArrowType =
            let ArrowTypeStruct(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeStruct =
            let ArrowType(t1) = t;
            ArrowTypeStruct(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Struct)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeStruct {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeStruct
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeStruct.{ArrowTypeStruct}

    pub def getHH(t: ArrowTypeStruct): ##org.apache.arrow.vector.types.pojo.ArrowType$Struct = 
        let ArrowTypeStruct(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Struct): ArrowTypeStruct = 
        ArrowTypeStruct(prim)

    pub def new(): ArrowTypeStruct =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Struct(): ##org.apache.arrow.vector.types.pojo.ArrowType$Struct \ {} as new1;
        ArrowTypeStruct(new1())

    pub def toString(t: ArrowTypeStruct): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Struct.toString(): String \ {};
        let ArrowTypeStruct(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeStruct, y: ArrowTypeStruct): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Struct.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeStruct(x1) = x;
        let ArrowTypeStruct(y1) = y;
        equals(x1, checked_cast(y1))


}
