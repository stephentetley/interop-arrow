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

    use Interop.Apache.Arrow.Vector.Types.DateUnit.{DateUnit}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}
    
    /// Immutable

    pub enum DateUnit(##org.apache.arrow.vector.types.DateUnit)

    instance Interop.Lang.SubEnum[DateUnit] {
        pub def toEnum(x: DateUnit): Enum = 
            let DateUnit(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): DateUnit = 
            let Enum(x1) = x;
            DateUnit(unchecked_cast(x1 as ##org.apache.arrow.vector.types.DateUnit))
    }

}

mod Interop.Apache.Arrow.Vector.Types.DateUnit {

    use Interop.Apache.Arrow.Vector.Types.DateUnit
    use Interop.Apache.Arrow.Vector.Types.DateUnit.{DateUnit}


    pub def getHH(s: DateUnit): ##org.apache.arrow.vector.types.DateUnit = 
        let DateUnit(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.DateUnit): DateUnit = 
        DateUnit(prim)


    pub def day(): DateUnit = 
        import static get org.apache.arrow.vector.types.DateUnit.DAY: ##org.apache.arrow.vector.types.DateUnit \ {} as get_DAY;
        DateUnit(get_DAY())

    pub def millisecond(): DateUnit = 
        import static get org.apache.arrow.vector.types.DateUnit.MILLISECOND: ##org.apache.arrow.vector.types.DateUnit \ {} as get_MILLISECOND;
        DateUnit(get_MILLISECOND())

}
