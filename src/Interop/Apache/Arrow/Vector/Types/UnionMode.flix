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

mod Interop.Apache.Arrow.Vector.Types {

    use Interop.Apache.Arrow.Vector.Types.UnionMode.{UnionMode}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}
    
    /// Immutable

    pub enum UnionMode(##org.apache.arrow.vector.types.UnionMode)

    instance Interop.Lang.SubEnum[UnionMode] {
        pub def toEnum(x: UnionMode): Enum = 
            let UnionMode(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): UnionMode = 
            let Enum(x1) = x;
            UnionMode(unchecked_cast(x1 as ##org.apache.arrow.vector.types.UnionMode))
    }

}

mod Interop.Apache.Arrow.Vector.Types.UnionMode {

    use Interop.Apache.Arrow.Vector.Types.UnionMode
    use Interop.Apache.Arrow.Vector.Types.UnionMode.{UnionMode}


    pub def getHH(s: UnionMode): ##org.apache.arrow.vector.types.UnionMode = 
        let UnionMode(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.UnionMode): UnionMode = 
        UnionMode(prim)

    pub def dense(): UnionMode = 
        import static get org.apache.arrow.vector.types.UnionMode.Dense: ##org.apache.arrow.vector.types.UnionMode \ {} as get_Dense;
        UnionMode(get_Dense())

    pub def sparse(): UnionMode = 
        import static get org.apache.arrow.vector.types.UnionMode.Sparse: ##org.apache.arrow.vector.types.UnionMode \ {} as get_Sparse;
        UnionMode(get_Sparse())

}
