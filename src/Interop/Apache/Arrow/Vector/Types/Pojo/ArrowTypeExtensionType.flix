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

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeExtensionType.{ArrowTypeExtensionType}
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowType.{ArrowType}
    
    /// Immutable

    pub enum ArrowTypeExtensionType(##org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType)


    instance Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType[ArrowTypeExtensionType] {
        pub def toArrowType(t: ArrowTypeExtensionType): ArrowType =
            let ArrowTypeExtensionType(t1) = t;
            ArrowType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType)) 

        pub def fromArrowType(t: ArrowType): ArrowTypeExtensionType =
            let ArrowType(t1) = t;
            ArrowTypeExtensionType(unchecked_cast(t1 as ##org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType)) 
    }
}

mod Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeExtensionType {

    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeExtensionType
    use Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeExtensionType.{ArrowTypeExtensionType}


    pub def getHH(s: ArrowTypeExtensionType): ##org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType = 
        let ArrowTypeExtensionType(s1) = s;
        s1

    pub def wrapHH(prim: ##org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType): ArrowTypeExtensionType = 
        ArrowTypeExtensionType(prim)


    pub def new(): ArrowTypeExtensionType =
        import new org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType(): ##org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType \ {} as new1;
        ArrowTypeExtensionType(new1())

    pub def toString(t: ArrowTypeExtensionType): String = 
        import org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType.toString(): String \ {};
        let ArrowTypeExtensionType(t1) = t;
        toString(t1)


    pub def equals(x: ArrowTypeExtensionType, y: ArrowTypeExtensionType): Bool =
        import org.apache.arrow.vector.types.pojo.ArrowType$ExtensionType.equals(##java.lang.Object): Bool \ {};
        let ArrowTypeExtensionType(x1) = x;
        let ArrowTypeExtensionType(y1) = y;
        equals(x1, checked_cast(y1))


}
