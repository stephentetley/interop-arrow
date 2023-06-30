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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTime.{ArrowTypeTime}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeTime(##org.apache.arrow.vector.types.pojo.ArrowType$Time)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeTime] {
        pub def toArrowType(t: ArrowTypeTime): ArrowType =
            let ArrowTypeTime(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeTime =
            let ArrowType(t1) = t;
            ArrowTypeTime(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Time)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTime {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTime
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeTime.{ArrowTypeTime}
    use Interop.Apache.Arrow.Vector.Types.TimeUnit
    use Interop.Apache.Arrow.Vector.Types.TimeUnit.{TimeUnit}

    pub def getHH(t: ArrowTypeTime): ##org.apache.arrow.vector.types.pojo.ArrowType$Time = 
        let ArrowTypeTime(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Time): ArrowTypeTime = 
        ArrowTypeTime(prim)

    pub def new(u: TimeUnit, bitWidth: Int32): ArrowTypeTime =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Time(##org.apache.arrow.vector.types.TimeUnit, Int32): ##org.apache.arrow.vector.types.pojo.ArrowType$Time \ {} as new1;
        let TimeUnit(u1) = u;
        ArrowTypeTime(new1(u1, bitWidth))

    pub def toString(t: ArrowTypeTime): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Time.toString(): String \ {};
        let ArrowTypeTime(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeTime, y: ArrowTypeTime): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Time.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeTime(x1) = x;
        let ArrowTypeTime(y1) = y;
        equals(x1, checked_cast(y1))


}
