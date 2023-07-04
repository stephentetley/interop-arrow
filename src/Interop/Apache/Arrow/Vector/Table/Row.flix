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


    pub def next!(row: Row[r]): Row[r] \ r = 
        import org.apache.arrow.vector.table.Row.next(): ##org.apache.arrow.vector.table.Row \ r;
        let Row(row1) = row;
        Row(next(row1))

    pub def resetPosition!(row: Row[r]): Row[r] \ r = 
        import org.apache.arrow.vector.table.Row.resetPosition(): ##org.apache.arrow.vector.table.Row \ r;
        let Row(row1) = row;
        Row(resetPosition(row1))

    pub def setPosition!(n: Int32, row: Row[r]): Row[r] \ r = 
        import org.apache.arrow.vector.table.Row.setPosition(Int32): ##org.apache.arrow.vector.table.Row \ r;
        let Row(row1) = row;
        Row(setPosition(row1, n))

    /// Follows Arrow naming not Flix's (might change...)
    pub def getBigIntNamed(columnName: {columnName = String}, row: Row[r]): Result[String, Int64] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getBigInt(String): Int64 \ r;
            let Row(row1) = row;
            getBigInt(row1, columnName.columnName)
        })

    /// Follows Arrow naming not Flix's (might change...)
    pub def getBigIntAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, Int64] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getBigInt(Int32): Int64 \ r;
            let Row(row1) = row;
            getBigInt(row1, columnIndex.columnIndex)
        })

    pub def getBitNamed(columnName: {columnName = String}, row: Row[r]): Result[String, Int32] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getBit(String): Int32 \ r;
            let Row(row1) = row;
            getBit(row1, columnName.columnName)
        })

    pub def getBitAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, Int32] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getBit(Int32): Int32 \ r;
            let Row(row1) = row;
            getBit(row1, columnIndex.columnIndex)
        })

    pub def getDateDayNamed(columnName: {columnName = String}, row: Row[r]): Result[String, Int32] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getDateDay(String): Int32 \ r;
            let Row(row1) = row;
            getDateDay(row1, columnName.columnName)
        })

    pub def getDateDayAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, Int32] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getDateDay(Int32): Int32 \ r;
            let Row(row1) = row;
            getDateDay(row1, columnIndex.columnIndex)
        })

    pub def getDateMilliNamed(columnName: {columnName = String}, row: Row[r]): Result[String, Int64] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getDateMilli(String): Int64 \ r;
            let Row(row1) = row;
            getDateMilli(row1, columnName.columnName)
        })

    pub def getDateMilliAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, Int64] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getDateMilli(Int32): Int64 \ r;
            let Row(row1) = row;
            getDateMilli(row1, columnIndex.columnIndex)
        })

    pub def getDecimalObjNamed(columnName: {columnName = String}, row: Row[r]): Result[String, BigDecimal] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getDecimalObj(String): BigDecimal \ r;
            let Row(row1) = row;
            getDecimalObj(row1, columnName.columnName)
        })

    pub def getDecimalObjAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, BigDecimal] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getDecimalObj(Int32): BigDecimal \ r;
            let Row(row1) = row;
            getDecimalObj(row1, columnIndex.columnIndex)
        })


    pub def getVarCharObjNamed(columnName: {columnName = String}, row: Row[r]): Result[String, String] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getVarCharObj(String): String \ r;
            let Row(row1) = row;
            getVarCharObj(row1, columnName.columnName)
        })

    pub def getVarCharObjAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, String] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.getVarCharObj(Int32): String \ r;
            let Row(row1) = row;
            getVarCharObj(row1, columnIndex.columnIndex)
        })

    pub def isNullNamed(columnName: {columnName = String}, row: Row[r]): Result[String, Bool] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.isNull(String): Bool \ r;
            let Row(row1) = row;
            isNull(row1, columnName.columnName)
        })

            

    pub def isNullAt(columnIndex: {columnIndex = Int32}, row: Row[r]): Result[String, Bool] \ r = 
        Result.tryCatch(_ -> {
            import org.apache.arrow.vector.table.Row.isNull(Int32): Bool \ r;
            let Row(row1) = row;
            isNull(row1, columnIndex.columnIndex)
        })
}
