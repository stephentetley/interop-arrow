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

    pub enum ArrowFileReader[_: Region](##org.apache.arrow.vector.ipc.ArrowFileReader)


}

mod Interop.Apache.Arrow.Vector.IPC.ArrowFileReader {

    use Interop.Apache.Arrow.Vector.IPC.ArrowFileReader 
    use Interop.Apache.Arrow.Vector.IPC.ArrowFileReader.{ArrowFileReader}


    pub def getHH(w: ArrowFileReader[r]): ##org.apache.arrow.vector.ipc.ArrowFileReader = 
        let ArrowFileReader(w1) = w;
        w1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.ipc.ArrowFileReader): ArrowFileReader[r] = 
        ArrowFileReader(prim)



}
