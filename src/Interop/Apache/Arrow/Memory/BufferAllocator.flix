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

mod Interop.Apache.Arrow.Memory {


    /// Mutable, interface

    pub enum BufferAllocator[_: Region](##org.apache.arrow.memory.BufferAllocator)



    pub class ImpBufferAllocator[t: Region -> Type] {
        pub def toBufferAllocator(s: t[r]): BufferAllocator[r]
        pub def fromBufferAllocator(s: BufferAllocator[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Memory.BufferAllocator {

    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}


    pub def getHH(ba: BufferAllocator[r]): ##org.apache.arrow.memory.BufferAllocator = 
        let BufferAllocator(ba1) = ba;
        ba1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.memory.BufferAllocator): BufferAllocator[r] = 
        BufferAllocator(prim)

    pub def close!(ba: BufferAllocator[r]): Unit \ r = 
        import org.apache.arrow.memory.BufferAllocator.close(): Unit \ r;
        let BufferAllocator(ba1) = ba;
        close(ba1)



}
