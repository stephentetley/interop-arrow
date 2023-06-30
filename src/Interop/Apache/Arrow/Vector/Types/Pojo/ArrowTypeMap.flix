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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeMap.{ArrowTypeMap}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeMap(##org.apache.arrow.vector.types.pojo.ArrowType$Map)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeMap] {
        pub def toArrowType(t: ArrowTypeMap): ArrowType =
            let ArrowTypeMap(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeMap =
            let ArrowType(t1) = t;
            ArrowTypeMap(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Map)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeMap {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeMap
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeMap.{ArrowTypeMap}

    pub def getHH(t: ArrowTypeMap): ##org.apache.arrow.vector.types.pojo.ArrowType$Map = 
        let ArrowTypeMap(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Map): ArrowTypeMap = 
        ArrowTypeMap(prim)

    pub def new(keysSorted: Bool): ArrowTypeMap =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Map(Bool): ##org.apache.arrow.vector.types.pojo.ArrowType$Map \ {} as new1;
        ArrowTypeMap(new1(keysSorted))

    pub def toString(t: ArrowTypeMap): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Map.toString(): String \ {};
        let ArrowTypeMap(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeMap, y: ArrowTypeMap): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Map.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeMap(x1) = x;
        let ArrowTypeMap(y1) = y;
        equals(x1, checked_cast(y1))


}
