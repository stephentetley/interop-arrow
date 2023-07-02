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

mod Test01 {

    @test
    def test01(): Unit \ IO = region rc {
        let alloc = Interop.Apache.Arrow.Memory.RootAllocator.new(rc);
        let alloc1 = Interop.Apache.Arrow.Memory.ImpBufferAllocator.toBufferAllocator(alloc);
        let ivec = Interop.Apache.Arrow.Vector.IntVector.new("fixed-size-primitive-layout", alloc1);
        let ivec1 = Interop.Apache.Arrow.Vector.SubBaseFixedWidthVector.toBaseFixedWidthVector(ivec);
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.allocateNewWithSize(3, ivec1);
        Interop.Apache.Arrow.Vector.IntVector.setAt!(index = 0, 1, ivec);
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.setNullAt!(index = 1, ivec1);
        Interop.Apache.Arrow.Vector.IntVector.setAt!(index = 2, 3, ivec);
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.setValueCount!(3, ivec1);
        let str = Interop.Apache.Arrow.Vector.IntVector.toString(ivec); 
        println("Vector created in memory: ${str}");
        Interop.Apache.Arrow.Vector.BaseFixedWidthVector.close!(ivec1);
        Interop.Apache.Arrow.Memory.RootAllocator.close!(alloc)
    }

    @test
    def test02(): Unit \ IO = region rc {
        let alloc = Interop.Apache.Arrow.Memory.RootAllocator.new(rc);
        let alloc1 = Interop.Apache.Arrow.Memory.ImpBufferAllocator.toBufferAllocator(alloc);
        let vcvec = Interop.Apache.Arrow.Vector.VarCharVector.new("variable-size-primitive-layout", alloc1);
        let vcvec1 = Interop.Apache.Arrow.Vector.SubBaseVariableWidthVector.toBaseVariableWidthVector(vcvec);
        Interop.Apache.Arrow.Vector.BaseVariableWidthVector.allocateNewWithSize(3, vcvec1);
        Interop.Apache.Arrow.Vector.BaseVariableWidthVector.setAt!(index = 0, Interop.Lang.StringZ.getBytes(rc, "one"), vcvec1);
        Interop.Apache.Arrow.Vector.BaseVariableWidthVector.setAt!(index = 1, Interop.Lang.StringZ.getBytes(rc, "two"), vcvec1);
        Interop.Apache.Arrow.Vector.BaseVariableWidthVector.setAt!(index = 2, Interop.Lang.StringZ.getBytes(rc, "three"), vcvec1);
        Interop.Apache.Arrow.Vector.BaseVariableWidthVector.setValueCount!(3, vcvec1);
        let str = Interop.Apache.Arrow.Vector.VarCharVector.toString(vcvec); 
        println("Vector created in memory: ${str}");
        Interop.Apache.Arrow.Vector.BaseVariableWidthVector.close!(vcvec1);
        Interop.Apache.Arrow.Memory.RootAllocator.close!(alloc)
    }

    @test
    def test03(): Unit \ IO = 
        let metadata = Map#{"A" => "Id Card", "B" => "Passport", "C" => "Visa"};
        let document = 
            Interop.Apache.Arrow.Vector.Types.Pojo.Field.new("document", 
                Interop.Apache.Arrow.Vector.Types.Pojo.FieldType.newWithMetaData(true, 
                    Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType.toArrowType(Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeUtf8.new()), 
                    None,
                    metadata
                ),
                Nil        
            );
        println("Field created: ${document}, Metadata: ${metadata}")

    @test
    def test04(): Unit \ IO = 
        use Interop.Apache.Arrow.Vector.Types.Pojo.Field.{new => newField};
        use Interop.Apache.Arrow.Vector.Types.Pojo.FieldType.{nullable};
        let metadata = Map#{"K1" => "V1", "K2" => "V2"};
        let a = newField("A", nullable(Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType.toArrowType(Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeInt.new(32, true))), Nil);
        let b = newField("B", nullable(Interop.Apache.Arrow.Vector.Types.Pojo.SubArrowType.toArrowType(Interop.Apache.Arrow.Vector.Types.Pojo.ArrowTypeUtf8.new())), Nil);
        let schema = Interop.Apache.Arrow.Vector.Types.Pojo.Schema.newWithMetadata(List#{a, b}, metadata);
        println("Schema created: ${schema}")



}
