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

mod Interop.Apache.Arrow.Vector.IPC {

    
    /// Mutable, class

    pub enum ArrowWriter[_: Region](##org.apache.arrow.vector.ipc.ArrowWriter)

    pub class SubArrowWriter[t: Region -> Type] {
        pub def toArrowWriter(s: t[r]): ArrowWriter[r]
        pub def fromArrowWriter(s: ArrowWriter[r]): t[r]
    }

}

mod Interop.Apache.Arrow.Vector.IPC.ArrowWriter {

    use Interop.Apache.Arrow.Vector.IPC.ArrowWriter 
    use Interop.Apache.Arrow.Vector.IPC.ArrowWriter.{ArrowWriter}
    use Interop.Apache.Arrow.Vector.IPC.DictionaryProvider 
    use Interop.Apache.Arrow.Vector.IPC.DictionaryProvider.{DictionaryProvider}


    pub def getHH(w: ArrowWriter[r]): ##org.apache.arrow.vector.ipc.ArrowWriter = 
        let ArrowWriter(w1) = w;
        w1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.ipc.ArrowWriter): ArrowWriter[r] = 
        ArrowWriter(prim)


    // pub def new(root: VectorSchemaRoot, provider: Option[DictionaryProvider[r]], wbc: WritableByteChannel[r]): ArrowWriter[r] = 
    //     ???


    pub def close!(v: ArrowWriter[r]): Unit \ r = 
        import org.apache.arrow.vector.ipc.ArrowWriter.close(): Unit \ r;
        let ArrowWriter(v1) = v;
        close(v1)

    pub def start!(v: ArrowWriter[r]): Unit \ r = 
        import org.apache.arrow.vector.ipc.ArrowWriter.start(): Unit \ r;
        let ArrowWriter(v1) = v;
        start(v1)

    pub def end!(v: ArrowWriter[r]): Unit \ r = 
        import org.apache.arrow.vector.ipc.ArrowWriter.end(): Unit \ r;
        let ArrowWriter(v1) = v;
        end(v1)

    pub def bytesWritten(v: ArrowWriter[r]): Int64 \ r = 
        import org.apache.arrow.vector.ipc.ArrowWriter.bytesWritten(): Int64 \ r;
        let ArrowWriter(v1) = v;
        bytesWritten(v1)
    
    pub def writeBatch!(v: ArrowWriter[r]): Unit \ r = 
        import org.apache.arrow.vector.ipc.ArrowWriter.writeBatch(): Unit \ r;
        let ArrowWriter(v1) = v;
        writeBatch(v1)

}
