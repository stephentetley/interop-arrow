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

    use Interop.Apache.Arrow.Vector.SmallIntVector.{SmallIntVector}
    use Interop.Apache.Arrow.Vector.BaseFixedWidthVector.{BaseFixedWidthVector}

    /// Mutable, no alloc

    pub enum SmallIntVector[_: Region](##org.apache.arrow.vector.SmallIntVector)


    instance Interop.Apache.Arrow.Vector.SubBaseFixedWidthVector[SmallIntVector] {
        pub def toBaseFixedWidthVector(v: SmallIntVector[r]): BaseFixedWidthVector[r] = 
            let SmallIntVector(v1) = v;
            BaseFixedWidthVector(unchecked_cast(v1 as ##org.apache.arrow.vector.BaseFixedWidthVector))

        pub def fromBaseFixedWidthVector(s: BaseFixedWidthVector[r]): SmallIntVector[r] = 
            let BaseFixedWidthVector(s1) = s;
            SmallIntVector(unchecked_cast(s1 as ##org.apache.arrow.vector.SmallIntVector))
    }

}

mod Interop.Apache.Arrow.Vector.SmallIntVector {

    use Interop.Apache.Arrow.Vector.SmallIntVector
    use Interop.Apache.Arrow.Vector.SmallIntVector.{SmallIntVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: SmallIntVector[r]): ##org.apache.arrow.vector.SmallIntVector = 
        let SmallIntVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.SmallIntVector): SmallIntVector[r] = 
        SmallIntVector(prim)

    /// Same region as BufferAllocator
    pub def new(name: String, alloc: BufferAllocator[r]): SmallIntVector[r] \ r =
        import new org.apache.arrow.vector.SmallIntVector(String, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.SmallIntVector \ r as new1;
        let BufferAllocator(alloc1) = alloc;
        SmallIntVector(new1(name, alloc1))


    pub def getAt(ix: Int32, v: SmallIntVector[r]): Result[String, Int16] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.SmallIntVector.get(Int32): Int16 \ r as get1;
            let SmallIntVector(v1) = v;
            get1(v1, ix)
        })

    pub def setAt(ix: Int32, value: Int16, v: SmallIntVector[r]): Unit \ r = 
        import org.apache.arrow.vector.SmallIntVector.set(Int32, Int16): Unit \ r as set1;
        let SmallIntVector(v1) = v;
        set1(v1, ix, value)

}
