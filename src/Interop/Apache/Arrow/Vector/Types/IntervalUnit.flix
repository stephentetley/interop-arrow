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

    use Interop.Apache.Arrow.Vector.Types.IntervalUnit.{IntervalUnit}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}
    
    /// Immutable

    pub enum IntervalUnit(##org.apache.arrow.vector.types.IntervalUnit)

    instance Interop.Lang.SubEnum[IntervalUnit] {
        pub def toEnum(x: IntervalUnit): Enum = 
            let IntervalUnit(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): IntervalUnit = 
            let Enum(x1) = x;
            IntervalUnit(unchecked_cast(x1 as ##org.apache.arrow.vector.types.IntervalUnit))
    }

}

mod Interop.Apache.Arrow.Vector.Types.IntervalUnit {

    use Interop.Apache.Arrow.Vector.Types.IntervalUnit
    use Interop.Apache.Arrow.Vector.Types.IntervalUnit.{IntervalUnit}


    pub def getHH(s: IntervalUnit): ##org.apache.arrow.vector.types.IntervalUnit = 
        let IntervalUnit(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.IntervalUnit): IntervalUnit = 
        IntervalUnit(prim)


    pub def day_time(): IntervalUnit = 
        import static get org.apache.arrow.vector.types.IntervalUnit.DAY_TIME: ##org.apache.arrow.vector.types.IntervalUnit \ {} as get_DAY_TIME;
        IntervalUnit(get_DAY_TIME())

    pub def month_day_nano(): IntervalUnit = 
        import static get org.apache.arrow.vector.types.IntervalUnit.MONTH_DAY_NANO: ##org.apache.arrow.vector.types.IntervalUnit \ {} as get_MONTH_DAY_NANO;
        IntervalUnit(get_MONTH_DAY_NANO())

    pub def year_month(): IntervalUnit = 
        import static get org.apache.arrow.vector.types.IntervalUnit.YEAR_MONTH: ##org.apache.arrow.vector.types.IntervalUnit \ {} as get_YEAR_MONTH;
        IntervalUnit(get_YEAR_MONTH())


}
