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

    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}
    use Interop.Apache.Arrow.Memory.RootAllocator.{RootAllocator}

    
    /// Mutable, class

    pub enum RootAllocator[_: Region](##org.apache.arrow.memory.RootAllocator)

    instance Interop.Apache.Arrow.Memory.ImpBufferAllocator[RootAllocator] {
        pub def toBufferAllocator(a: RootAllocator[r]): BufferAllocator[r] =
            let RootAllocator(a1) = a;
            BufferAllocator(unchecked_cast(a1 as ##org.apache.arrow.memory.BufferAllocator)) 

        pub def fromBufferAllocator(a: BufferAllocator[r]): RootAllocator[r] =
            let BufferAllocator(a1) = a;
            RootAllocator(unchecked_cast(a1 as ##org.apache.arrow.memory.RootAllocator)) 
    }
}

mod Interop.Apache.Arrow.Memory.RootAllocator {

    use Interop.Apache.Arrow.Memory.RootAllocator
    use Interop.Apache.Arrow.Memory.RootAllocator.{RootAllocator}


    pub def getHH(ra: RootAllocator[r]): ##org.apache.arrow.memory.RootAllocator = 
        let RootAllocator(ra1) = ra;
        ra1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.memory.RootAllocator): RootAllocator[r] = 
        RootAllocator(prim)

    pub def new(): RootAllocator[r] \ r = 
        import new org.apache.arrow.memory.RootAllocator(): ##org.apache.arrow.memory.RootAllocator \ r as new1;
        RootAllocator(new1())


    pub def close(ra: RootAllocator[r]): Unit \ r = 
        import org.apache.arrow.memory.RootAllocator.close(): Unit \ r;
        let RootAllocator(ra1) = ra;
        close(ra1)

    pub def getName(ra: RootAllocator[r]): String \ r = 
        import org.apache.arrow.memory.RootAllocator.getName(): String \ r;
        let RootAllocator(ra1) = ra;
        getName(ra1)


}
