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

    use Interop.Apache.Arrow.Vector.Types.TimeUnit.{TimeUnit}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}
    
    /// Immutable

    pub enum TimeUnit(##org.apache.arrow.vector.types.TimeUnit)

    instance Interop.Lang.SubEnum[TimeUnit] {
        pub def toEnum(x: TimeUnit): Enum = 
            let TimeUnit(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): TimeUnit = 
            let Enum(x1) = x;
            TimeUnit(unchecked_cast(x1 as ##org.apache.arrow.vector.types.TimeUnit))
    }

}

mod Interop.Apache.Arrow.Vector.Types.TimeUnit {

    use Interop.Apache.Arrow.Vector.Types.TimeUnit
    use Interop.Apache.Arrow.Vector.Types.TimeUnit.{TimeUnit}


    pub def getHH(s: TimeUnit): ##org.apache.arrow.vector.types.TimeUnit = 
        let TimeUnit(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.TimeUnit): TimeUnit = 
        TimeUnit(prim)


    pub def microsecond(): TimeUnit = 
        import static get org.apache.arrow.vector.types.TimeUnit.MICROSECOND: ##org.apache.arrow.vector.types.TimeUnit \ {} as get_MICROSECOND;
        TimeUnit(get_MICROSECOND())

    pub def millisecond(): TimeUnit = 
        import static get org.apache.arrow.vector.types.TimeUnit.MILLISECOND: ##org.apache.arrow.vector.types.TimeUnit \ {} as get_MILLISECOND;
        TimeUnit(get_MILLISECOND())

    pub def nanosecond(): TimeUnit = 
        import static get org.apache.arrow.vector.types.TimeUnit.NANOSECOND: ##org.apache.arrow.vector.types.TimeUnit \ {} as get_NANOSECOND;
        TimeUnit(get_NANOSECOND())

    pub def second(): TimeUnit = 
        import static get org.apache.arrow.vector.types.TimeUnit.SECOND: ##org.apache.arrow.vector.types.TimeUnit \ {} as get_SECOND;
        TimeUnit(get_SECOND())


}
