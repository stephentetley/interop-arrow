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

    pub enum BaseValueVector[_: Region](##org.apache.arrow.vector.BaseValueVector)

    pub class SubBaseValueVector[t: Region -> Type] {
        pub def toBaseValueVector(s: t[r]): BaseValueVector[r]
        pub def fromBaseValueVector(s: BaseValueVector[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.BaseValueVector {

    use Interop.Apache.Arrow.Vector.BaseValueVector
    use Interop.Apache.Arrow.Vector.BaseValueVector.{BaseValueVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(v: BaseValueVector[r]): ##org.apache.arrow.vector.BaseValueVector = 
        let BaseValueVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.BaseValueVector): BaseValueVector[r] = 
        BaseValueVector(prim)


    pub def toString(v: BaseValueVector[r]): String \ r = 
        import org.apache.arrow.vector.BaseValueVector.toString(): String \ r;
        let BaseValueVector(v1) = v;
        toString(v1)


    pub def clear(v: BaseValueVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseValueVector.clear(): Unit \ r;
        let BaseValueVector(v1) = v;
        clear(v1)


    pub def close(v: BaseValueVector[r]): Unit \ r = 
        import org.apache.arrow.vector.BaseValueVector.close(): Unit \ r;
        let BaseValueVector(v1) = v;
        close(v1)


    pub def getAllocator(v: BaseValueVector[r]): BufferAllocator[r] \ r = 
        import org.apache.arrow.vector.BaseValueVector.getAllocator(): ##org.apache.arrow.memory.BufferAllocator \ r;
        let BaseValueVector(v1) = v;
        BufferAllocator(getAllocator(v1))


    pub def getName(v: BaseValueVector[r]): String \ r = 
        import org.apache.arrow.vector.BaseValueVector.getName(): String \ r;
        let BaseValueVector(v1) = v;
        getName(v1)


}
