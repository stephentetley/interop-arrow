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

    
    /// Immutable?

    pub enum FieldType(##org.apache.arrow.vector.types.pojo.FieldType)

    instance ToString[FieldType] {
        pub def toString(x: FieldType): String = 
            Interop.Apache.Arrow.Vector.Types.Pojo.FieldType.toString(x)
    }

}

mod Interop.Apache.Arrow.Vector.Types.Pojo.FieldType {

    use Interop.Apache.Arrow.Vector.Types.Pojo.FieldType
    use Interop.Apache.Arrow.Vector.Types.Pojo.FieldType.{FieldType}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    use Interop.Apache.Arrow.Vector.Types.Pojo.DictionaryEncoding
    use Interop.Apache.Arrow.Vector.Types.Pojo.DictionaryEncoding.{DictionaryEncoding}


    pub def getHH(s: FieldType): ##org.apache.arrow.vector.types.pojo.FieldType = 
        let FieldType(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.FieldType): FieldType = 
        FieldType(prim)


    pub def new(nullable: Bool, arrowType: ArrowType, encoding: Option[DictionaryEncoding]): FieldType = 
        import new org.apache.arrow.vector.types.pojo.FieldType(Bool, ##org.apache.arrow.vector.types.pojo.ArrowType, ##org.apache.arrow.vector.types.pojo.DictionaryEncoding): ##org.apache.arrow.vector.types.pojo.FieldType \ {} as new1;
        let ArrowType(ty1) = arrowType;
        let enc1 = Interop.Flix.Util.optionToNullable(encoding, x -> {let DictionaryEncoding(x1) = x; x1});
        FieldType(new1(nullable, ty1, enc1))

    pub def newWithMetaData(nullable: Bool, arrowType: ArrowType, encoding: Option[DictionaryEncoding], metadata: Map[String, String]): FieldType = 
        import new org.apache.arrow.vector.types.pojo.FieldType(Bool, ##org.apache.arrow.vector.types.pojo.ArrowType, ##org.apache.arrow.vector.types.pojo.DictionaryEncoding, ##java.util.Map): ##org.apache.arrow.vector.types.pojo.FieldType \ {} as new1;
        let ArrowType(ty1) = arrowType;
        let enc1 = Interop.Flix.Util.optionToNullable(encoding, x -> {let DictionaryEncoding(x1) = x; x1});
        let meta1 = Interop.Util.MapZ.fromFlixMapViaHashMapHH(metadata);
        FieldType(new1(nullable, ty1, enc1, meta1))


    pub def equals(x: FieldType, y: FieldType): Bool =
        import org.apache.arrow.vector.types.pojo.FieldType.equals(##java.lang.Object): Bool \ {};
        let FieldType(x1) = x;
        let FieldType(y1) = y;
        equals(x1, checked_cast(y1))

    pub def toString(s: FieldType): String = 
        import org.apache.arrow.vector.types.pojo.FieldType.toString(): String \ {};
        let FieldType(s1) = s;
        toString(s1)


    pub def notNullable(typ: ArrowType): FieldType = 
        import static org.apache.arrow.vector.types.pojo.FieldType.notNullable(##org.apache.arrow.vector.types.pojo.ArrowType): ##org.apache.arrow.vector.types.pojo.FieldType \ {};
        let ArrowType(typ1) = typ;
        FieldType(notNullable(typ1))

    pub def nullable(typ: ArrowType): FieldType = 
        import static org.apache.arrow.vector.types.pojo.FieldType.nullable(##org.apache.arrow.vector.types.pojo.ArrowType): ##org.apache.arrow.vector.types.pojo.FieldType \ {};
        let ArrowType(typ1) = typ;
        FieldType(nullable(typ1))

    pub def getType(s: FieldType): ArrowType = 
        import org.apache.arrow.vector.types.pojo.FieldType.getType(): ##org.apache.arrow.vector.types.pojo.ArrowType \ {};
        let FieldType(s1) = s;
        ArrowType(getType(s1))

    pub def isNullable(s: FieldType): Bool = 
        import org.apache.arrow.vector.types.pojo.FieldType.isNullable(): Bool \ {};
        let FieldType(s1) = s;
        isNullable(s1)

    
}
