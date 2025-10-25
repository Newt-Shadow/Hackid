package io.appmetrica.analytics.protobuf.nano;

import io.appmetrica.analytics.protobuf.nano.ExtendableMessageNano;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Extension<M extends ExtendableMessageNano<M>, T> {
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
    protected final Class<T> clazz;
    protected final boolean repeated;
    public final int tag;
    protected final int type;

    /* loaded from: classes2.dex */
    public static class PrimitiveExtension<M extends ExtendableMessageNano<M>, T> extends Extension<M, T> {
        private final int nonPackedTag;
        private final int packedTag;

        public PrimitiveExtension(int i10, Class<T> cls, int i11, boolean z10, int i12, int i13) {
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

        @Override // io.appmetrica.analytics.protobuf.nano.Extension
        protected int computeRepeatedSerializedSize(Object obj) {
            int i10 = this.tag;
            if (i10 == this.nonPackedTag) {
                return super.computeRepeatedSerializedSize(obj);
            }
            if (i10 == this.packedTag) {
                int computePackedDataSize = computePackedDataSize(obj);
                return CodedOutputByteBufferNano.computeRawVarint32Size(this.tag) + CodedOutputByteBufferNano.computeRawVarint32Size(computePackedDataSize) + computePackedDataSize;
            }
            throw new IllegalArgumentException("Unexpected repeated extension tag " + this.tag + ", unequal to both non-packed variant " + this.nonPackedTag + " and packed variant " + this.packedTag);
        }

        @Override // io.appmetrica.analytics.protobuf.nano.Extension
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

        @Override // io.appmetrica.analytics.protobuf.nano.Extension
        protected Object readData(CodedInputByteBufferNano codedInputByteBufferNano) {
            try {
                return codedInputByteBufferNano.readPrimitiveField(this.type);
            } catch (IOException e10) {
                throw new IllegalArgumentException("Error reading extension field", e10);
            }
        }

        @Override // io.appmetrica.analytics.protobuf.nano.Extension
        protected void readDataInto(UnknownFieldData unknownFieldData, List<Object> list) {
            if (unknownFieldData.tag == this.nonPackedTag) {
                list.add(readData(CodedInputByteBufferNano.newInstance(unknownFieldData.bytes)));
                return;
            }
            CodedInputByteBufferNano newInstance = CodedInputByteBufferNano.newInstance(unknownFieldData.bytes);
            try {
                newInstance.pushLimit(newInstance.readRawVarint32());
                while (!newInstance.isAtEnd()) {
                    list.add(readData(newInstance));
                }
            } catch (IOException e10) {
                throw new IllegalArgumentException("Error reading extension field", e10);
            }
        }

        @Override // io.appmetrica.analytics.protobuf.nano.Extension
        protected void writeRepeatedData(Object obj, CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.tag;
            if (i10 == this.nonPackedTag) {
                super.writeRepeatedData(obj, codedOutputByteBufferNano);
            } else if (i10 == this.packedTag) {
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
            } else {
                throw new IllegalArgumentException("Unexpected repeated extension tag " + this.tag + ", unequal to both non-packed variant " + this.nonPackedTag + " and packed variant " + this.packedTag);
            }
        }

        @Override // io.appmetrica.analytics.protobuf.nano.Extension
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

    @Deprecated
    public static <M extends ExtendableMessageNano<M>, T extends MessageNano> Extension<M, T> createMessageTyped(int i10, Class<T> cls, int i11) {
        return new Extension<>(i10, cls, i11, false);
    }

    public static <M extends ExtendableMessageNano<M>, T> Extension<M, T> createPrimitiveTyped(int i10, Class<T> cls, long j10) {
        return new PrimitiveExtension(i10, cls, (int) j10, false, 0, 0);
    }

    public static <M extends ExtendableMessageNano<M>, T extends MessageNano> Extension<M, T[]> createRepeatedMessageTyped(int i10, Class<T[]> cls, long j10) {
        return new Extension<>(i10, cls, (int) j10, true);
    }

    public static <M extends ExtendableMessageNano<M>, T> Extension<M, T> createRepeatedPrimitiveTyped(int i10, Class<T> cls, long j10, long j11, long j12) {
        return new PrimitiveExtension(i10, cls, (int) j10, true, (int) j11, (int) j12);
    }

    private T getRepeatedValueFrom(List<UnknownFieldData> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            UnknownFieldData unknownFieldData = list.get(i10);
            if (unknownFieldData.bytes.length != 0) {
                readDataInto(unknownFieldData, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        Class<T> cls = this.clazz;
        T cast = cls.cast(Array.newInstance(cls.getComponentType(), size));
        for (int i11 = 0; i11 < size; i11++) {
            Array.set(cast, i11, arrayList.get(i11));
        }
        return cast;
    }

    private T getSingularValueFrom(List<UnknownFieldData> list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.clazz.cast(readData(CodedInputByteBufferNano.newInstance(list.get(list.size() - 1).bytes)));
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
        if (this.repeated) {
            return computeRepeatedSerializedSize(obj);
        }
        return computeSingularSerializedSize(obj);
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
    public final T getValueFrom(List<UnknownFieldData> list) {
        if (list == null) {
            return null;
        }
        if (this.repeated) {
            return getRepeatedValueFrom(list);
        }
        return getSingularValueFrom(list);
    }

    protected Object readData(CodedInputByteBufferNano codedInputByteBufferNano) {
        Class cls;
        if (this.repeated) {
            cls = this.clazz.getComponentType();
        } else {
            cls = this.clazz;
        }
        try {
            int i10 = this.type;
            if (i10 != 10) {
                if (i10 == 11) {
                    MessageNano messageNano = (MessageNano) cls.newInstance();
                    codedInputByteBufferNano.readMessage(messageNano);
                    return messageNano;
                }
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
            MessageNano messageNano2 = (MessageNano) cls.newInstance();
            codedInputByteBufferNano.readGroup(messageNano2, WireFormatNano.getTagFieldNumber(this.tag));
            return messageNano2;
        } catch (IOException e10) {
            throw new IllegalArgumentException("Error reading extension field", e10);
        } catch (IllegalAccessException e11) {
            throw new IllegalArgumentException("Error creating instance of class " + cls, e11);
        } catch (InstantiationException e12) {
            throw new IllegalArgumentException("Error creating instance of class " + cls, e12);
        }
    }

    protected void readDataInto(UnknownFieldData unknownFieldData, List<Object> list) {
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
            if (i10 != 10) {
                if (i10 == 11) {
                    codedOutputByteBufferNano.writeMessageNoTag((MessageNano) obj);
                    return;
                }
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
            int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
            codedOutputByteBufferNano.writeGroupNoTag((MessageNano) obj);
            codedOutputByteBufferNano.writeTag(tagFieldNumber, 4);
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

    private Extension(int i10, Class<T> cls, int i11, boolean z10) {
        this.type = i10;
        this.clazz = cls;
        this.tag = i11;
        this.repeated = z10;
    }

    public static <M extends ExtendableMessageNano<M>, T extends MessageNano> Extension<M, T> createMessageTyped(int i10, Class<T> cls, long j10) {
        return new Extension<>(i10, cls, (int) j10, false);
    }
}
