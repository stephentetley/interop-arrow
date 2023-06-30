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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeList.{ArrowTypeList}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeList(##org.apache.arrow.vector.types.pojo.ArrowType$List)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeList] {
        pub def toArrowType(t: ArrowTypeList): ArrowType =
            let ArrowTypeList(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeList =
            let ArrowType(t1) = t;
            ArrowTypeList(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$List)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeList {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeList
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeList.{ArrowTypeList}

    pub def getHH(t: ArrowTypeList): ##org.apache.arrow.vector.types.pojo.ArrowType$List = 
        let ArrowTypeList(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$List): ArrowTypeList = 
        ArrowTypeList(prim)

    pub def new(): ArrowTypeList =
        import new org.apache.arrow.vector.types.pojo.ArrowType$List(): ##org.apache.arrow.vector.types.pojo.ArrowType$List \ {} as new1;
        ArrowTypeList(new1())

    pub def toString(t: ArrowTypeList): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$List.toString(): String \ {};
        let ArrowTypeList(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeList, y: ArrowTypeList): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$List.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeList(x1) = x;
        let ArrowTypeList(y1) = y;
        equals(x1, checked_cast(y1))


}
