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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFloatingPoint.{ArrowTypeFloatingPoint}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeFloatingPoint(##org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeFloatingPoint] {
        pub def toArrowType(t: ArrowTypeFloatingPoint): ArrowType =
            let ArrowTypeFloatingPoint(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeFloatingPoint =
            let ArrowType(t1) = t;
            ArrowTypeFloatingPoint(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFloatingPoint {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFloatingPoint
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeFloatingPoint.{ArrowTypeFloatingPoint}
    use Interop.Apache.Arrow.Vector.Types.FloatingPointPrecision
    use Interop.Apache.Arrow.Vector.Types.FloatingPointPrecision.{FloatingPointPrecision}

    pub def getHH(t: ArrowTypeFloatingPoint): ##org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint = 
        let ArrowTypeFloatingPoint(t1) = t;
        t1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint): ArrowTypeFloatingPoint = 
        ArrowTypeFloatingPoint(prim)

    pub def new(prec: FloatingPointPrecision): ArrowTypeFloatingPoint =
        import new org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint(##org.apache.arrow.vector.types.FloatingPointPrecision): ##org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint \ {} as new1;
        let FloatingPointPrecision(prec1) = prec;
        ArrowTypeFloatingPoint(new1(prec1))

    pub def toString(t: ArrowTypeFloatingPoint): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint.toString(): String \ {};
        let ArrowTypeFloatingPoint(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeFloatingPoint, y: ArrowTypeFloatingPoint): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeFloatingPoint(x1) = x;
        let ArrowTypeFloatingPoint(y1) = y;
        equals(x1, checked_cast(y1))


}
