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

    
    /// Immutable

    pub enum ArrowType(##org.apache.arrow.vector.types.pojo.ArrowType)


    pub class SubArrowType[t: Type] {
        pub def toArrowType(s: t): ArrowType
        pub def fromArrowType(s: ArrowType): t
    }

}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}


    pub def getHH(s: ArrowType): ##org.apache.arrow.vector.types.pojo.ArrowType = 
        let ArrowType(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType): ArrowType = 
        ArrowType(prim)

    // pub def new(_: Region[r]): Text[r] \ r =
    //     import new org.apache.arrow.vector.util.Text(): ##org.apache.arrow.vector.util.Text \ r as new1;
    //     Text(new1())


}
