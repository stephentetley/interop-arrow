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

mod Interop.Apache.Arrow.Vector.Types.Pojo {

    
    /// Immutable

    pub enum DictionaryEncoding(##org.apache.arrow.vector.types.pojo.DictionaryEncoding)


    instance ToString[DictionaryEncoding] {
        pub def toString(x: DictionaryEncoding): String = 
            Interop.Apache.Arrow.Vector.Types.Pojo.DictionaryEncoding.toString(x)
    }

}

mod Interop.Apache.Arrow.Vector.Types.Pojo.DictionaryEncoding {

    use Interop.Apache.Arrow.Vector.Types.Pojo.DictionaryEncoding
    use Interop.Apache.Arrow.Vector.Types.Pojo.DictionaryEncoding.{DictionaryEncoding}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt.{ArrowTypeInt}


    pub def getHH(s: DictionaryEncoding): ##org.apache.arrow.vector.types.pojo.DictionaryEncoding = 
        let DictionaryEncoding(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.DictionaryEncoding): DictionaryEncoding = 
        DictionaryEncoding(prim)


    pub def new(id: Int64, ordered: Bool, indexType: ArrowTypeInt): DictionaryEncoding = 
        import new org.apache.arrow.vector.types.pojo.DictionaryEncoding(Int64, Bool, ##org.apache.arrow.vector.types.pojo.ArrowType$Int): ##org.apache.arrow.vector.types.pojo.DictionaryEncoding \ {} as new1;
        let ArrowTypeInt(ty1) = indexType;
        DictionaryEncoding(new1(id, ordered, ty1))


    pub def equals(x: DictionaryEncoding, y: DictionaryEncoding): Bool =
        import org.apache.arrow.vector.types.pojo.DictionaryEncoding.equals(##java.lang.Object): Bool \ {};
        let DictionaryEncoding(x1) = x;
        let DictionaryEncoding(y1) = y;
        equals(x1, checked_cast(y1))

    pub def toString(enc: DictionaryEncoding): String = 
        import org.apache.arrow.vector.types.pojo.DictionaryEncoding.toString(): String \ {};
        let DictionaryEncoding(enc1) = enc;
        toString(enc1)

    pub def getId(enc: DictionaryEncoding): Int64 = 
        import org.apache.arrow.vector.types.pojo.DictionaryEncoding.getId(): Int64 \ {};
        let DictionaryEncoding(enc1) = enc;
        getId(enc1)

    pub def getIndexType(enc: DictionaryEncoding): ArrowTypeInt = 
        import org.apache.arrow.vector.types.pojo.DictionaryEncoding.getIndexType(): ##org.apache.arrow.vector.types.pojo.ArrowType$Int \ {};
        let DictionaryEncoding(enc1) = enc;
        ArrowTypeInt(getIndexType(enc1))


    pub def isOrdered(enc: DictionaryEncoding): Bool = 
        import org.apache.arrow.vector.types.pojo.DictionaryEncoding.isOrdered(): Bool \ {};
        let DictionaryEncoding(enc1) = enc;
        isOrdered(enc1)


}
