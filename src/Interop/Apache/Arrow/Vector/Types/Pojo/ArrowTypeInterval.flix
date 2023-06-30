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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInterval.{ArrowTypeInterval}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeInterval(##org.apache.arrow.vector.types.pojo.ArrowType$Interval)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeInterval] {
        pub def toArrowType(t: ArrowTypeInterval): ArrowType =
            let ArrowTypeInterval(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeInterval =
            let ArrowType(t1) = t;
            ArrowTypeInterval(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Interval)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInterval {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInterval
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInterval.{ArrowTypeInterval}
    use Interop.Apache.Arrow.Vector.Types.IntervalUnit
    use Interop.Apache.Arrow.Vector.Types.IntervalUnit.{IntervalUnit}

    pub def getHH(t: ArrowTypeInterval): ##org.apache.arrow.vector.types.pojo.ArrowType$Interval = 
        let ArrowTypeInterval(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Interval): ArrowTypeInterval = 
        ArrowTypeInterval(prim)

    pub def new(u: IntervalUnit): ArrowTypeInterval =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Interval(##org.apache.arrow.vector.types.IntervalUnit): ##org.apache.arrow.vector.types.pojo.ArrowType$Interval \ {} as new1;
        let IntervalUnit(u1) = u;
        ArrowTypeInterval(new1(u1))

    pub def toString(t: ArrowTypeInterval): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Interval.toString(): String \ {};
        let ArrowTypeInterval(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeInterval, y: ArrowTypeInterval): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Interval.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeInterval(x1) = x;
        let ArrowTypeInterval(y1) = y;
        equals(x1, checked_cast(y1))


}
