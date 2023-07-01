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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeList.{ArrowTypeFixedSizeList}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeFixedSizeList(##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeFixedSizeList] {
        pub def toArrowType(t: ArrowTypeFixedSizeList): ArrowType =
            let ArrowTypeFixedSizeList(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeFixedSizeList =
            let ArrowType(t1) = t;
            ArrowTypeFixedSizeList(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeList {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeList
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFixedSizeList.{ArrowTypeFixedSizeList}

    pub def getHH(t: ArrowTypeFixedSizeList): ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList = 
        let ArrowTypeFixedSizeList(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList): ArrowTypeFixedSizeList = 
        ArrowTypeFixedSizeList(prim)

    pub def new(size: Int32): ArrowTypeFixedSizeList =
        import new org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList(Int32): ##org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList \ {} as new1;
        ArrowTypeFixedSizeList(new1(size))

    pub def toString(t: ArrowTypeFixedSizeList): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList.toString(): String \ {};
        let ArrowTypeFixedSizeList(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeFixedSizeList, y: ArrowTypeFixedSizeList): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$FixedSizeList.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeFixedSizeList(x1) = x;
        let ArrowTypeFixedSizeList(y1) = y;
        equals(x1, checked_cast(y1))


}
