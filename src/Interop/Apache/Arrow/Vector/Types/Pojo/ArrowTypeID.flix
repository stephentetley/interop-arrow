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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeID.{ArrowTypeID}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}

    /// Immutable

    pub enum ArrowTypeID(##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID)

    instance Interop.Lang.SubEnum[ArrowTypeID] {
        pub def toEnum(x: ArrowTypeID): Enum = 
            let ArrowTypeID(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): ArrowTypeID = 
            let Enum(x1) = x;
            ArrowTypeID(unchecked_cast(x1 as ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID))
    }

}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeID {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeID
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeID.{ArrowTypeID}


    pub def getHH(s: ArrowTypeID): ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID = 
        let ArrowTypeID(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID): ArrowTypeID = 
        ArrowTypeID(prim)

    pub def tid_Binary(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Binary: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Binary;
        ArrowTypeID(get_Binary())

    pub def tid_Bool(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Bool: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Bool;
        ArrowTypeID(get_Bool())
    
    pub def tid_Date(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Date: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Date;
        ArrowTypeID(get_Date())
    
    pub def tid_Decimal(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Decimal: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Decimal;
        ArrowTypeID(get_Decimal())
    
    pub def tid_Duration(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Duration: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Duration;
        ArrowTypeID(get_Duration())
    
    pub def tid_FixedSizeBinary(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.FixedSizeBinary: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_FixedSizeBinary;
        ArrowTypeID(get_FixedSizeBinary())

    pub def tid_FixedSizeList(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.FixedSizeList: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_FixedSizeList;
        ArrowTypeID(get_FixedSizeList())
    
    pub def tid_FloatingPoint(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.FloatingPoint: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_FloatingPoint;
        ArrowTypeID(get_FloatingPoint())

    pub def tid_Int(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Int: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Int;
        ArrowTypeID(get_Int())

    pub def tid_Interval(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Interval: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Interval;
        ArrowTypeID(get_Interval())

    pub def tid_LargeBinary(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.LargeBinary: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_LargeBinary;
        ArrowTypeID(get_LargeBinary())

    pub def tid_LargeList(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.LargeList: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_LargeList;
        ArrowTypeID(get_LargeList())

    pub def tid_LargeUtf8(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.LargeUtf8: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_LargeUtf8;
        ArrowTypeID(get_LargeUtf8())

    pub def tid_List(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.List: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_List;
        ArrowTypeID(get_List())

    pub def tid_Map(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Map: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Map;
        ArrowTypeID(get_Map())

    pub def tid_NONE(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.NONE: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_NONE;
        ArrowTypeID(get_NONE())

    pub def tid_Null(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Null: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Null;
        ArrowTypeID(get_Null())

    pub def tid_Struct(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Struct: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Struct;
        ArrowTypeID(get_Struct())

    pub def tid_Time(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Time: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Time;
        ArrowTypeID(get_Time())

    pub def tid_Timestamp(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Timestamp: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Timestamp;
        ArrowTypeID(get_Timestamp())

    pub def tid_Union(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Union: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Union;
        ArrowTypeID(get_Union())

    pub def tid_Utf8(): ArrowTypeID = 
        import static get org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID.Utf8: ##org.apache.arrow.vector.types.pojo.ArrowType$ArrowTypeID \ {} as get_Utf8;
        ArrowTypeID(get_Utf8())


}
