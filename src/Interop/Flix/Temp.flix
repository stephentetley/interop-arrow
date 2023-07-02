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

mod Interop.Flix.Temp {
    
    use Interop.Flix.Marshal
    use Interop.NIO.Charset.Charset
    use Interop.NIO.Charset.Charset.{Charset}

    pub def listToNullable(rc: Region[r], xs: List[a]): ##java.util.List \ r with Marshal[a] = match xs {
        case Nil => unchecked_cast(null as ##java.util.List)
        case _   => Interop.Util.ListZ.fromFoldableViaArrayList(rc, xs) |> Interop.Util.ListZ.getHH
    }

    pub def getBytesWithCharset(_: Region[r], cs: Charset, s: String): Array[Int8, r] \ r = 
        import java.lang.String.getBytes(##java.nio.charset.Charset): Array[Int8, r] \ r ;
        let Charset(cs1) = cs;
        getBytes(s, cs1)


}
