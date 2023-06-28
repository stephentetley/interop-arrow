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

    use Interop.Apache.Arrow.Vector.VarCharVector.{VarCharVector}
    use Interop.Apache.Arrow.Vector.BaseVariableWidthVector.{BaseVariableWidthVector}

    /// Mutable, no alloc

    pub enum VarCharVector[_: Region](##org.apache.arrow.vector.VarCharVector)


    instance Interop.Apache.Arrow.Vector.SubBaseVariableWidthVector[VarCharVector] {
        pub def toBaseVariableWidthVector(v: VarCharVector[r]): BaseVariableWidthVector[r] = 
            let VarCharVector(v1) = v;
            BaseVariableWidthVector(unchecked_cast(v1 as ##org.apache.arrow.vector.BaseVariableWidthVector))

        pub def fromBaseVariableWidthVector(s: BaseVariableWidthVector[r]): VarCharVector[r] = 
            let BaseVariableWidthVector(s1) = s;
            VarCharVector(unchecked_cast(s1 as ##org.apache.arrow.vector.VarCharVector))
    }

}

mod Interop.Apache.Arrow.Vector.VarCharVector {

    use Interop.Apache.Arrow.Vector.VarCharVector
    use Interop.Apache.Arrow.Vector.VarCharVector.{VarCharVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: VarCharVector[r]): ##org.apache.arrow.vector.VarCharVector = 
        let VarCharVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.VarCharVector): VarCharVector[r] = 
        VarCharVector(prim)

    /// Same region as BufferAllocator
    pub def new(name: String, alloc: BufferAllocator[r]): VarCharVector[r] \ r =
        import new org.apache.arrow.vector.VarCharVector(String, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.VarCharVector \ r as new1;
        let BufferAllocator(alloc1) = alloc;
        VarCharVector(new1(name, alloc1))


}
