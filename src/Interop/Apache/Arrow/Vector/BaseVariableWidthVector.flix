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

    pub enum BaseVariableWidthVector[_: Region](##org.apache.arrow.vector.BaseVariableWidthVector)

    pub class SubBaseVariableWidthVector[t: Region -> Type] {
        pub def toBaseVariableWidthVector(s: t[r]): BaseVariableWidthVector[r]
        pub def fromBaseVariableWidthVector(s: BaseVariableWidthVector[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.BaseVariableWidthVector {

    use Interop.Apache.Arrow.Vector.BaseVariableWidthVector
    use Interop.Apache.Arrow.Vector.BaseVariableWidthVector.{BaseVariableWidthVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: BaseVariableWidthVector[r]): ##org.apache.arrow.vector.BaseVariableWidthVector = 
        let BaseVariableWidthVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.BaseVariableWidthVector): BaseVariableWidthVector[r] = 
        BaseVariableWidthVector(prim)


    pub def close!(v: BaseVariableWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseVariableWidthVector.close(): Unit \ r;
        let BaseVariableWidthVector(v1) = v;
        close(v1)


    pub def allocateNew(v: BaseVariableWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseVariableWidthVector.allocateNew(): Unit \ r;
        let BaseVariableWidthVector(v1) = v;
        allocateNew(v1)

    pub def allocateNewWithSize(n: Int32, v: BaseVariableWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseVariableWidthVector.allocateNew(Int32): Unit \ r;
        let BaseVariableWidthVector(v1) = v;
        allocateNew(v1, n)



    pub def setAt!(index: {index = Int32}, value: Array[Int8, r1], v: BaseVariableWidthVector[r]): Unit \ r + r1 = 
        import org.apache.arrow.vector.BaseVariableWidthVector.set(Int32, Array[Int8, r1]): Unit \ r + r1 as set1;
        let BaseVariableWidthVector(v1) = v;
        set1(v1, index.index, value)

    pub def setValueCount!(n: Int32, v: BaseVariableWidthVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseVariableWidthVector.setValueCount(Int32): Unit \ r;
        let BaseVariableWidthVector(v1) = v;
        setValueCount(v1, n)


}
