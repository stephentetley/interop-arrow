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

mod Interop.Apache.Arrow.Vector.Types {

    
    /// Immutable

    pub enum IntervalUnit(##org.apache.arrow.vector.types.IntervalUnit)


}

mod Interop.Apache.Arrow.Vector.Types.IntervalUnit {

    use Interop.Apache.Arrow.Vector.Types.IntervalUnit
    use Interop.Apache.Arrow.Vector.Types.IntervalUnit.{IntervalUnit}


    pub def getHH(s: IntervalUnit): ##org.apache.arrow.vector.types.IntervalUnit = 
        let IntervalUnit(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.IntervalUnit): IntervalUnit = 
        IntervalUnit(prim)




}
