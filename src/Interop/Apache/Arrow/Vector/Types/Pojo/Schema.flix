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

    pub enum Schema(##org.apache.arrow.vector.types.pojo.Schema)


    instance ToString[Schema] {
        pub def toString(x: Schema): String = 
            Interop.Apache.Arrow.Vector.Types.Pojo.Schema.toString(x)
    }

}

mod Interop.Apache.Arrow.Vector.Types.Pojo.Schema {

    use Interop.Apache.Arrow.Vector.Types.Pojo.Schema
    use Interop.Apache.Arrow.Vector.Types.Pojo.Schema.{Schema}
    use Interop.Apache.Arrow.Vector.Types.Pojo.Field
    use Interop.Apache.Arrow.Vector.Types.Pojo.Field.{Field}


    pub def getHH(s: Schema): ##org.apache.arrow.vector.types.pojo.Schema = 
        let Schema(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.Schema): Schema = 
        Schema(prim)

   
    pub def new(fields: List[Field]): Schema = region rc {
        import new org.apache.arrow.vector.types.pojo.Schema(##java.lang.Iterable): ##org.apache.arrow.vector.types.pojo.Schema \ {} as new1;
        let arrlist = Interop.Util.ArrayList.fromFoldable(rc, fields);
        let iter = Interop.Lang.ImpIterable.toIterable(arrlist) |> Interop.Lang.IterableZ.getHH;
        Schema(new1(iter))
    }
   
    pub def newWithMetadata(fields: List[Field], metadata: Map[String, String]): Schema = region rc {
        import new org.apache.arrow.vector.types.pojo.Schema(##java.lang.Iterable, ##java.util.Map): ##org.apache.arrow.vector.types.pojo.Schema \ {} as new1;
        let arrlist = Interop.Util.ArrayList.fromFoldable(rc, fields);
        let iter = Interop.Lang.ImpIterable.toIterable(arrlist) |> Interop.Lang.IterableZ.getHH;
        let meta1 = Interop.Util.MapZ.fromFlixMapViaHashMapHH(metadata);
        Schema(new1(iter, meta1))
    }

    pub def equals(x: Schema, y: Schema): Bool =
        import org.apache.arrow.vector.types.pojo.Schema.equals(##java.lang.Object): Bool \ {};
        let Schema(x1) = x;
        let Schema(y1) = y;
        equals(x1, checked_cast(y1))

    pub def toString(s: Schema): String = 
        import org.apache.arrow.vector.types.pojo.Schema.toString(): String \ {};
        let Schema(s1) = s;
        toString(s1)


    pub def fromJSON(s: String): Result[String, Schema] = 
        Result.tryCatch(_ -> {
            import static org.apache.arrow.vector.types.pojo.Schema.fromJSON(String): ##org.apache.arrow.vector.types.pojo.Schema \ {};
            Schema(fromJSON(s))
        })

    pub def toJson(s: Schema): String = 
        import org.apache.arrow.vector.types.pojo.Schema.toJson(): String \ {};
        let Schema(s1) = s;
        toJson(s1)




}
