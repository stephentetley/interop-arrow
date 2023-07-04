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

    
    /// Immutable but imperative due to settable position? Use a region for now...

    pub enum Row[_: Region](##org.apache.arrow.vector.table.Row)


}

mod Interop.Apache.Arrow.Vector.Table.Row {

    use Interop.Apache.Arrow.Vector.Table.Row 
    use Interop.Apache.Arrow.Vector.Table.Row.{Row}
    use Interop.Apache.Arrow.Vector.Table.BaseTable 
    use Interop.Apache.Arrow.Vector.Table.BaseTable.{BaseTable}


    pub def getHH(w: Row[r]): ##org.apache.arrow.vector.table.Row = 
        let Row(w1) = w;
        w1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.table.Row): Row[r] = 
        Row(prim)


    pub def new(t: BaseTable[r]): Row[r] \ r = 
        import new org.apache.arrow.vector.table.Row(##org.apache.arrow.vector.table.BaseTable): ##org.apache.arrow.vector.table.Row \ r as new1;
        let BaseTable(t1) = t;
        Row(new1(t1))


    pub def resetPosition!(row: Row[r]): Row[r] \ r = 
        import org.apache.arrow.vector.table.Row.resetPosition(): ##org.apache.arrow.vector.table.Row \ r;
        let Row(row1) = row;
        Row(resetPosition(row1))

    pub def setPosition!(n: Int32, row: Row[r]): Row[r] \ r = 
        import org.apache.arrow.vector.table.Row.setPosition(Int32): ##org.apache.arrow.vector.table.Row \ r;
        let Row(row1) = row;
        Row(setPosition(row1, n))

}
