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

    pub enum ValueVector[_: Region](##org.apache.arrow.vector.ValueVector)


    pub class SubValueVector[t: Region -> Type] {
        pub def toValueVector(s: t[r]): ValueVector[r]
        pub def fromValueVector(s: ValueVector[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.ValueVector {

    use Interop.Apache.Arrow.Vector.ValueVector
    use Interop.Apache.Arrow.Vector.ValueVector.{ValueVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}
    use Interop.Apache.Arrow.Vector.Types.Pojo.Field
    use Interop.Apache.Arrow.Vector.Types.Pojo.Field.{Field}

    pub def getHH(v: ValueVector[r]): ##org.apache.arrow.vector.ValueVector = 
        let ValueVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.ValueVector): ValueVector[r] = 
        ValueVector(prim)

    // /// Same region as BufferAllocator
    // pub def new(name: String, alloc: BufferAllocator[r]): ValueVector[r] \ r =
    //     import new org.apache.arrow.vector.ValueVector(String, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.ValueVector \ r as new1;
    //     let BufferAllocator(alloc1) = alloc;
    //     ValueVector(new1(name, alloc1))


    pub def close!(v: ValueVector[r]): Unit \ r = 
        import org.apache.arrow.vector.ValueVector.close(): Unit \ r;
        let ValueVector(v1) = v;
        close(v1)

    pub def clear!(v: ValueVector[r]): Unit \ r = 
        import org.apache.arrow.vector.ValueVector.clear(): Unit \ r;
        let ValueVector(v1) = v;
        clear(v1)

    pub def getBufferSize(v: ValueVector[r]): Int32 \ r = 
        import org.apache.arrow.vector.ValueVector.getBufferSize(): Int32 \ r;
        let ValueVector(v1) = v;
        getBufferSize(v1)


    pub def getBufferSizeFor(valCount: Int32, v: ValueVector[r]): Int32 \ r = 
        import org.apache.arrow.vector.ValueVector.getBufferSizeFor(Int32): Int32 \ r;
        let ValueVector(v1) = v;
        getBufferSizeFor(v1, valCount)

    pub def getField(v: ValueVector[r]): Field \ r = 
        import org.apache.arrow.vector.ValueVector.getField(): ##org.apache.arrow.vector.types.pojo.Field \ r;
        let ValueVector(v1) = v;
        Field(getField(v1))

    pub def getName(v: ValueVector[r]): String \ r = 
        import org.apache.arrow.vector.ValueVector.getName(): String \ r;
        let ValueVector(v1) = v;
        getName(v1)

    pub def getNullCount(v: ValueVector[r]): Int32 \ r = 
        import org.apache.arrow.vector.ValueVector.getNullCount(): Int32 \ r;
        let ValueVector(v1) = v;
        getNullCount(v1)

}
