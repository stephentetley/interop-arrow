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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDate.{ArrowTypeDate}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeDate(##org.apache.arrow.vector.types.pojo.ArrowType$Date)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeDate] {
        pub def toArrowType(t: ArrowTypeDate): ArrowType =
            let ArrowTypeDate(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeDate =
            let ArrowType(t1) = t;
            ArrowTypeDate(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Date)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDate {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDate
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDate.{ArrowTypeDate}
    use Interop.Apache.Arrow.Vector.Types.DateUnit
    use Interop.Apache.Arrow.Vector.Types.DateUnit.{DateUnit}

    pub def getHH(t: ArrowTypeDate): ##org.apache.arrow.vector.types.pojo.ArrowType$Date = 
        let ArrowTypeDate(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Date): ArrowTypeDate = 
        ArrowTypeDate(prim)

    pub def new(u: DateUnit): ArrowTypeDate =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Date(##org.apache.arrow.vector.types.DateUnit): ##org.apache.arrow.vector.types.pojo.ArrowType$Date \ {} as new1;
        let DateUnit(u1) = u;
        ArrowTypeDate(new1(u1))

    pub def toString(t: ArrowTypeDate): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Date.toString(): String \ {};
        let ArrowTypeDate(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeDate, y: ArrowTypeDate): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Date.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeDate(x1) = x;
        let ArrowTypeDate(y1) = y;
        equals(x1, checked_cast(y1))


}
