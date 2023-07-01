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

    use Interop.Apache.Arrow.Vector.IntVector.{IntVector}
    use Interop.Apache.Arrow.Vector.BaseFixedWidthVector.{BaseFixedWidthVector}

    /// Mutable, no alloc

    pub enum IntVector[_: Region](##org.apache.arrow.vector.IntVector)


    instance Interop.Apache.Arrow.Vector.SubBaseFixedWidthVector[IntVector] {
        pub def toBaseFixedWidthVector(v: IntVector[r]): BaseFixedWidthVector[r] = 
            let IntVector(v1) = v;
            BaseFixedWidthVector(unchecked_cast(v1 as ##org.apache.arrow.vector.BaseFixedWidthVector))

        pub def fromBaseFixedWidthVector(s: BaseFixedWidthVector[r]): IntVector[r] = 
            let BaseFixedWidthVector(s1) = s;
            IntVector(unchecked_cast(s1 as ##org.apache.arrow.vector.IntVector))
    }

}

mod Interop.Apache.Arrow.Vector.IntVector {

    use Interop.Apache.Arrow.Vector.IntVector
    use Interop.Apache.Arrow.Vector.IntVector.{IntVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: IntVector[r]): ##org.apache.arrow.vector.IntVector = 
        let IntVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.IntVector): IntVector[r] = 
        IntVector(prim)

    /// Same region as BufferAllocator
    pub def new(name: String, alloc: BufferAllocator[r]): IntVector[r] \ r =
        import new org.apache.arrow.vector.IntVector(String, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.IntVector \ r as new1;
        let BufferAllocator(alloc1) = alloc;
        IntVector(new1(name, alloc1))

    pub def toString(t: IntVector[r]): String \ r = 
        import org.apache.arrow.vector.IntVector.toString(): String \ r;
        let IntVector(t1) = t;
        toString(t1)


    pub def getAt(index: {index = Int32}, v: IntVector[r]): Result[String, Int32] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.IntVector.get(Int32): Int32 \ r as get1;
            let IntVector(v1) = v;
            get1(v1, index.index)
        })

    pub def setAt!(index: {index = Int32}, value: Int32, v: IntVector[r]): Unit \ r = 
        import org.apache.arrow.vector.IntVector.set(Int32, Int32): Unit \ r as set1;
        let IntVector(v1) = v;
        set1(v1, index.index, value)

}
