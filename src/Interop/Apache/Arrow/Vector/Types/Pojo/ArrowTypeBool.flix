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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBool.{ArrowTypeBool}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeBool(##org.apache.arrow.vector.types.pojo.ArrowType$Bool)


    // pub class ImpArrowType[t: Type] {
    //     pub def toArrowType(s: t): ArrowType
    //     pub def fromArrowType(s: ArrowType): t
    // }

    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeBool] {
        pub def toArrowType(t: ArrowTypeBool): ArrowType =
            let ArrowTypeBool(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeBool =
            let ArrowType(t1) = t;
            ArrowTypeBool(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Bool)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBool {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBool
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeBool.{ArrowTypeBool}


    pub def getHH(s: ArrowTypeBool): ##org.apache.arrow.vector.types.pojo.ArrowType$Bool = 
        let ArrowTypeBool(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Bool): ArrowTypeBool = 
        ArrowTypeBool(prim)

    // pub def new(_: Region[r]): Text[r] \ r =
    //     import new org.apache.arrow.vector.util.Text(): ##org.apache.arrow.vector.util.Text \ r as new1;
    //     Text(new1())


}
