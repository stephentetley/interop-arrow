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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeList.{ArrowTypeLargeList}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeLargeList(##org.apache.arrow.vector.types.pojo.ArrowType$LargeList)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeLargeList] {
        pub def toArrowType(t: ArrowTypeLargeList): ArrowType =
            let ArrowTypeLargeList(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeLargeList =
            let ArrowType(t1) = t;
            ArrowTypeLargeList(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$LargeList)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeList {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeList
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeLargeList.{ArrowTypeLargeList}

    pub def getHH(t: ArrowTypeLargeList): ##org.apache.arrow.vector.types.pojo.ArrowType$LargeList = 
        let ArrowTypeLargeList(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$LargeList): ArrowTypeLargeList = 
        ArrowTypeLargeList(prim)

    pub def new(): ArrowTypeLargeList =
        import new org.apache.arrow.vector.types.pojo.ArrowType$LargeList(): ##org.apache.arrow.vector.types.pojo.ArrowType$LargeList \ {} as new1;
        ArrowTypeLargeList(new1())

    pub def toString(t: ArrowTypeLargeList): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$LargeList.toString(): String \ {};
        let ArrowTypeLargeList(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeLargeList, y: ArrowTypeLargeList): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$LargeList.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeLargeList(x1) = x;
        let ArrowTypeLargeList(y1) = y;
        equals(x1, checked_cast(y1))


}
