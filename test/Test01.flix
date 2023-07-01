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

mod Test01 {
    
    @test
    def test01(): Unit \ IO = region rc {
        let alloc = Interop.Apache.Arrow.Memory.RootAllocator.new(rc);
        let alloc1 = Interop.Apache.Arrow.Memory.ImpBufferAllocator.toBufferAllocator(alloc);
        let ivec = Interop.Apache.Arrow.Vector.IntVector.new("fixed-size-primitive-layout", alloc1);
        let ivec1 = Interop.Apache.Arrow.Vector.SubBaseFixedWidthVector.toBaseFixedWidthVector(ivec);
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.allocateNewWithSize(3, ivec1);
        Interop.Apache.Arrow.Vector.IntVector.setAt!(index = 0, 1, ivec);
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.setNullAt!(index = 1, ivec1);
        Interop.Apache.Arrow.Vector.IntVector.setAt!(index = 2, 3, ivec);
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.setValueCount!(3, ivec1);
        let str = Interop.Apache.Arrow.Vector.IntVector.toString(ivec); 
        println("Vector created in memory: ${str}" );
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.close!(ivec1);
        Interop.Apache.Arrow.Memory.RootAllocator.close!(alloc)
    }

}
