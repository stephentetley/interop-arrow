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

    
    /// Mutable, no alloc

    pub enum BaseFixedWidthVector[_: Region](##org.apache.arrow.vector.BaseFixedWidthVector)

    pub class SubBaseFixedWidthVector[t: Region -> Type] {
        pub def toBaseFixedWidthVector(s: t[r]): BaseFixedWidthVector[r]
        pub def fromBaseFixedWidthVector(s: BaseFixedWidthVector[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.BaseFixedWidthVector {

    use Interop.Apache.Arrow.Vector.BaseFixedWidthVector
    use Interop.Apache.Arrow.Vector.BaseFixedWidthVector.{BaseFixedWidthVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: BaseFixedWidthVector[r]): ##org.apache.arrow.vector.BaseFixedWidthVector = 
        let BaseFixedWidthVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.BaseFixedWidthVector): BaseFixedWidthVector[r] = 
        BaseFixedWidthVector(prim)

    pub def allocateNew(v: BaseFixedWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseFixedWidthVector.allocateNew(): Unit \ r;
        let BaseFixedWidthVector(v1) = v;
        allocateNew(v1)

    pub def allocateNewWithSize(n: Int32, v: BaseFixedWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseFixedWidthVector.allocateNew(Int32): Unit \ r;
        let BaseFixedWidthVector(v1) = v;
        allocateNew(v1, n)


    pub def reset(v: BaseFixedWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseFixedWidthVector.reset(): Unit \ r;
        let BaseFixedWidthVector(v1) = v;
        reset(v1)


    pub def setAt(index: {index = Int32}, start: {start = Int32}, len: {len = Int32}, value: Array[Int8, r1], v: BaseFixedWidthVector[r]): Unit \ r + r1 = 
        import org.apache.arrow.vector.BaseFixedWidthVector.set(Int32, Array[Int8, r1], Int32, Int32): Unit \ r + r1 as set1;
        let BaseFixedWidthVector(v1) = v;
        set1(v1, index.index, value, start.start, len.len)


    pub def setNullAt(index: {index = Int32}, v: BaseFixedWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseFixedWidthVector.setNull(Int32): Unit \ r;
        let BaseFixedWidthVector(v1) = v;
        setNull(v1, index.index)

    pub def setValueCount(n: Int32, v: BaseFixedWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseFixedWidthVector.setValueCount(Int32): Unit \ r;
        let BaseFixedWidthVector(v1) = v;
        setValueCount(v1, n)


}
