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

mod Interop.Apache.Arrow.Vector.Util {

    
    /// Mutable? (has append and clear)

    pub enum Text[_: Region](##org.apache.arrow.vector.util.Text)


}

mod Interop.Apache.Arrow.Vector.Util.Text {

    use Interop.Apache.Arrow.Vector.Util.Text
    use Interop.Apache.Arrow.Vector.Util.Text.{Text}


    pub def getHH(s: Text[r]): ##org.apache.arrow.vector.util.Text = 
        let Text(s1) = s;
        s1

    pub def wrapHH(_: Region[r], prim: ##org.apache.arrow.vector.util.Text): Text[r] = 
        Text(prim)

    pub def new(_: Region[r]): Text[r] \ r =
        import new org.apache.arrow.vector.util.Text(): ##org.apache.arrow.vector.util.Text \ r as new1;
        Text(new1())


}
