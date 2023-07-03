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

    use Interop.Apache.Arrow.Vector.IPC.ArrowFileWriter.{ArrowFileWriter}
    use Interop.Apache.Arrow.Vector.IPC.ArrowWriter.{ArrowWriter}
    
    /// Mutable, class

    pub enum ArrowFileWriter[_: Region](##org.apache.arrow.vector.ipc.ArrowFileWriter)

    instance SubArrowWriter[ArrowFileWriter] {
        pub def toArrowWriter(wr: ArrowFileWriter[r]): ArrowWriter[r] = 
            let ArrowFileWriter(wr1) = wr;
            ArrowWriter(unchecked_cast(wr1 as ##org.apache.arrow.vector.ipc.ArrowWriter))
        
        pub def fromArrowWriter(wr: ArrowWriter[r]): ArrowFileWriter[r] = 
            let ArrowWriter(wr1) = wr;
            ArrowFileWriter(unchecked_cast(wr1 as ##org.apache.arrow.vector.ipc.ArrowFileWriter))
    }
}

mod Interop.Apache.Arrow.Vector.IPC.ArrowFileWriter {

    use Interop.Apache.Arrow.Vector.IPC.ArrowFileWriter 
    use Interop.Apache.Arrow.Vector.IPC.ArrowFileWriter.{ArrowFileWriter}


    pub def getHH(w: ArrowFileWriter[r]): ##org.apache.arrow.vector.ipc.ArrowFileWriter = 
        let ArrowFileWriter(w1) = w;
        w1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.ipc.ArrowFileWriter): ArrowFileWriter[r] = 
        ArrowFileWriter(prim)



}
