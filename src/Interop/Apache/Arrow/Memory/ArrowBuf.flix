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

    pub enum ArrowBuf[_: Region](##org.apache.arrow.memory.ArrowBuf)



    pub class ImpArrowBuf[t: Region -> Type] {
        pub def toArrowBuf(s: t[r]): ArrowBuf[r]
        pub def fromArrowBuf(s: ArrowBuf[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Memory.ArrowBuf {

    use Interop.Apache.Arrow.Memory.ArrowBuf
    use Interop.Apache.Arrow.Memory.ArrowBuf.{ArrowBuf}


    pub def getHH(ab: ArrowBuf[r]): ##org.apache.arrow.memory.ArrowBuf = 
        let ArrowBuf(ab1) = ab;
        ab1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.memory.ArrowBuf): ArrowBuf[r] = 
        ArrowBuf(prim)

    pub def toString(ba: ArrowBuf[r]): String \ r = 
        import org.apache.arrow.memory.ArrowBuf.toString(): String \ r;
        let ArrowBuf(ba1) = ba;
        toString(ba1)

    pub def hashCode(ba: ArrowBuf[r]): Int32 \ r = 
        import org.apache.arrow.memory.ArrowBuf.hashCode(): Int32 \ r;
        let ArrowBuf(ba1) = ba;
        hashCode(ba1)

    pub def close!(ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.close(): Unit \ r;
        let ArrowBuf(ba1) = ba;
        close(ba1)

    pub def clear!(ba: ArrowBuf[r]): ArrowBuf[r] \ r = 
        import org.apache.arrow.memory.ArrowBuf.clear(): ##org.apache.arrow.memory.ArrowBuf \ r;
        let ArrowBuf(ba1) = ba;
        ArrowBuf(clear(ba1))

    pub def getId(ba: ArrowBuf[r]): Int64 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getId(): Int64 \ r;
        let ArrowBuf(ba1) = ba;
        getId(ba1)

    pub def getByte(index: {index = Int64}, ba: ArrowBuf[r]): Int8 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getByte(Int64): Int8 \ r;
        let ArrowBuf(ba1) = ba;
        getByte(ba1, index.index)

    pub def getChar(index: {index = Int64}, ba: ArrowBuf[r]): Char \ r = 
        import org.apache.arrow.memory.ArrowBuf.getChar(Int64): Char \ r;
        let ArrowBuf(ba1) = ba;
        getChar(ba1, index.index)

    pub def getDouble(index: {index = Int64}, ba: ArrowBuf[r]): Float64 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getDouble(Int64): Float64 \ r;
        let ArrowBuf(ba1) = ba;
        getDouble(ba1, index.index)

    pub def getFloat(index: {index = Int64}, ba: ArrowBuf[r]): Float32 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getFloat(Int64): Float32 \ r;
        let ArrowBuf(ba1) = ba;
        getFloat(ba1, index.index)

    pub def getInt(index: {index = Int64}, ba: ArrowBuf[r]): Int32 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getInt(Int64): Int32 \ r;
        let ArrowBuf(ba1) = ba;
        getInt(ba1, index.index)
    
    pub def getLong(index: {index = Int64}, ba: ArrowBuf[r]): Int64 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getLong(Int64): Int64 \ r;
        let ArrowBuf(ba1) = ba;
        getLong(ba1, index.index)

    pub def getShort(index: {index = Int64}, ba: ArrowBuf[r]): Int16 \ r = 
        import org.apache.arrow.memory.ArrowBuf.getShort(Int64): Int16 \ r;
        let ArrowBuf(ba1) = ba;
        getShort(ba1, index.index)


    pub def readByte(ba: ArrowBuf[r]): Int8 \ r = 
        import org.apache.arrow.memory.ArrowBuf.readByte(): Int8 \ r;
        let ArrowBuf(ba1) = ba;
        readByte(ba1)

    pub def setByte!(index: {index = Int64}, value: Int8, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setByte(Int64, Int8): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setByte(ba1, index.index, value)

    pub def setChar!(index: {index = Int64}, value: Int32, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setChar(Int64, Int32): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setChar(ba1, index.index, value)

    pub def setDouble!(index: {index = Int64}, value: Float64, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setDouble(Int64, Float64): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setDouble(ba1, index.index, value)

    pub def setFloat!(index: {index = Int64}, value: Float32, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setFloat(Int64, Float32): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setFloat(ba1, index.index, value)

    pub def setInt!(index: {index = Int64}, value: Int32, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setInt(Int64, Int32): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setInt(ba1, index.index, value)
    
    pub def setLong!(index: {index = Int64}, value: Int64, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setLong(Int64, Int64): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setLong(ba1, index.index, value)

    pub def setShort!(index: {index = Int64}, value: Int16, ba: ArrowBuf[r]): Unit \ r = 
        import org.apache.arrow.memory.ArrowBuf.setShort(Int64, Int16): Unit \ r;
        let ArrowBuf(ba1) = ba;
        setShort(ba1, index.index, value)
}
