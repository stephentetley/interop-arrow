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

mod Interop.Apache.Arrow.Vector.Types {

    use Interop.Apache.Arrow.Vector.Types.FloatingPointPrecision.{FloatingPointPrecision}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}
    
    /// Immutable

    pub enum FloatingPointPrecision(##org.apache.arrow.vector.types.FloatingPointPrecision)

    instance Interop.Lang.SubEnum[FloatingPointPrecision] {
        pub def toEnum(x: FloatingPointPrecision): Enum = 
            let FloatingPointPrecision(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): FloatingPointPrecision = 
            let Enum(x1) = x;
            FloatingPointPrecision(unchecked_cast(x1 as ##org.apache.arrow.vector.types.FloatingPointPrecision))
    }

}

mod Interop.Apache.Arrow.Vector.Types.FloatingPointPrecision {

    use Interop.Apache.Arrow.Vector.Types.FloatingPointPrecision
    use Interop.Apache.Arrow.Vector.Types.FloatingPointPrecision.{FloatingPointPrecision}


    pub def getHH(s: FloatingPointPrecision): ##org.apache.arrow.vector.types.FloatingPointPrecision = 
        let FloatingPointPrecision(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.FloatingPointPrecision): FloatingPointPrecision = 
        FloatingPointPrecision(prim)


    pub def double(): FloatingPointPrecision = 
        import static get org.apache.arrow.vector.types.FloatingPointPrecision.DOUBLE: ##org.apache.arrow.vector.types.FloatingPointPrecision \ {} as get_DOUBLE;
        FloatingPointPrecision(get_DOUBLE())

    pub def half(): FloatingPointPrecision = 
        import static get org.apache.arrow.vector.types.FloatingPointPrecision.HALF: ##org.apache.arrow.vector.types.FloatingPointPrecision \ {} as get_HALF;
        FloatingPointPrecision(get_HALF())

    pub def single(): FloatingPointPrecision = 
        import static get org.apache.arrow.vector.types.FloatingPointPrecision.SINGLE: ##org.apache.arrow.vector.types.FloatingPointPrecision \ {} as get_SINGLE;
        FloatingPointPrecision(get_SINGLE())

}
