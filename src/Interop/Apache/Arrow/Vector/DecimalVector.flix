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

    use Interop.Apache.Arrow.Vector.DecimalVector.{DecimalVector}
    use Interop.Apache.Arrow.Vector.BaseFixedWidthVector.{BaseFixedWidthVector}

    /// Mutable, no alloc

    pub enum DecimalVector[_: Region](##org.apache.arrow.vector.DecimalVector)


    instance Interop.Apache.Arrow.Vector.SubBaseFixedWidthVector[DecimalVector] {
        pub def toBaseFixedWidthVector(v: DecimalVector[r]): BaseFixedWidthVector[r] = 
            let DecimalVector(v1) = v;
            BaseFixedWidthVector(unchecked_cast(v1 as ##org.apache.arrow.vector.BaseFixedWidthVector))

        pub def fromBaseFixedWidthVector(s: BaseFixedWidthVector[r]): DecimalVector[r] = 
            let BaseFixedWidthVector(s1) = s;
            DecimalVector(unchecked_cast(s1 as ##org.apache.arrow.vector.DecimalVector))
    }

}

mod Interop.Apache.Arrow.Vector.DecimalVector {

    use Interop.Apache.Arrow.Vector.DecimalVector
    use Interop.Apache.Arrow.Vector.DecimalVector.{DecimalVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: DecimalVector[r]): ##org.apache.arrow.vector.DecimalVector = 
        let DecimalVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.DecimalVector): DecimalVector[r] = 
        DecimalVector(prim)

    /// Same region as BufferAllocator
    pub def new(name: String, alloc: BufferAllocator[r], precision: {precision = Int32}, scale: {scale = Int32}): DecimalVector[r] \ r =
        import new org.apache.arrow.vector.DecimalVector(String, ##org.apache.arrow.memory.BufferAllocator, Int32, Int32): ##org.apache.arrow.vector.DecimalVector \ r as new1;
        let BufferAllocator(alloc1) = alloc;
        DecimalVector(new1(name, alloc1, precision.precision, scale.scale))


    pub def getObjectAt(index: {index = Int32}, v: DecimalVector[r]): Result[String, BigDecimal] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.DecimalVector.getObject(Int32): BigDecimal \ r;
            let DecimalVector(v1) = v;
            getObject(v1, index.index)
        })

    pub def setAt!(index: {index = Int32}, value: BigDecimal, v: DecimalVector[r]): Unit \ r = 
        import org.apache.arrow.vector.DecimalVector.set(Int32, BigDecimal): Unit \ r as set1;
        let DecimalVector(v1) = v;
        set1(v1, index.index, value)

}
