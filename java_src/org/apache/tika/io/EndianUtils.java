package org.apache.tika.io;

import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.io.InputStream;
import org.apache.tika.exception.TikaException;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public class EndianUtils {
    private static final int LONG_SIZE = 8;

    /* loaded from: classes2.dex */
    public static class BufferUnderrunException extends TikaException {
        private static final long serialVersionUID = 8358288231138076276L;

        public BufferUnderrunException() {
            super("Insufficient data left in stream for required read");
        }
    }

    public static int getIntBE(byte[] bArr) {
        return getIntBE(bArr, 0);
    }

    public static int getIntLE(byte[] bArr) {
        return getIntLE(bArr, 0);
    }

    public static long getLongLE(byte[] bArr, int i10) {
        long j10 = 0;
        for (int i11 = (i10 + 8) - 1; i11 >= i10; i11--) {
            j10 = (j10 << 8) | (bArr[i11] & ForkServer.ERROR);
        }
        return j10;
    }

    public static short getShortBE(byte[] bArr) {
        return getShortBE(bArr, 0);
    }

    public static short getShortLE(byte[] bArr) {
        return getShortLE(bArr, 0);
    }

    public static short getUByte(byte[] bArr, int i10) {
        return (short) (bArr[i10] & ForkServer.ERROR);
    }

    public static long getUIntBE(byte[] bArr) {
        return getUIntBE(bArr, 0);
    }

    public static long getUIntLE(byte[] bArr) {
        return getUIntLE(bArr, 0);
    }

    public static int getUShortBE(byte[] bArr) {
        return getUShortBE(bArr, 0);
    }

    public static int getUShortLE(byte[] bArr) {
        return getUShortLE(bArr, 0);
    }

    public static int readIntBE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if ((read | read2 | read3 | read4) >= 0) {
            return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
        }
        throw new BufferUnderrunException();
    }

    public static int readIntLE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if ((read | read2 | read3 | read4) >= 0) {
            return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
        }
        throw new BufferUnderrunException();
    }

    public static int readIntME(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if ((read | read2 | read3 | read4) >= 0) {
            return (read2 << 24) + (read << 16) + (read4 << 8) + read3;
        }
        throw new BufferUnderrunException();
    }

    public static long readLongBE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        int read5 = inputStream.read();
        int read6 = inputStream.read();
        int read7 = inputStream.read();
        int read8 = inputStream.read();
        if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
            return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
        }
        throw new BufferUnderrunException();
    }

    public static long readLongLE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        int read5 = inputStream.read();
        int read6 = inputStream.read();
        int read7 = inputStream.read();
        int read8 = inputStream.read();
        if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
            return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
        }
        throw new BufferUnderrunException();
    }

    public static short readShortBE(InputStream inputStream) {
        return (short) readUShortBE(inputStream);
    }

    public static short readShortLE(InputStream inputStream) {
        return (short) readUShortLE(inputStream);
    }

    public static long readUE7(InputStream inputStream) {
        int read;
        long j10 = 0;
        int i10 = 0;
        while (true) {
            read = inputStream.read();
            if (read < 0) {
                break;
            }
            int i11 = i10 + 1;
            if (i10 >= 6) {
                break;
            }
            long j11 = j10 << 7;
            if ((read & 128) == 128) {
                j10 = j11 + (read & 127);
                i10 = i11;
            } else {
                j10 = j11 + read;
                break;
            }
        }
        if (read >= 0) {
            return j10;
        }
        throw new IOException("Buffer underun; expected one more byte");
    }

    public static long readUIntBE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if ((read | read2 | read3 | read4) >= 0) {
            return ((read << 24) + (read2 << 16) + (read3 << 8) + read4) & KeyboardMap.kValueMask;
        }
        throw new BufferUnderrunException();
    }

    public static long readUIntLE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if ((read | read2 | read3 | read4) >= 0) {
            return ((read4 << 24) + (read3 << 16) + (read2 << 8) + read) & KeyboardMap.kValueMask;
        }
        throw new BufferUnderrunException();
    }

    public static int readUShortBE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if ((read | read2) >= 0) {
            return (read << 8) + read2;
        }
        throw new BufferUnderrunException();
    }

    public static int readUShortLE(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if ((read | read2) >= 0) {
            return (read2 << 8) + read;
        }
        throw new BufferUnderrunException();
    }

    public static int ubyteToInt(byte b10) {
        return b10 & ForkServer.ERROR;
    }

    public static int getIntBE(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        return ((bArr[i10] & ForkServer.ERROR) << 24) + ((bArr[i11] & ForkServer.ERROR) << 16) + ((bArr[i12] & ForkServer.ERROR) << 8) + (bArr[i13] & ForkServer.ERROR);
    }

    public static int getIntLE(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        int i12 = bArr[i10] & ForkServer.ERROR;
        int i13 = i11 + 1;
        int i14 = bArr[i11] & ForkServer.ERROR;
        return ((bArr[i13 + 1] & ForkServer.ERROR) << 24) + ((bArr[i13] & ForkServer.ERROR) << 16) + (i14 << 8) + i12;
    }

    public static short getShortBE(byte[] bArr, int i10) {
        return (short) getUShortBE(bArr, i10);
    }

    public static short getShortLE(byte[] bArr, int i10) {
        return (short) getUShortLE(bArr, i10);
    }

    public static long getUIntBE(byte[] bArr, int i10) {
        return getIntBE(bArr, i10) & KeyboardMap.kValueMask;
    }

    public static long getUIntLE(byte[] bArr, int i10) {
        return getIntLE(bArr, i10) & KeyboardMap.kValueMask;
    }

    public static int getUShortBE(byte[] bArr, int i10) {
        return ((bArr[i10] & ForkServer.ERROR) << 8) + (bArr[i10 + 1] & ForkServer.ERROR);
    }

    public static int getUShortLE(byte[] bArr, int i10) {
        return ((bArr[i10 + 1] & ForkServer.ERROR) << 8) + (bArr[i10] & ForkServer.ERROR);
    }
}
