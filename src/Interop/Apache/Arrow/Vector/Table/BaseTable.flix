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

    
    /// Immutable but closeable? Use a region for now...

    pub enum BaseTable[_: Region](##org.apache.arrow.vector.table.BaseTable)

    pub class SubBaseTable[t: Region -> Type] {
        pub def toBaseTable(s: t[r]): BaseTable[r]
        pub def fromBaseTable(s: BaseTable[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.Table.BaseTable {

    use Interop.Apache.Arrow.Vector.Table.BaseTable 
    use Interop.Apache.Arrow.Vector.Table.BaseTable.{BaseTable}


    pub def getHH(t: BaseTable[r]): ##org.apache.arrow.vector.table.BaseTable = 
        let BaseTable(t1) = t;
        t1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.table.BaseTable): BaseTable[r] = 
        BaseTable(prim)


    // pub def new(root: VectorSchemaRoot, provider: Option[DictionaryProvider[r]], wbc: WritableByteChannel[r]): ArrowWriter[r] = 
    //     ???


    pub def close!(t: BaseTable[r]): Unit \ r = 
        import org.apache.arrow.vector.table.BaseTable.close(): Unit \ r;
        let BaseTable(t1) = t;
        close(t1)

    pub def contentToTSVString(t: BaseTable[r]): String \ r = 
        import org.apache.arrow.vector.table.BaseTable.contentToTSVString(): String \ r;
        let BaseTable(t1) = t;
        contentToTSVString(t1)

    pub def getVectorCount(t: BaseTable[r]): Int32 \ r = 
        import org.apache.arrow.vector.table.BaseTable.getVectorCount(): Int32 \ r;
        let BaseTable(t1) = t;
        getVectorCount(t1)

}
