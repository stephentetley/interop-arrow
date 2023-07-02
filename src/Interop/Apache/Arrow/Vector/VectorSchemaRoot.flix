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


    /// Mutable

    pub enum VectorSchemaRoot[_: Region](##org.apache.arrow.vector.VectorSchemaRoot)


}

mod Interop.Apache.Arrow.Vector.VectorSchemaRoot {

    use Interop.Apache.Arrow.Vector.VectorSchemaRoot
    use Interop.Apache.Arrow.Vector.VectorSchemaRoot.{VectorSchemaRoot}
    use Interop.Apache.Arrow.Memory.BufferAllocator
    use Interop.Apache.Arrow.Memory.BufferAllocator.{BufferAllocator}
    use Interop.Apache.Arrow.Vector.FieldVector
    use Interop.Apache.Arrow.Vector.FieldVector.{FieldVector}
    use Interop.Apache.Arrow.Vector.Types.Pojo.Schema
    use Interop.Apache.Arrow.Vector.Types.Pojo.Schema.{Schema}


    pub def getHH(vsr: VectorSchemaRoot[r]): ##org.apache.arrow.vector.VectorSchemaRoot = 
        let VectorSchemaRoot(vsr1) = vsr;
        vsr1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.VectorSchemaRoot): VectorSchemaRoot[r] = 
        VectorSchemaRoot(prim)


    pub def create(schema: Schema, alloc: BufferAllocator[r]): VectorSchemaRoot[r] \ r =
        import static org.apache.arrow.vector.VectorSchemaRoot.create(##org.apache.arrow.vector.types.pojo.Schema, ##org.apache.arrow.memory.BufferAllocator): ##org.apache.arrow.vector.VectorSchemaRoot \ r as new1;
        let Schema(schema1) = schema;
        let BufferAllocator(alloc1) = alloc;
        VectorSchemaRoot(new1(schema1, alloc1))

    pub def close!(vsr: VectorSchemaRoot[r]): Unit \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.close(): Unit \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        close(vsr1)

    pub def clear!(vsr: VectorSchemaRoot[r]): Unit \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.clear(): Unit \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        clear(vsr1)

    pub def contentToTSVString(vsr: VectorSchemaRoot[r]): String \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.contentToTSVString(): String \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        contentToTSVString(vsr1)

    pub def getSchema(vsr: VectorSchemaRoot[r]): Schema \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.getSchema(): ##org.apache.arrow.vector.types.pojo.Schema \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        Schema(getSchema(vsr1))

    pub def getVectorByName(name: String, vsr: VectorSchemaRoot[r]): FieldVector[r] \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.getVector(String): ##org.apache.arrow.vector.FieldVector \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        FieldVector(getVector(vsr1, name))

    pub def getRowCount(vsr: VectorSchemaRoot[r]): Int32 \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.getRowCount(): Int32 \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        getRowCount(vsr1)

    pub def setRowCount!(n: Int32, vsr: VectorSchemaRoot[r]): Unit \ r = 
        import org.apache.arrow.vector.VectorSchemaRoot.setRowCount(Int32): Unit \ r;
        let VectorSchemaRoot(vsr1) = vsr;
        setRowCount(vsr1, n)


}
