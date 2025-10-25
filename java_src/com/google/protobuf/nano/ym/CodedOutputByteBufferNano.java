package com.google.protobuf.nano.ym;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public final class CodedOutputByteBufferNano {
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    public static final int LITTLE_ENDIAN_64_SIZE = 8;
    private final byte[] buffer;
    private final int limit;
    private int position;

    /* loaded from: classes.dex */
    public class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException(int i10, int i11) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i10 + " limit " + i11 + ").");
        }
    }

    private CodedOutputByteBufferNano(byte[] bArr, int i10, int i11) {
        this.buffer = bArr;
        this.position = i10;
        this.limit = i10 + i11;
    }

    public static int computeBoolSize(int i10, boolean z10) {
        return computeTagSize(i10) + computeBoolSizeNoTag(z10);
    }

    public static int computeBoolSizeNoTag(boolean z10) {
        return 1;
    }

    public static int computeBytesSize(int i10, byte[] bArr) {
        return computeTagSize(i10) + computeBytesSizeNoTag(bArr);
    }

    public static int computeBytesSizeNoTag(byte[] bArr) {
        return computeRawVarint32Size(bArr.length) + bArr.length;
    }

    public static int computeDoubleSize(int i10, double d10) {
        return computeTagSize(i10) + computeDoubleSizeNoTag(d10);
    }

    public static int computeDoubleSizeNoTag(double d10) {
        return 8;
    }

    public static int computeEnumSize(int i10, int i11) {
        return computeTagSize(i10) + computeEnumSizeNoTag(i11);
    }

    public static int computeEnumSizeNoTag(int i10) {
        return computeRawVarint32Size(i10);
    }

    public static int computeFixed32Size(int i10, int i11) {
        return computeTagSize(i10) + computeFixed32SizeNoTag(i11);
    }

    public static int computeFixed32SizeNoTag(int i10) {
        return 4;
    }

    public static int computeFixed64Size(int i10, long j10) {
        return computeTagSize(i10) + computeFixed64SizeNoTag(j10);
    }

    public static int computeFixed64SizeNoTag(long j10) {
        return 8;
    }

    public static int computeFloatSize(int i10, float f10) {
        return computeTagSize(i10) + computeFloatSizeNoTag(f10);
    }

    public static int computeFloatSizeNoTag(float f10) {
        return 4;
    }

    public static int computeGroupSize(int i10, MessageNano messageNano) {
        return (computeTagSize(i10) * 2) + computeGroupSizeNoTag(messageNano);
    }

    public static int computeGroupSizeNoTag(MessageNano messageNano) {
        return messageNano.getSerializedSize();
    }

    public static int computeInt32Size(int i10, int i11) {
        return computeTagSize(i10) + computeInt32SizeNoTag(i11);
    }

    public static int computeInt32SizeNoTag(int i10) {
        if (i10 >= 0) {
            return computeRawVarint32Size(i10);
        }
        return 10;
    }

    public static int computeInt64Size(int i10, long j10) {
        return computeTagSize(i10) + computeInt64SizeNoTag(j10);
    }

    public static int computeInt64SizeNoTag(long j10) {
        return computeRawVarint64Size(j10);
    }

    public static int computeMessageSize(int i10, MessageNano messageNano) {
        return computeTagSize(i10) + computeMessageSizeNoTag(messageNano);
    }

    public static int computeMessageSizeNoTag(MessageNano messageNano) {
        int serializedSize = messageNano.getSerializedSize();
        return computeRawVarint32Size(serializedSize) + serializedSize;
    }

    public static int computeRawVarint32Size(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeRawVarint64Size(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if (((-2097152) & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int computeSFixed32Size(int i10, int i11) {
        return computeTagSize(i10) + computeSFixed32SizeNoTag(i11);
    }

    public static int computeSFixed32SizeNoTag(int i10) {
        return 4;
    }

    public static int computeSFixed64Size(int i10, long j10) {
        return computeTagSize(i10) + computeSFixed64SizeNoTag(j10);
    }

    public static int computeSFixed64SizeNoTag(long j10) {
        return 8;
    }

    public static int computeSInt32Size(int i10, int i11) {
        return computeTagSize(i10) + computeSInt32SizeNoTag(i11);
    }

    public static int computeSInt32SizeNoTag(int i10) {
        return computeRawVarint32Size(encodeZigZag32(i10));
    }

    public static int computeSInt64Size(int i10, long j10) {
        return computeTagSize(i10) + computeSInt64SizeNoTag(j10);
    }

    public static int computeSInt64SizeNoTag(long j10) {
        return computeRawVarint64Size(encodeZigZag64(j10));
    }

    public static int computeStringSize(int i10, String str) {
        return computeTagSize(i10) + computeStringSizeNoTag(str);
    }

    public static int computeStringSizeNoTag(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return computeRawVarint32Size(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int computeTagSize(int i10) {
        return computeRawVarint32Size(WireFormatNano.makeTag(i10, 0));
    }

    public static int computeUInt32Size(int i10, int i11) {
        return computeTagSize(i10) + computeUInt32SizeNoTag(i11);
    }

    public static int computeUInt32SizeNoTag(int i10) {
        return computeRawVarint32Size(i10);
    }

    public static int computeUInt64Size(int i10, long j10) {
        return computeTagSize(i10) + computeUInt64SizeNoTag(j10);
    }

    public static int computeUInt64SizeNoTag(long j10) {
        return computeRawVarint64Size(j10);
    }

    public static int encodeZigZag32(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public static long encodeZigZag64(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static CodedOutputByteBufferNano newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public void checkNoSpaceLeft() {
        if (spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public int spaceLeft() {
        return this.limit - this.position;
    }

    public void writeBool(int i10, boolean z10) {
        writeTag(i10, 0);
        writeBoolNoTag(z10);
    }

    public void writeBoolNoTag(boolean z10) {
        writeRawByte(z10 ? 1 : 0);
    }

    public void writeBytes(int i10, byte[] bArr) {
        writeTag(i10, 2);
        writeBytesNoTag(bArr);
    }

    public void writeBytesNoTag(byte[] bArr) {
        writeRawVarint32(bArr.length);
        writeRawBytes(bArr);
    }

    public void writeDouble(int i10, double d10) {
        writeTag(i10, 1);
        writeDoubleNoTag(d10);
    }

    public void writeDoubleNoTag(double d10) {
        writeRawLittleEndian64(Double.doubleToLongBits(d10));
    }

    public void writeEnum(int i10, int i11) {
        writeTag(i10, 0);
        writeEnumNoTag(i11);
    }

    public void writeEnumNoTag(int i10) {
        writeRawVarint32(i10);
    }

    public void writeFixed32(int i10, int i11) {
        writeTag(i10, 5);
        writeFixed32NoTag(i11);
    }

    public void writeFixed32NoTag(int i10) {
        writeRawLittleEndian32(i10);
    }

    public void writeFixed64(int i10, long j10) {
        writeTag(i10, 1);
        writeFixed64NoTag(j10);
    }

    public void writeFixed64NoTag(long j10) {
        writeRawLittleEndian64(j10);
    }

    public void writeFloat(int i10, float f10) {
        writeTag(i10, 5);
        writeFloatNoTag(f10);
    }

    public void writeFloatNoTag(float f10) {
        writeRawLittleEndian32(Float.floatToIntBits(f10));
    }

    public void writeGroup(int i10, MessageNano messageNano) {
        writeTag(i10, 3);
        writeGroupNoTag(messageNano);
        writeTag(i10, 4);
    }

    public void writeGroupNoTag(MessageNano messageNano) {
        messageNano.writeTo(this);
    }

    public void writeInt32(int i10, int i11) {
        writeTag(i10, 0);
        writeInt32NoTag(i11);
    }

    public void writeInt32NoTag(int i10) {
        if (i10 >= 0) {
            writeRawVarint32(i10);
        } else {
            writeRawVarint64(i10);
        }
    }

    public void writeInt64(int i10, long j10) {
        writeTag(i10, 0);
        writeInt64NoTag(j10);
    }

    public void writeInt64NoTag(long j10) {
        writeRawVarint64(j10);
    }

    public void writeMessage(int i10, MessageNano messageNano) {
        writeTag(i10, 2);
        writeMessageNoTag(messageNano);
    }

    public void writeMessageNoTag(MessageNano messageNano) {
        writeRawVarint32(messageNano.getCachedSize());
        messageNano.writeTo(this);
    }

    public void writeRawByte(byte b10) {
        int i10 = this.position;
        if (i10 == this.limit) {
            throw new OutOfSpaceException(this.position, this.limit);
        }
        byte[] bArr = this.buffer;
        this.position = i10 + 1;
        bArr[i10] = b10;
    }

    public void writeRawBytes(byte[] bArr) {
        writeRawBytes(bArr, 0, bArr.length);
    }

    public void writeRawLittleEndian32(int i10) {
        writeRawByte(i10 & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte((i10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte((i10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte((i10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public void writeRawLittleEndian64(long j10) {
        writeRawByte(((int) j10) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 8)) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 16)) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 24)) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 32)) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 40)) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 48)) & KotlinVersion.MAX_COMPONENT_VALUE);
        writeRawByte(((int) (j10 >> 56)) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public void writeRawVarint32(int i10) {
        while ((i10 & (-128)) != 0) {
            writeRawByte((i10 & 127) | 128);
            i10 >>>= 7;
        }
        writeRawByte(i10);
    }

    public void writeRawVarint64(long j10) {
        while (((-128) & j10) != 0) {
            writeRawByte((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        writeRawByte((int) j10);
    }

    public void writeSFixed32(int i10, int i11) {
        writeTag(i10, 5);
        writeSFixed32NoTag(i11);
    }

    public void writeSFixed32NoTag(int i10) {
        writeRawLittleEndian32(i10);
    }

    public void writeSFixed64(int i10, long j10) {
        writeTag(i10, 1);
        writeSFixed64NoTag(j10);
    }

    public void writeSFixed64NoTag(long j10) {
        writeRawLittleEndian64(j10);
    }

    public void writeSInt32(int i10, int i11) {
        writeTag(i10, 0);
        writeSInt32NoTag(i11);
    }

    public void writeSInt32NoTag(int i10) {
        writeRawVarint32(encodeZigZag32(i10));
    }

    public void writeSInt64(int i10, long j10) {
        writeTag(i10, 0);
        writeSInt64NoTag(j10);
    }

    public void writeSInt64NoTag(long j10) {
        writeRawVarint64(encodeZigZag64(j10));
    }

    public void writeString(int i10, String str) {
        writeTag(i10, 2);
        writeStringNoTag(str);
    }

    public void writeStringNoTag(String str) {
        byte[] bytes = str.getBytes("UTF-8");
        writeRawVarint32(bytes.length);
        writeRawBytes(bytes);
    }

    public void writeTag(int i10, int i11) {
        writeRawVarint32(WireFormatNano.makeTag(i10, i11));
    }

    public void writeUInt32(int i10, int i11) {
        writeTag(i10, 0);
        writeUInt32NoTag(i11);
    }

    public void writeUInt32NoTag(int i10) {
        writeRawVarint32(i10);
    }

    public void writeUInt64(int i10, long j10) {
        writeTag(i10, 0);
        writeUInt64NoTag(j10);
    }

    public void writeUInt64NoTag(long j10) {
        writeRawVarint64(j10);
    }

    public static CodedOutputByteBufferNano newInstance(byte[] bArr, int i10, int i11) {
        return new CodedOutputByteBufferNano(bArr, i10, i11);
    }

    public void writeRawByte(int i10) {
        writeRawByte((byte) i10);
    }

    public void writeRawBytes(byte[] bArr, int i10, int i11) {
        int i12 = this.limit;
        int i13 = this.position;
        if (i12 - i13 < i11) {
            throw new OutOfSpaceException(this.position, this.limit);
        }
        System.arraycopy(bArr, i10, this.buffer, i13, i11);
        this.position += i11;
    }
}
