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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDecimal.{ArrowTypeDecimal}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeDecimal(##org.apache.arrow.vector.types.pojo.ArrowType$Decimal)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeDecimal] {
        pub def toArrowType(t: ArrowTypeDecimal): ArrowType =
            let ArrowTypeDecimal(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeDecimal =
            let ArrowType(t1) = t;
            ArrowTypeDecimal(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$Decimal)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDecimal {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDecimal
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeDecimal.{ArrowTypeDecimal}


    pub def getHH(s: ArrowTypeDecimal): ##org.apache.arrow.vector.types.pojo.ArrowType$Decimal = 
        let ArrowTypeDecimal(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$Decimal): ArrowTypeDecimal = 
        ArrowTypeDecimal(prim)


    pub def new(precision: {precision = Int32}, scale: {scale = Int32}, bitWidth: {bitWidth = Int32}): ArrowTypeDecimal =
        import new org.apache.arrow.vector.types.pojo.ArrowType$Decimal(Int32, Int32, Int32): ##org.apache.arrow.vector.types.pojo.ArrowType$Decimal \ {} as new1;
        ArrowTypeDecimal(new1(precision.precision, scale.scale, bitWidth.bitWidth))

    pub def toString(t: ArrowTypeDecimal): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$Decimal.toString(): String \ {};
        let ArrowTypeDecimal(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeDecimal, y: ArrowTypeDecimal): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$Decimal.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeDecimal(x1) = x;
        let ArrowTypeDecimal(y1) = y;
        equals(x1, checked_cast(y1))


}
