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

    use Interop.Apache.Arrow.Vector.DateDayVector.{DateDayVector}
    use Interop.Apache.Arrow.Vector.BaseFixedWidthVector.{BaseFixedWidthVector}

    /// Mutable, no alloc

    pub enum DateDayVector[_: Region](##org.apache.arrow.vector.DateDayVector)


    instance Interop.Apache.Arrow.Vector.SubBaseFixedWidthVector[DateDayVector] {
        pub def toBaseFixedWidthVector(v: DateDayVector[r]): BaseFixedWidthVector[r] = 
            let DateDayVector(v1) = v;
            BaseFixedWidthVector(unchecked_cast(v1 as ##org.apache.arrow.vector.BaseFixedWidthVector))

        pub def fromBaseFixedWidthVector(s: BaseFixedWidthVector[r]): DateDayVector[r] = 
            let BaseFixedWidthVector(s1) = s;
            DateDayVector(unchecked_cast(s1 as ##org.apache.arrow.vector.DateDayVector))
    }

}

mod Interop.Apache.Arrow.Vector.DateDayVector {

    use Interop.Apache.Arrow.Vector.DateDayVector
    use Interop.Apache.Arrow.Vector.DateDayVector.{DateDayVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: DateDayVector[r]): ##org.apache.arrow.vector.DateDayVector = 
        let DateDayVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.DateDayVector): DateDayVector[r] = 
        DateDayVector(prim)

    /// Same region as BufferAllocator
    pub def new(name: String, alloc: BufferAllocator[r]): DateDayVector[r] \ r =
        import new org.apache.arrow.vector.DateDayVector(String, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.DateDayVector \ r as new1;
        let BufferAllocator(alloc1) = alloc;
        DateDayVector(new1(name, alloc1))


    pub def getAt(index: {index = Int32}, v: DateDayVector[r]): Result[String, Int32] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.DateDayVector.get(Int32): Int32 \ r as get1;
            let DateDayVector(v1) = v;
            get1(v1, index.index)
        })

    pub def setAt!(index: {index = Int32}, value: Int32, v: DateDayVector[r]): Unit \ r = 
        import org.apache.arrow.vector.DateDayVector.set(Int32, Int32): Unit \ r as set1;
        let DateDayVector(v1) = v;
        set1(v1, index.index, value)

}
