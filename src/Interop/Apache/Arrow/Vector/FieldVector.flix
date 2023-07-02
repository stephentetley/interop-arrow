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

mod Interop.Apache.Arrow.Vector {

    /// Mutable, interface

    pub enum FieldVector[_: Region](##org.apache.arrow.vector.FieldVector)

    pub class ImpFieldVector[t: Region -> Type] {
        pub def toFieldVector(s: t[r]): FieldVector[r]
        pub def fromFieldVector(s: FieldVector[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.FieldVector {

    use Interop.Apache.Arrow.Vector.FieldVector
    use Interop.Apache.Arrow.Vector.FieldVector.{FieldVector}


    pub def getHH(v: FieldVector[r]): ##org.apache.arrow.vector.FieldVector = 
        let FieldVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.FieldVector): FieldVector[r] = 
        FieldVector(prim)



    pub def setNullAt!(index: {index = Int32}, v: FieldVector[r]): Unit \ r = 
        import org.apache.arrow.vector.FieldVector.setNull(Int32): Unit \ r;
        let FieldVector(v1) = v;
        setNull(v1, index.index)

}
