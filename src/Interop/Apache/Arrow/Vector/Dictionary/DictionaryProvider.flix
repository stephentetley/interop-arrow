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

    
    /// Interface

    pub enum DictionaryProvider[_: Region](##org.apache.arrow.vector.dictionary.DictionaryProvider)


}

mod Interop.Apache.Arrow.Vector.IPC.DictionaryProvider {

    use Interop.Apache.Arrow.Vector.IPC.DictionaryProvider 
    use Interop.Apache.Arrow.Vector.IPC.DictionaryProvider.{DictionaryProvider}


    pub def getHH(dp: DictionaryProvider[r]): ##org.apache.arrow.vector.dictionary.DictionaryProvider = 
        let DictionaryProvider(dp1) = dp;
        dp1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.dictionary.DictionaryProvider): DictionaryProvider[r] = 
        DictionaryProvider(prim)

    pub def getDictionaryIds(dp: DictionaryProvider[r]): Set[Int64] \ r = 
        import org.apache.arrow.vector.dictionary.DictionaryProvider.getDictionaryIds(): ##java.util.Set \ r;
        let DictionaryProvider(dp1) = dp;
        getDictionaryIds(dp1) |> Interop.Util.SetZ.primSetToFlixSet


}
