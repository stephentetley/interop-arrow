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

    use Interop.Apache.Arrow.Vector.NullVector.{NullVector}
    use Interop.Apache.Arrow.Vector.FieldVector.{FieldVector}

    /// Mutable, no alloc

    pub enum NullVector[_: Region](##org.apache.arrow.vector.NullVector)


    instance Interop.Apache.Arrow.Vector.ImpFieldVector[NullVector] {
        pub def toFieldVector(v: NullVector[r]): FieldVector[r] = 
            let NullVector(v1) = v;
            FieldVector(unchecked_cast(v1 as ##org.apache.arrow.vector.FieldVector))

        pub def fromFieldVector(s: FieldVector[r]): NullVector[r] = 
            let FieldVector(s1) = s;
            NullVector(unchecked_cast(s1 as ##org.apache.arrow.vector.NullVector))
    }

}

mod Interop.Apache.Arrow.Vector.NullVector {

    use Interop.Apache.Arrow.Vector.NullVector
    use Interop.Apache.Arrow.Vector.NullVector.{NullVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: NullVector[r]): ##org.apache.arrow.vector.NullVector = 
        let NullVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.NullVector): NullVector[r] = 
        NullVector(prim)

    pub def new(name: String): NullVector[r] \ r =
        import new org.apache.arrow.vector.NullVector(String): ##org.apache.arrow.vector.NullVector \ r as new1;
        NullVector(new1(name))


    pub def getValueCount(v: NullVector[r]): Int32 \ r = 
        import org.apache.arrow.vector.NullVector.getValueCount(): Int32 \ r;
        let NullVector(v1) = v;
        getValueCount(v1)

    pub def setNullAt(index: {index = Int32}, v: NullVector[r]): Unit \ r = 
        import org.apache.arrow.vector.NullVector.setNull(Int32): Unit \ r;
        let NullVector(v1) = v;
        setNull(v1, index.index)

}
