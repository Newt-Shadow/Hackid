package com.google.protobuf.nano.ym;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class Extension {
    public static final int TYPE_BOOL = 8;
    public static final int TYPE_BYTES = 12;
    public static final int TYPE_DOUBLE = 1;
    public static final int TYPE_ENUM = 14;
    public static final int TYPE_FIXED32 = 7;
    public static final int TYPE_FIXED64 = 6;
    public static final int TYPE_FLOAT = 2;
    public static final int TYPE_GROUP = 10;
    public static final int TYPE_INT32 = 5;
    public static final int TYPE_INT64 = 3;
    public static final int TYPE_MESSAGE = 11;
    public static final int TYPE_SFIXED32 = 15;
    public static final int TYPE_SFIXED64 = 16;
    public static final int TYPE_SINT32 = 17;
    public static final int TYPE_SINT64 = 18;
    public static final int TYPE_STRING = 9;
    public static final int TYPE_UINT32 = 13;
    public static final int TYPE_UINT64 = 4;
    protected final Class clazz;
    protected final boolean repeated;
    protected final int tag;
    protected final int type;

    /* loaded from: classes.dex */
    class PrimitiveExtension extends Extension {
        private final int nonPackedTag;
        private final int packedTag;

        public PrimitiveExtension(int i10, Class cls, int i11, boolean z10, int i12, int i13) {
            super(i10, cls, i11, z10);
            this.nonPackedTag = i12;
            this.packedTag = i13;
        }

        private int computePackedDataSize(Object obj) {
            int i10;
            int length = Array.getLength(obj);
            int i11 = 0;
            switch (this.type) {
                case 1:
                case 6:
                case 16:
                    return length * 8;
                case 2:
                case 7:
                case 15:
                    return length * 4;
                case 3:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeInt64SizeNoTag(Array.getLong(obj, i11));
                        i11++;
                    }
                    break;
                case 4:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeUInt64SizeNoTag(Array.getLong(obj, i11));
                        i11++;
                    }
                    break;
                case 5:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeInt32SizeNoTag(Array.getInt(obj, i11));
                        i11++;
                    }
                    break;
                case 8:
                    return length;
                case 9:
                case 10:
                case 11:
                case 12:
                default:
                    throw new IllegalArgumentException("Unexpected non-packable type " + this.type);
                case 13:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeUInt32SizeNoTag(Array.getInt(obj, i11));
                        i11++;
                    }
                    break;
                case 14:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeEnumSizeNoTag(Array.getInt(obj, i11));
                        i11++;
                    }
                    break;
                case 17:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeSInt32SizeNoTag(Array.getInt(obj, i11));
                        i11++;
                    }
                    break;
                case 18:
                    i10 = 0;
                    while (i11 < length) {
                        i10 += CodedOutputByteBufferNano.computeSInt64SizeNoTag(Array.getLong(obj, i11));
                        i11++;
                    }
                    break;
            }
            return i10;
        }

        @Override // com.google.protobuf.nano.ym.Extension
        protected int computeRepeatedSerializedSize(Object obj) {
            int i10 = this.tag;
            if (i10 == this.nonPackedTag) {
                return super.computeRepeatedSerializedSize(obj);
            }
            if (i10 == this.packedTag) {
                int computePackedDataSize = computePackedDataSize(obj);
                return computePackedDataSize + CodedOutputByteBufferNano.computeRawVarint32Size(computePackedDataSize) + CodedOutputByteBufferNano.computeRawVarint32Size(this.tag);
            }
            throw new IllegalArgumentException("Unexpected repeated extension tag " + this.tag + ", unequal to both non-packed variant " + this.nonPackedTag + " and packed variant " + this.packedTag);
        }

        @Override // com.google.protobuf.nano.ym.Extension
        protected final int computeSingularSerializedSize(Object obj) {
            int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
            switch (this.type) {
                case 1:
                    return CodedOutputByteBufferNano.computeDoubleSize(tagFieldNumber, ((Double) obj).doubleValue());
                case 2:
                    return CodedOutputByteBufferNano.computeFloatSize(tagFieldNumber, ((Float) obj).floatValue());
                case 3:
                    return CodedOutputByteBufferNano.computeInt64Size(tagFieldNumber, ((Long) obj).longValue());
                case 4:
                    return CodedOutputByteBufferNano.computeUInt64Size(tagFieldNumber, ((Long) obj).longValue());
                case 5:
                    return CodedOutputByteBufferNano.computeInt32Size(tagFieldNumber, ((Integer) obj).intValue());
                case 6:
                    return CodedOutputByteBufferNano.computeFixed64Size(tagFieldNumber, ((Long) obj).longValue());
                case 7:
                    return CodedOutputByteBufferNano.computeFixed32Size(tagFieldNumber, ((Integer) obj).intValue());
                case 8:
                    return CodedOutputByteBufferNano.computeBoolSize(tagFieldNumber, ((Boolean) obj).booleanValue());
                case 9:
                    return CodedOutputByteBufferNano.computeStringSize(tagFieldNumber, (String) obj);
                case 10:
                case 11:
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
                case 12:
                    return CodedOutputByteBufferNano.computeBytesSize(tagFieldNumber, (byte[]) obj);
                case 13:
                    return CodedOutputByteBufferNano.computeUInt32Size(tagFieldNumber, ((Integer) obj).intValue());
                case 14:
                    return CodedOutputByteBufferNano.computeEnumSize(tagFieldNumber, ((Integer) obj).intValue());
                case 15:
                    return CodedOutputByteBufferNano.computeSFixed32Size(tagFieldNumber, ((Integer) obj).intValue());
                case 16:
                    return CodedOutputByteBufferNano.computeSFixed64Size(tagFieldNumber, ((Long) obj).longValue());
                case 17:
                    return CodedOutputByteBufferNano.computeSInt32Size(tagFieldNumber, ((Integer) obj).intValue());
                case 18:
                    return CodedOutputByteBufferNano.computeSInt64Size(tagFieldNumber, ((Long) obj).longValue());
            }
        }

        @Override // com.google.protobuf.nano.ym.Extension
        protected Object readData(CodedInputByteBufferNano codedInputByteBufferNano) {
            try {
                switch (this.type) {
                    case 1:
                        return Double.valueOf(codedInputByteBufferNano.readDouble());
                    case 2:
                        return Float.valueOf(codedInputByteBufferNano.readFloat());
                    case 3:
                        return Long.valueOf(codedInputByteBufferNano.readInt64());
                    case 4:
                        return Long.valueOf(codedInputByteBufferNano.readUInt64());
                    case 5:
                        return Integer.valueOf(codedInputByteBufferNano.readInt32());
                    case 6:
                        return Long.valueOf(codedInputByteBufferNano.readFixed64());
                    case 7:
                        return Integer.valueOf(codedInputByteBufferNano.readFixed32());
                    case 8:
                        return Boolean.valueOf(codedInputByteBufferNano.readBool());
                    case 9:
                        return codedInputByteBufferNano.readString();
                    case 10:
                    case 11:
                    default:
                        throw new IllegalArgumentException("Unknown type " + this.type);
                    case 12:
                        return codedInputByteBufferNano.readBytes();
                    case 13:
                        return Integer.valueOf(codedInputByteBufferNano.readUInt32());
                    case 14:
                        return Integer.valueOf(codedInputByteBufferNano.readEnum());
                    case 15:
                        return Integer.valueOf(codedInputByteBufferNano.readSFixed32());
                    case 16:
                        return Long.valueOf(codedInputByteBufferNano.readSFixed64());
                    case 17:
                        return Integer.valueOf(codedInputByteBufferNano.readSInt32());
                    case 18:
                        return Long.valueOf(codedInputByteBufferNano.readSInt64());
                }
            } catch (IOException e10) {
                throw new IllegalArgumentException("Error reading extension field", e10);
            }
        }

        @Override // com.google.protobuf.nano.ym.Extension
        protected void readDataInto(UnknownFieldData unknownFieldData, List list) {
            int i10 = unknownFieldData.tag;
            int i11 = this.nonPackedTag;
            byte[] bArr = unknownFieldData.bytes;
            if (i10 == i11) {
                list.add(readData(CodedInputByteBufferNano.newInstance(bArr)));
                return;
            }
            CodedInputByteBufferNano newInstance = CodedInputByteBufferNano.newInstance(bArr);
            try {
                newInstance.pushLimit(newInstance.readRawVarint32());
                while (!newInstance.isAtEnd()) {
                    list.add(readData(newInstance));
                }
            } catch (IOException e10) {
                throw new IllegalArgumentException("Error reading extension field", e10);
            }
        }

        @Override // com.google.protobuf.nano.ym.Extension
        protected void writeRepeatedData(Object obj, CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.tag;
            if (i10 == this.nonPackedTag) {
                super.writeRepeatedData(obj, codedOutputByteBufferNano);
            } else if (i10 != this.packedTag) {
                throw new IllegalArgumentException("Unexpected repeated extension tag " + this.tag + ", unequal to both non-packed variant " + this.nonPackedTag + " and packed variant " + this.packedTag);
            } else {
                int length = Array.getLength(obj);
                int computePackedDataSize = computePackedDataSize(obj);
                try {
                    codedOutputByteBufferNano.writeRawVarint32(this.tag);
                    codedOutputByteBufferNano.writeRawVarint32(computePackedDataSize);
                    int i11 = 0;
                    switch (this.type) {
                        case 1:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeDoubleNoTag(Array.getDouble(obj, i11));
                                i11++;
                            }
                            return;
                        case 2:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeFloatNoTag(Array.getFloat(obj, i11));
                                i11++;
                            }
                            return;
                        case 3:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeInt64NoTag(Array.getLong(obj, i11));
                                i11++;
                            }
                            return;
                        case 4:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeUInt64NoTag(Array.getLong(obj, i11));
                                i11++;
                            }
                            return;
                        case 5:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeInt32NoTag(Array.getInt(obj, i11));
                                i11++;
                            }
                            return;
                        case 6:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeFixed64NoTag(Array.getLong(obj, i11));
                                i11++;
                            }
                            return;
                        case 7:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeFixed32NoTag(Array.getInt(obj, i11));
                                i11++;
                            }
                            return;
                        case 8:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeBoolNoTag(Array.getBoolean(obj, i11));
                                i11++;
                            }
                            return;
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        default:
                            throw new IllegalArgumentException("Unpackable type " + this.type);
                        case 13:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeUInt32NoTag(Array.getInt(obj, i11));
                                i11++;
                            }
                            return;
                        case 14:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeEnumNoTag(Array.getInt(obj, i11));
                                i11++;
                            }
                            return;
                        case 15:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeSFixed32NoTag(Array.getInt(obj, i11));
                                i11++;
                            }
                            return;
                        case 16:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeSFixed64NoTag(Array.getLong(obj, i11));
                                i11++;
                            }
                            return;
                        case 17:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeSInt32NoTag(Array.getInt(obj, i11));
                                i11++;
                            }
                            return;
                        case 18:
                            while (i11 < length) {
                                codedOutputByteBufferNano.writeSInt64NoTag(Array.getLong(obj, i11));
                                i11++;
                            }
                            return;
                    }
                } catch (IOException e10) {
                    throw new IllegalStateException(e10);
                }
            }
        }

        @Override // com.google.protobuf.nano.ym.Extension
        protected final void writeSingularData(Object obj, CodedOutputByteBufferNano codedOutputByteBufferNano) {
            try {
                codedOutputByteBufferNano.writeRawVarint32(this.tag);
                switch (this.type) {
                    case 1:
                        codedOutputByteBufferNano.writeDoubleNoTag(((Double) obj).doubleValue());
                        return;
                    case 2:
                        codedOutputByteBufferNano.writeFloatNoTag(((Float) obj).floatValue());
                        return;
                    case 3:
                        codedOutputByteBufferNano.writeInt64NoTag(((Long) obj).longValue());
                        return;
                    case 4:
                        codedOutputByteBufferNano.writeUInt64NoTag(((Long) obj).longValue());
                        return;
                    case 5:
                        codedOutputByteBufferNano.writeInt32NoTag(((Integer) obj).intValue());
                        return;
                    case 6:
                        codedOutputByteBufferNano.writeFixed64NoTag(((Long) obj).longValue());
                        return;
                    case 7:
                        codedOutputByteBufferNano.writeFixed32NoTag(((Integer) obj).intValue());
                        return;
                    case 8:
                        codedOutputByteBufferNano.writeBoolNoTag(((Boolean) obj).booleanValue());
                        return;
                    case 9:
                        codedOutputByteBufferNano.writeStringNoTag((String) obj);
                        return;
                    case 10:
                    case 11:
                    default:
                        throw new IllegalArgumentException("Unknown type " + this.type);
                    case 12:
                        codedOutputByteBufferNano.writeBytesNoTag((byte[]) obj);
                        return;
                    case 13:
                        codedOutputByteBufferNano.writeUInt32NoTag(((Integer) obj).intValue());
                        return;
                    case 14:
                        codedOutputByteBufferNano.writeEnumNoTag(((Integer) obj).intValue());
                        return;
                    case 15:
                        codedOutputByteBufferNano.writeSFixed32NoTag(((Integer) obj).intValue());
                        return;
                    case 16:
                        codedOutputByteBufferNano.writeSFixed64NoTag(((Long) obj).longValue());
                        return;
                    case 17:
                        codedOutputByteBufferNano.writeSInt32NoTag(((Integer) obj).intValue());
                        return;
                    case 18:
                        codedOutputByteBufferNano.writeSInt64NoTag(((Long) obj).longValue());
                        return;
                }
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    private Extension(int i10, Class cls, int i11, boolean z10) {
        this.type = i10;
        this.clazz = cls;
        this.tag = i11;
        this.repeated = z10;
    }

    public static Extension createMessageTyped(int i10, Class cls, int i11) {
        return new Extension(i10, cls, i11, false);
    }

    public static Extension createPrimitiveTyped(int i10, Class cls, int i11) {
        return new PrimitiveExtension(i10, cls, i11, false, 0, 0);
    }

    public static Extension createRepeatedMessageTyped(int i10, Class cls, int i11) {
        return new Extension(i10, cls, i11, true);
    }

    public static Extension createRepeatedPrimitiveTyped(int i10, Class cls, int i11, int i12, int i13) {
        return new PrimitiveExtension(i10, cls, i11, true, i12, i13);
    }

    private Object getRepeatedValueFrom(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            UnknownFieldData unknownFieldData = (UnknownFieldData) list.get(i10);
            if (unknownFieldData.bytes.length != 0) {
                readDataInto(unknownFieldData, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        Class cls = this.clazz;
        Object cast = cls.cast(Array.newInstance(cls.getComponentType(), size));
        for (int i11 = 0; i11 < size; i11++) {
            Array.set(cast, i11, arrayList.get(i11));
        }
        return cast;
    }

    private Object getSingularValueFrom(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.clazz.cast(readData(CodedInputByteBufferNano.newInstance(((UnknownFieldData) list.get(list.size() - 1)).bytes)));
    }

    protected int computeRepeatedSerializedSize(Object obj) {
        int length = Array.getLength(obj);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (Array.get(obj, i11) != null) {
                i10 += computeSingularSerializedSize(Array.get(obj, i11));
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int computeSerializedSize(Object obj) {
        return this.repeated ? computeRepeatedSerializedSize(obj) : computeSingularSerializedSize(obj);
    }

    protected int computeSingularSerializedSize(Object obj) {
        int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
        int i10 = this.type;
        if (i10 != 10) {
            if (i10 == 11) {
                return CodedOutputByteBufferNano.computeMessageSize(tagFieldNumber, (MessageNano) obj);
            }
            throw new IllegalArgumentException("Unknown type " + this.type);
        }
        return CodedOutputByteBufferNano.computeGroupSize(tagFieldNumber, (MessageNano) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object getValueFrom(List list) {
        if (list == null) {
            return null;
        }
        return this.repeated ? getRepeatedValueFrom(list) : getSingularValueFrom(list);
    }

    protected Object readData(CodedInputByteBufferNano codedInputByteBufferNano) {
        Class<?> componentType = this.repeated ? this.clazz.getComponentType() : this.clazz;
        try {
            int i10 = this.type;
            if (i10 == 10) {
                MessageNano messageNano = (MessageNano) componentType.newInstance();
                codedInputByteBufferNano.readGroup(messageNano, WireFormatNano.getTagFieldNumber(this.tag));
                return messageNano;
            } else if (i10 == 11) {
                MessageNano messageNano2 = (MessageNano) componentType.newInstance();
                codedInputByteBufferNano.readMessage(messageNano2);
                return messageNano2;
            } else {
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (IOException e10) {
            throw new IllegalArgumentException("Error reading extension field", e10);
        } catch (IllegalAccessException e11) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e11);
        } catch (InstantiationException e12) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e12);
        }
    }

    protected void readDataInto(UnknownFieldData unknownFieldData, List list) {
        list.add(readData(CodedInputByteBufferNano.newInstance(unknownFieldData.bytes)));
    }

    protected void writeRepeatedData(Object obj, CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            Object obj2 = Array.get(obj, i10);
            if (obj2 != null) {
                writeSingularData(obj2, codedOutputByteBufferNano);
            }
        }
    }

    protected void writeSingularData(Object obj, CodedOutputByteBufferNano codedOutputByteBufferNano) {
        try {
            codedOutputByteBufferNano.writeRawVarint32(this.tag);
            int i10 = this.type;
            if (i10 == 10) {
                int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
                codedOutputByteBufferNano.writeGroupNoTag((MessageNano) obj);
                codedOutputByteBufferNano.writeTag(tagFieldNumber, 4);
            } else if (i10 == 11) {
                codedOutputByteBufferNano.writeMessageNoTag((MessageNano) obj);
            } else {
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeTo(Object obj, CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (this.repeated) {
            writeRepeatedData(obj, codedOutputByteBufferNano);
        } else {
            writeSingularData(obj, codedOutputByteBufferNano);
        }
    }
}
