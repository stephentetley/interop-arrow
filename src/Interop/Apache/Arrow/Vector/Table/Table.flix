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

mod Interop.Apache.Arrow.Vector.Table {

    
    use Interop.Apache.Arrow.Vector.Table.Table.{Table}
    use Interop.Apache.Arrow.Vector.Table.BaseTable.{BaseTable}
    
    /// Immutable but closeable? Use a region for now...

    pub enum Table[_: Region](##org.apache.arrow.vector.table.Table)

    instance SubBaseTable[Table] {
        pub def toBaseTable(t: Table[r]): BaseTable[r] = 
            let Table(t1) = t;
            BaseTable(unchecked_cast(t1 as ##org.apache.arrow.vector.table.BaseTable))
        
        pub def fromBaseTable(t: BaseTable[r]): Table[r] = 
            let BaseTable(t1) = t;
            Table(unchecked_cast(t1 as ##org.apache.arrow.vector.table.Table))

    }

}

mod Interop.Apache.Arrow.Vector.Table.Table {

    use Interop.Apache.Arrow.Vector.Table.Table 
    use Interop.Apache.Arrow.Vector.Table.Table.{Table}
    use Interop.Apache.Arrow.Vector.VectorSchemaRoot
    use Interop.Apache.Arrow.Vector.VectorSchemaRoot.{VectorSchemaRoot}


    pub def getHH(t: Table[r]): ##org.apache.arrow.vector.table.Table = 
        let Table(t1) = t;
        t1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.table.Table): Table[r] = 
        Table(prim)



    pub def new(vsr: VectorSchemaRoot[r]): Table[r] \ r = 
        import new org.apache.arrow.vector.table.Table(##org.apache.arrow.vector.VectorSchemaRoot): ##org.apache.arrow.vector.table.Table \ r as new1;
        let VectorSchemaRoot(vsr1) = vsr;
        Table(new1(vsr1))

    pub def copy(t: Table[r]): Table[r] \ r = 
        import org.apache.arrow.vector.table.Table.copy(): ##org.apache.arrow.vector.table.Table \ r;
        let Table(t1) = t;
        Table(copy(t1))

    pub def removeVector(index: {index = Int32}, t: Table[r]): Table[r] \ r = 
        import org.apache.arrow.vector.table.Table.removeVector(Int32): ##org.apache.arrow.vector.table.Table \ r;
        let Table(t1) = t;
        Table(removeVector(t1, index.index))

    pub def slice(index: {index = Int32}, t: Table[r]): Table[r] \ r = 
        import org.apache.arrow.vector.table.Table.slice(Int32): ##org.apache.arrow.vector.table.Table \ r;
        let Table(t1) = t;
        Table(slice(t1, index.index))

    pub def sliceWithLength(index: {index = Int32}, length: {length = Int32}, t: Table[r]): Table[r] \ r = 
        import org.apache.arrow.vector.table.Table.slice(Int32, Int32): ##org.apache.arrow.vector.table.Table \ r;
        let Table(t1) = t;
        Table(slice(t1, index.index, length.length))
}
