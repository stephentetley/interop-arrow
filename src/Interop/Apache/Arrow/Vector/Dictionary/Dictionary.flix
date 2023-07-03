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

    
    /// Class, immutable

    pub enum Dictionary(##org.apache.arrow.vector.dictionary.Dictionary)


}

mod Interop.Apache.Arrow.Vector.IPC.Dictionary {

    use Interop.Apache.Arrow.Vector.IPC.Dictionary 
    use Interop.Apache.Arrow.Vector.IPC.Dictionary.{Dictionary}
    use Interop.Apache.Arrow.Vector.FieldVector
    use Interop.Apache.Arrow.Vector.FieldVector.{FieldVector}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}


    pub def getHH(d: Dictionary): ##org.apache.arrow.vector.dictionary.Dictionary = 
        let Dictionary(d1) = d;
        d1

    pub def wrapHH(prim: ##org.apache.arrow.vector.dictionary.Dictionary): Dictionary = 
        Dictionary(prim)

    pub def toString(d: Dictionary): String = 
        import org.apache.arrow.vector.dictionary.Dictionary.toString(): String \ {};
        let Dictionary(d1) = d;
        toString(d1)

    pub def getVectorType(d: Dictionary): ArrowType = 
        import org.apache.arrow.vector.dictionary.Dictionary.getVectorType(): ##org.apache.arrow.vector.types.pojo.ArrowType \ {};
        let Dictionary(d1) = d;
        ArrowType(getVectorType(d1))

    pub def getVector(_: Region[r], d: Dictionary): FieldVector[r] \ r = 
        import org.apache.arrow.vector.dictionary.Dictionary.getVector(): ##org.apache.arrow.vector.FieldVector \ r;
        let Dictionary(d1) = d;
        FieldVector(getVector(d1))

}
