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

    use Interop.Apache.Arrow.Vector.Types.MinorType.{MinorType}
    use Interop.Lang.Enum
    use Interop.Lang.Enum.{Enum}

    /// Immutable

    pub enum MinorType(##org.apache.arrow.vector.types.Types$MinorType)


    instance Interop.Lang.SubEnum[MinorType] {
        pub def toEnum(x: MinorType): Enum = 
            let MinorType(x1) = x;
            Enum(unchecked_cast(x1 as ##java.lang.Enum))

        pub def fromEnum(x: Enum): MinorType = 
            let Enum(x1) = x;
            MinorType(unchecked_cast(x1 as ##org.apache.arrow.vector.types.Types$MinorType))
    }

}

mod Interop.Apache.Arrow.Vector.Types.MinorType {

    use Interop.Apache.Arrow.Vector.Types.MinorType
    use Interop.Apache.Arrow.Vector.Types.MinorType.{MinorType}


    pub def getHH(s: MinorType): ##org.apache.arrow.vector.types.Types$MinorType = 
        let MinorType(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.Types$MinorType): MinorType = 
        MinorType(prim)


    pub def mt_BigInt(): MinorType = 
        import static get org.apache.arrow.vector.types.Types$MinorType.BIGINT: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_BIGINT;
        MinorType(get_BIGINT())

    pub def mt_Bit(): MinorType = 
        import static get org.apache.arrow.vector.types.Types$MinorType.BIT: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_BIT;
        MinorType(get_BIT())

    pub def mt_DateDay(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.DATEDAY: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_DATEDAY;
        MinorType(get_DATEDAY())

    pub def mt_DateMilli(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.DATEMILLI: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_DATEMILLI;
        MinorType(get_DATEMILLI())

    pub def mt_Decimal(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.DECIMAL: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_DECIMAL;
        MinorType(get_DECIMAL())

    pub def mt_Decimal256(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.DECIMAL256: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_DECIMAL256;
        MinorType(get_DECIMAL256())

    pub def mt_DenseUnion(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.DENSEUNION: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_DENSEUNION;
        MinorType(get_DENSEUNION())

    pub def mt_Duration(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.DURATION: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_DURATION;
        MinorType(get_DURATION())

    pub def mt_ExtensionType(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.EXTENSIONTYPE: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_EXTENSIONTYPE;
        MinorType(get_EXTENSIONTYPE())

    pub def mt_Fixed_Size_List(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.FIXED_SIZE_LIST: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_FIXED_SIZE_LIST;
        MinorType(get_FIXED_SIZE_LIST())

    pub def mt_FixedSizeBinary(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.FIXEDSIZEBINARY: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_FIXEDSIZEBINARY;
        MinorType(get_FIXEDSIZEBINARY())

    pub def mt_Float4(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.FLOAT4: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_FLOAT4;
        MinorType(get_FLOAT4())

    pub def mt_Float8(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.FLOAT8: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_FLOAT8;
        MinorType(get_FLOAT8())

    pub def mt_Int(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.INT: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_INT;
        MinorType(get_INT())

    pub def mt_IntervalDay(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.INTERVALDAY: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_INTERVALDAY;
        MinorType(get_INTERVALDAY())

    pub def mt_IntervalMonthDayNano(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.INTERVALMONTHDAYNANO: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_INTERVALMONTHDAYNANO;
        MinorType(get_INTERVALMONTHDAYNANO())

    pub def mt_IntervalYear(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.INTERVALYEAR: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_INTERVALYEAR;
        MinorType(get_INTERVALYEAR())

    pub def mt_LargeList(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.LARGELIST: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_LARGELIST;
        MinorType(get_LARGELIST())

    pub def mt_LargeVarBinary(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.LARGEVARBINARY: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_LARGEVARBINARY;
        MinorType(get_LARGEVARBINARY())

    pub def mt_LargeVarChar(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.LARGEVARCHAR: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_LARGEVARCHAR;
        MinorType(get_LARGEVARCHAR())

    pub def mt_List(): MinorType = 
        import static get org.apache.arrow.vector.types.Types$MinorType.LIST: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_LIST;
        MinorType(get_LIST())

    pub def mt_Map(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.MAP: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_MAP;
        MinorType(get_MAP())

    pub def mt_Null(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.NULL: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_NULL;
        MinorType(get_NULL())

    pub def mt_SmallInt(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.SMALLINT: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_SMALLINT;
        MinorType(get_SMALLINT())

    pub def mt_Struct(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.STRUCT: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_STRUCT;
        MinorType(get_STRUCT())

    pub def mt_TimeMicro(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMEMICRO: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMEMICRO;
        MinorType(get_TIMEMICRO())

    pub def mt_TimeMilli(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMEMILLI: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMEMILLI;
        MinorType(get_TIMEMILLI())

    pub def mt_TimeNano(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMENANO: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMENANO;
        MinorType(get_TIMENANO())

    pub def mt_TimeSec(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESEC: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESEC;
        MinorType(get_TIMESEC())

    pub def mt_TimestampMicro(): MinorType = 
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPMICRO: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPMICRO;
        MinorType(get_TIMESTAMPMICRO())

    pub def mt_TimestampMicroTZ(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPMICROTZ: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPMICROTZ;
        MinorType(get_TIMESTAMPMICROTZ())

    pub def mt_TimestampMilli(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPMILLI: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPMILLI;
        MinorType(get_TIMESTAMPMILLI())

    pub def mt_TimestampMilliTZ(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPMILLITZ: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPMILLITZ;
        MinorType(get_TIMESTAMPMILLITZ())

    pub def mt_TimestampNano(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPNANO: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPNANO;
        MinorType(get_TIMESTAMPNANO())

    pub def mt_TimestampNanoTZ(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPNANOTZ: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPNANOTZ;
        MinorType(get_TIMESTAMPNANOTZ())

    pub def mt_TimestampSec(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPSEC: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPSEC;
        MinorType(get_TIMESTAMPSEC())

    pub def mt_TimestampSecTZ(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TIMESTAMPSECTZ: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TIMESTAMPSECTZ;
        MinorType(get_TIMESTAMPSECTZ())

    pub def mt_TinyInt(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.TINYINT: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_TINYINT;
        MinorType(get_TINYINT())

    pub def mt_Uint1(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.UINT1: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_UINT1;
        MinorType(get_UINT1())

    pub def mt_Uint2(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.UINT2: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_UINT2;
        MinorType(get_UINT2())

    pub def mt_Uint4(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.UINT4: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_UINT4;
        MinorType(get_UINT4())

    pub def mt_Uint8(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.UINT8: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_UINT8;
        MinorType(get_UINT8())

    pub def mt_Union(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.UNION: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_UNION;
        MinorType(get_UNION())

    pub def mt_VarBinary(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.VARBINARY: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_VARBINARY;
        MinorType(get_VARBINARY())

    pub def mt_VarChar(): MinorType =
        import static get org.apache.arrow.vector.types.Types$MinorType.VARCHAR: ##org.apache.arrow.vector.types.Types$MinorType \ {} as get_VARCHAR;
        MinorType(get_VARCHAR())

}
