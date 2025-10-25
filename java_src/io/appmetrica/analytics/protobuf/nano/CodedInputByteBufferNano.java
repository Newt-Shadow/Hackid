package io.appmetrica.analytics.protobuf.nano;

import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class CodedInputByteBufferNano {
    private static final int DEFAULT_RECURSION_LIMIT = 64;
    private static final int DEFAULT_SIZE_LIMIT = 67108864;
    private final byte[] buffer;
    private int bufferPos;
    private int bufferSize;
    private int bufferSizeAfterLimit;
    private int bufferStart;
    private int lastTag;
    private int recursionDepth;
    private int currentLimit = Integer.MAX_VALUE;
    private int recursionLimit = DEFAULT_RECURSION_LIMIT;
    private int sizeLimit = DEFAULT_SIZE_LIMIT;

    private CodedInputByteBufferNano(byte[] bArr, int i10, int i11) {
        this.buffer = bArr;
        this.bufferStart = i10;
        this.bufferSize = i11 + i10;
        this.bufferPos = i10;
    }

    public static int decodeZigZag32(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long decodeZigZag64(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static CodedInputByteBufferNano newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    private void recomputeBufferSizeAfterLimit() {
        int i10 = this.bufferSize + this.bufferSizeAfterLimit;
        this.bufferSize = i10;
        int i11 = this.currentLimit;
        if (i10 > i11) {
            int i12 = i10 - i11;
            this.bufferSizeAfterLimit = i12;
            this.bufferSize = i10 - i12;
            return;
        }
        this.bufferSizeAfterLimit = 0;
    }

    public void checkLastTagWas(int i10) {
        if (this.lastTag == i10) {
            return;
        }
        throw InvalidProtocolBufferNanoException.invalidEndTag();
    }

    public int getBytesUntilLimit() {
        int i10 = this.currentLimit;
        if (i10 == Integer.MAX_VALUE) {
            return -1;
        }
        return i10 - this.bufferPos;
    }

    public byte[] getData(int i10, int i11) {
        if (i11 == 0) {
            return WireFormatNano.EMPTY_BYTES;
        }
        byte[] bArr = new byte[i11];
        System.arraycopy(this.buffer, this.bufferStart + i10, bArr, 0, i11);
        return bArr;
    }

    public int getPosition() {
        return this.bufferPos - this.bufferStart;
    }

    public boolean isAtEnd() {
        if (this.bufferPos == this.bufferSize) {
            return true;
        }
        return false;
    }

    public void popLimit(int i10) {
        this.currentLimit = i10;
        recomputeBufferSizeAfterLimit();
    }

    public int pushLimit(int i10) {
        if (i10 >= 0) {
            int i11 = i10 + this.bufferPos;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.currentLimit = i11;
                recomputeBufferSizeAfterLimit();
                return i12;
            }
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        throw InvalidProtocolBufferNanoException.negativeSize();
    }

    public boolean readBool() {
        if (readRawVarint32() != 0) {
            return true;
        }
        return false;
    }

    public byte[] readBytes() {
        int readRawVarint32 = readRawVarint32();
        int i10 = this.bufferSize;
        int i11 = this.bufferPos;
        if (readRawVarint32 <= i10 - i11 && readRawVarint32 > 0) {
            byte[] bArr = new byte[readRawVarint32];
            System.arraycopy(this.buffer, i11, bArr, 0, readRawVarint32);
            this.bufferPos += readRawVarint32;
            return bArr;
        } else if (readRawVarint32 == 0) {
            return WireFormatNano.EMPTY_BYTES;
        } else {
            return readRawBytes(readRawVarint32);
        }
    }

    public double readDouble() {
        return Double.longBitsToDouble(readRawLittleEndian64());
    }

    public int readEnum() {
        return readRawVarint32();
    }

    public int readFixed32() {
        return readRawLittleEndian32();
    }

    public long readFixed64() {
        return readRawLittleEndian64();
    }

    public float readFloat() {
        return Float.intBitsToFloat(readRawLittleEndian32());
    }

    public void readGroup(MessageNano messageNano, int i10) {
        int i11 = this.recursionDepth;
        if (i11 < this.recursionLimit) {
            this.recursionDepth = i11 + 1;
            messageNano.mergeFrom(this);
            checkLastTagWas(WireFormatNano.makeTag(i10, 4));
            this.recursionDepth--;
            return;
        }
        throw InvalidProtocolBufferNanoException.recursionLimitExceeded();
    }

    public int readInt32() {
        return readRawVarint32();
    }

    public long readInt64() {
        return readRawVarint64();
    }

    public void readMessage(MessageNano messageNano) {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth < this.recursionLimit) {
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            messageNano.mergeFrom(this);
            checkLastTagWas(0);
            this.recursionDepth--;
            popLimit(pushLimit);
            return;
        }
        throw InvalidProtocolBufferNanoException.recursionLimitExceeded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object readPrimitiveField(int i10) {
        switch (i10) {
            case 1:
                return Double.valueOf(readDouble());
            case 2:
                return Float.valueOf(readFloat());
            case 3:
                return Long.valueOf(readInt64());
            case 4:
                return Long.valueOf(readUInt64());
            case 5:
                return Integer.valueOf(readInt32());
            case 6:
                return Long.valueOf(readFixed64());
            case 7:
                return Integer.valueOf(readFixed32());
            case 8:
                return Boolean.valueOf(readBool());
            case 9:
                return readString();
            case 10:
            case 11:
            default:
                throw new IllegalArgumentException("Unknown type " + i10);
            case 12:
                return readBytes();
            case 13:
                return Integer.valueOf(readUInt32());
            case 14:
                return Integer.valueOf(readEnum());
            case 15:
                return Integer.valueOf(readSFixed32());
            case 16:
                return Long.valueOf(readSFixed64());
            case 17:
                return Integer.valueOf(readSInt32());
            case 18:
                return Long.valueOf(readSInt64());
        }
    }

    public byte readRawByte() {
        int i10 = this.bufferPos;
        if (i10 != this.bufferSize) {
            byte[] bArr = this.buffer;
            this.bufferPos = i10 + 1;
            return bArr[i10];
        }
        throw InvalidProtocolBufferNanoException.truncatedMessage();
    }

    public byte[] readRawBytes(int i10) {
        if (i10 >= 0) {
            int i11 = this.bufferPos;
            int i12 = i11 + i10;
            int i13 = this.currentLimit;
            if (i12 <= i13) {
                if (i10 <= this.bufferSize - i11) {
                    byte[] bArr = new byte[i10];
                    System.arraycopy(this.buffer, i11, bArr, 0, i10);
                    this.bufferPos += i10;
                    return bArr;
                }
                throw InvalidProtocolBufferNanoException.truncatedMessage();
            }
            skipRawBytes(i13 - i11);
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        throw InvalidProtocolBufferNanoException.negativeSize();
    }

    public int readRawLittleEndian32() {
        return (readRawByte() & ForkServer.ERROR) | ((readRawByte() & ForkServer.ERROR) << 8) | ((readRawByte() & ForkServer.ERROR) << 16) | ((readRawByte() & ForkServer.ERROR) << 24);
    }

    public long readRawLittleEndian64() {
        byte readRawByte = readRawByte();
        byte readRawByte2 = readRawByte();
        return ((readRawByte2 & 255) << 8) | (readRawByte & 255) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24) | ((readRawByte() & 255) << 32) | ((readRawByte() & 255) << 40) | ((readRawByte() & 255) << 48) | ((readRawByte() & 255) << 56);
    }

    public int readRawVarint32() {
        int i10;
        byte readRawByte = readRawByte();
        if (readRawByte >= 0) {
            return readRawByte;
        }
        int i11 = readRawByte & Byte.MAX_VALUE;
        byte readRawByte2 = readRawByte();
        if (readRawByte2 >= 0) {
            i10 = readRawByte2 << 7;
        } else {
            i11 |= (readRawByte2 & Byte.MAX_VALUE) << 7;
            byte readRawByte3 = readRawByte();
            if (readRawByte3 >= 0) {
                i10 = readRawByte3 << 14;
            } else {
                i11 |= (readRawByte3 & Byte.MAX_VALUE) << 14;
                byte readRawByte4 = readRawByte();
                if (readRawByte4 >= 0) {
                    i10 = readRawByte4 << 21;
                } else {
                    int i12 = i11 | ((readRawByte4 & Byte.MAX_VALUE) << 21);
                    byte readRawByte5 = readRawByte();
                    int i13 = i12 | (readRawByte5 << 28);
                    if (readRawByte5 < 0) {
                        for (int i14 = 0; i14 < 5; i14++) {
                            if (readRawByte() >= 0) {
                                return i13;
                            }
                        }
                        throw InvalidProtocolBufferNanoException.malformedVarint();
                    }
                    return i13;
                }
            }
        }
        return i11 | i10;
    }

    public long readRawVarint64() {
        long j10 = 0;
        for (int i10 = 0; i10 < DEFAULT_RECURSION_LIMIT; i10 += 7) {
            byte readRawByte = readRawByte();
            j10 |= (readRawByte & Byte.MAX_VALUE) << i10;
            if ((readRawByte & 128) == 0) {
                return j10;
            }
        }
        throw InvalidProtocolBufferNanoException.malformedVarint();
    }

    public int readSFixed32() {
        return readRawLittleEndian32();
    }

    public long readSFixed64() {
        return readRawLittleEndian64();
    }

    public int readSInt32() {
        return decodeZigZag32(readRawVarint32());
    }

    public long readSInt64() {
        return decodeZigZag64(readRawVarint64());
    }

    public String readString() {
        int readRawVarint32 = readRawVarint32();
        int i10 = this.bufferSize;
        int i11 = this.bufferPos;
        if (readRawVarint32 <= i10 - i11 && readRawVarint32 > 0) {
            String str = new String(this.buffer, i11, readRawVarint32, InternalNano.UTF_8);
            this.bufferPos += readRawVarint32;
            return str;
        }
        return new String(readRawBytes(readRawVarint32), InternalNano.UTF_8);
    }

    public int readTag() {
        if (isAtEnd()) {
            this.lastTag = 0;
            return 0;
        }
        int readRawVarint32 = readRawVarint32();
        this.lastTag = readRawVarint32;
        if (readRawVarint32 != 0) {
            return readRawVarint32;
        }
        throw InvalidProtocolBufferNanoException.invalidTag();
    }

    public int readUInt32() {
        return readRawVarint32();
    }

    public long readUInt64() {
        return readRawVarint64();
    }

    public void resetSizeCounter() {
    }

    public void rewindToPosition(int i10) {
        int i11 = this.bufferPos;
        int i12 = this.bufferStart;
        if (i10 <= i11 - i12) {
            if (i10 >= 0) {
                this.bufferPos = i12 + i10;
                return;
            }
            throw new IllegalArgumentException("Bad position " + i10);
        }
        throw new IllegalArgumentException("Position " + i10 + " is beyond current " + (this.bufferPos - this.bufferStart));
    }

    public int setRecursionLimit(int i10) {
        if (i10 >= 0) {
            int i11 = this.recursionLimit;
            this.recursionLimit = i10;
            return i11;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: " + i10);
    }

    public int setSizeLimit(int i10) {
        if (i10 >= 0) {
            int i11 = this.sizeLimit;
            this.sizeLimit = i10;
            return i11;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + i10);
    }

    public boolean skipField(int i10) {
        int tagWireType = WireFormatNano.getTagWireType(i10);
        if (tagWireType != 0) {
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    if (tagWireType != 3) {
                        if (tagWireType != 4) {
                            if (tagWireType == 5) {
                                readRawLittleEndian32();
                                return true;
                            }
                            throw InvalidProtocolBufferNanoException.invalidWireType();
                        }
                        return false;
                    }
                    skipMessage();
                    checkLastTagWas(WireFormatNano.makeTag(WireFormatNano.getTagFieldNumber(i10), 4));
                    return true;
                }
                skipRawBytes(readRawVarint32());
                return true;
            }
            readRawLittleEndian64();
            return true;
        }
        readInt32();
        return true;
    }

    public void skipMessage() {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
        } while (skipField(readTag));
    }

    public void skipRawBytes(int i10) {
        if (i10 >= 0) {
            int i11 = this.bufferPos;
            int i12 = i11 + i10;
            int i13 = this.currentLimit;
            if (i12 <= i13) {
                if (i10 <= this.bufferSize - i11) {
                    this.bufferPos = i12;
                    return;
                }
                throw InvalidProtocolBufferNanoException.truncatedMessage();
            }
            skipRawBytes(i13 - i11);
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        throw InvalidProtocolBufferNanoException.negativeSize();
    }

    public static CodedInputByteBufferNano newInstance(byte[] bArr, int i10, int i11) {
        return new CodedInputByteBufferNano(bArr, i10, i11);
    }
}
