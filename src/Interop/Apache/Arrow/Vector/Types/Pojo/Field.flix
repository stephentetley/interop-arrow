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

    use Interop.Apache.Arrow.Vector.Types.Pojo.Field.{Field}
    
    /// Immutable

    pub enum Field(##org.apache.arrow.vector.types.pojo.Field)

    instance ToString[Field] {
        pub def toString(x: Field): String = 
            Interop.Apache.Arrow.Vector.Types.Pojo.Field.toString(x)
    }

    instance Interop.Flix.Marshal[Field] {
        pub def toJavaObject(x: Field): ##java.lang.Object =
            let Field(x1) = x;
            checked_cast(x1)

        pub def fromJavaObject(o: ##java.lang.Object): Field = 
            Field(unchecked_cast(o as ##org.apache.arrow.vector.types.pojo.Field))
    }

}

mod Interop.Apache.Arrow.Vector.Types.Pojo.Field {

    use Interop.Apache.Arrow.Vector.Types.Pojo.Field
    use Interop.Apache.Arrow.Vector.Types.Pojo.Field.{Field}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    use Interop.Apache.Arrow.Vector.Types.Pojo.FieldType
    use Interop.Apache.Arrow.Vector.Types.Pojo.FieldType.{FieldType}


    pub def getHH(s: Field): ##org.apache.arrow.vector.types.pojo.Field = 
        let Field(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.Field): Field = 
        Field(prim)

    pub def new(name: String, fieldType: FieldType, children: List[Field]): Field = region rc {
        import new org.apache.arrow.vector.types.pojo.Field(String, ##org.apache.arrow.vector.types.pojo.FieldType, ##java.util.List): ##org.apache.arrow.vector.types.pojo.Field \ {} as new1;
        let FieldType(ty1) = fieldType;
        let jxs = Interop.Flix.Temp.listToNullable(rc, children);
        Field(new1(name, ty1, jxs))
    }


    pub def equals(x: Field, y: Field): Bool =
        import org.apache.arrow.vector.types.pojo.Field.equals(##java.lang.Object): Bool \ {};
        let Field(x1) = x;
        let Field(y1) = y;
        equals(x1, checked_cast(y1))

    pub def toString(s: Field): String = 
        import org.apache.arrow.vector.types.pojo.Field.toString(): String \ {};
        let Field(s1) = s;
        toString(s1)


    pub def notNullable(name: String, typ: ArrowType): Field = 
        import static org.apache.arrow.vector.types.pojo.Field.notNullable(String, ##org.apache.arrow.vector.types.pojo.ArrowType): ##org.apache.arrow.vector.types.pojo.Field \ {};
        let ArrowType(typ1) = typ;
        Field(notNullable(name, typ1))

    pub def nullable(name: String, typ: ArrowType): Field = 
        import static org.apache.arrow.vector.types.pojo.Field.nullable(String, ##org.apache.arrow.vector.types.pojo.ArrowType): ##org.apache.arrow.vector.types.pojo.Field \ {};
        let ArrowType(typ1) = typ;
        Field(nullable(name, typ1))


    pub def getName(s: Field): String = 
        import org.apache.arrow.vector.types.pojo.Field.getName(): String \ {};
        let Field(s1) = s;
        getName(s1)

    pub def getType(s: Field): ArrowType = 
        import org.apache.arrow.vector.types.pojo.Field.getType(): ##org.apache.arrow.vector.types.pojo.ArrowType \ {};
        let Field(s1) = s;
        ArrowType(getType(s1))

    pub def getFieldType(s: Field): FieldType = 
        import org.apache.arrow.vector.types.pojo.Field.getFieldType(): ##org.apache.arrow.vector.types.pojo.FieldType \ {};
        let Field(s1) = s;
        FieldType(getFieldType(s1))

    pub def isNullable(s: Field): Bool = 
        import org.apache.arrow.vector.types.pojo.Field.isNullable(): Bool \ {};
        let Field(s1) = s;
        isNullable(s1)

}
