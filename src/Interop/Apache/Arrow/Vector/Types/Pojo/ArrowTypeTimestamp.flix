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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTimestamp.{ArrowTypeTimestamp}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeTimestamp(##org.apache.arrow.vector.types.pojo.ArrowType$Timestamp)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeTimestamp] {
        pub def toArrowType(t: ArrowTypeTimestamp): ArrowType =
            let ArrowTypeTimestamp(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeTimestamp =
            let ArrowType(t1) = t;
            ArrowTypeTimestamp(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Timestamp)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTimestamp {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTimestamp
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTimestamp.{ArrowTypeTimestamp}
    use Interop.Apache.Arrow.Vector.Types.TimeUnit
    use Interop.Apache.Arrow.Vector.Types.TimeUnit.{TimeUnit}

    pub def getHH(t: ArrowTypeTimestamp): ##org.apache.arrow.vector.types.pojo.ArrowType$Timestamp = 
        let ArrowTypeTimestamp(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Timestamp): ArrowTypeTimestamp = 
        ArrowTypeTimestamp(prim)

    pub def new(u: TimeUnit, timezone: String): ArrowTypeTimestamp =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Timestamp(##org.apache.arrow.vector.types.TimeUnit, String): ##org.apache.arrow.vector.types.pojo.ArrowType$Timestamp \ {} as new1;
        let TimeUnit(u1) = u;
        ArrowTypeTimestamp(new1(u1, timezone))

    pub def toString(t: ArrowTypeTimestamp): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Timestamp.toString(): String \ {};
        let ArrowTypeTimestamp(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeTimestamp, y: ArrowTypeTimestamp): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Timestamp.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeTimestamp(x1) = x;
        let ArrowTypeTimestamp(y1) = y;
        equals(x1, checked_cast(y1))


}
