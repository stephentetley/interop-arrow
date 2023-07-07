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

    use Interop.Apache.Arrow.Vector.VarBinaryVector.{VarBinaryVector}
    use Interop.Apache.Arrow.Vector.BaseVariableWidthVector.{BaseVariableWidthVector}
    use Interop.Apache.Arrow.Vector.FieldVector.{FieldVector}

    /// Mutable, no alloc

    pub enum VarBinaryVector[_: Region](##org.apache.arrow.vector.VarBinaryVector)


    instance Interop.Apache.Arrow.Vector.SubBaseVariableWidthVector[VarBinaryVector] {
        pub def toBaseVariableWidthVector(v: VarBinaryVector[r]): BaseVariableWidthVector[r] = 
            let VarBinaryVector(v1) = v;
            BaseVariableWidthVector(unchecked_cast(v1 as ##org.apache.arrow.vector.BaseVariableWidthVector))

        pub def fromBaseVariableWidthVector(s: BaseVariableWidthVector[r]): VarBinaryVector[r] = 
            let BaseVariableWidthVector(s1) = s;
            VarBinaryVector(unchecked_cast(s1 as ##org.apache.arrow.vector.VarBinaryVector))
    }

    instance Interop.Apache.Arrow.Vector.ImpFieldVector[VarBinaryVector] {
        pub def toFieldVector(v: VarBinaryVector[r]): FieldVector[r] = 
            let VarBinaryVector(v1) = v;
            FieldVector(unchecked_cast(v1 as ##org.apache.arrow.vector.FieldVector))

        pub def fromFieldVector(s: FieldVector[r]): VarBinaryVector[r] = 
            let FieldVector(s1) = s;
            VarBinaryVector(unchecked_cast(s1 as ##org.apache.arrow.vector.VarBinaryVector))
    }

}

mod Interop.Apache.Arrow.Vector.VarBinaryVector {

    use Interop.Apache.Arrow.Vector.VarBinaryVector
    use Interop.Apache.Arrow.Vector.VarBinaryVector.{VarBinaryVector}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}
    use Interop.Apache.Arrow.Vector.Util.Text
    use Interop.Apache.Arrow.Vector.Util.Text.{Text}


    pub def getHH(v: VarBinaryVector[r]): ##org.apache.arrow.vector.VarBinaryVector = 
        let VarBinaryVector(v1) = v;
        v1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.VarBinaryVector): VarBinaryVector[r] = 
        VarBinaryVector(prim)

    /// Same region as BufferAllocator
    pub def new(name: String, alloc: BufferAllocator[r]): VarBinaryVector[r] \ r =
        import new org.apache.arrow.vector.VarBinaryVector(String, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.VarBinaryVector \ r as new1;
        let BufferAllocator(alloc1) = alloc;
        VarBinaryVector(new1(name, alloc1))

    pub def toString(t: VarBinaryVector[r]): String \ r = 
        import org.apache.arrow.vector.VarBinaryVector.toString(): String \ r;
        let VarBinaryVector(t1) = t;
        toString(t1)


    /// TODO null...
    pub def getAt(index: {index = Int32}, v: VarBinaryVector[r]): Array[Int8, r] \ r = 
        import org.apache.arrow.vector.VarBinaryVector.get(Int32): Array[Int8, r] \ r as get1;
        let VarBinaryVector(v1) = v;
        get1(v1, index.index)


}
