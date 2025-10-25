package io.flutter.plugin.common;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public class StandardMessageCodec implements MessageCodec<Object> {
    private static final byte BIGINT = 5;
    private static final byte BYTE_ARRAY = 8;
    private static final byte DOUBLE = 6;
    private static final byte DOUBLE_ARRAY = 11;
    private static final byte FALSE = 2;
    private static final byte FLOAT_ARRAY = 14;
    public static final StandardMessageCodec INSTANCE = new StandardMessageCodec();
    private static final byte INT = 3;
    private static final byte INT_ARRAY = 9;
    private static final byte LIST = 12;
    private static final boolean LITTLE_ENDIAN;
    private static final byte LONG = 4;
    private static final byte LONG_ARRAY = 10;
    private static final byte MAP = 13;
    private static final byte NULL = 0;
    private static final byte STRING = 7;
    private static final String TAG = "StandardMessageCodec#";
    private static final byte TRUE = 1;
    private static final Charset UTF8;

    /* loaded from: classes2.dex */
    static final class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        /* JADX INFO: Access modifiers changed from: package-private */
        public byte[] buffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    static {
        boolean z10;
        if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
            z10 = true;
        } else {
            z10 = false;
        }
        LITTLE_ENDIAN = z10;
        UTF8 = Charset.forName("UTF8");
    }

    protected static final void readAlignment(ByteBuffer byteBuffer, int i10) {
        int position = byteBuffer.position() % i10;
        if (position != 0) {
            byteBuffer.position((byteBuffer.position() + i10) - position);
        }
    }

    protected static final byte[] readBytes(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[readSize(byteBuffer)];
        byteBuffer.get(bArr);
        return bArr;
    }

    protected static final int readSize(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            int i10 = byteBuffer.get() & ForkServer.ERROR;
            if (i10 < 254) {
                return i10;
            }
            if (i10 == 254) {
                return byteBuffer.getChar();
            }
            return byteBuffer.getInt();
        }
        throw new IllegalArgumentException("Message corrupted");
    }

    protected static final void writeAlignment(ByteArrayOutputStream byteArrayOutputStream, int i10) {
        int size = byteArrayOutputStream.size() % i10;
        if (size != 0) {
            for (int i11 = 0; i11 < i10 - size; i11++) {
                byteArrayOutputStream.write(0);
            }
        }
    }

    protected static final void writeBytes(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr) {
        writeSize(byteArrayOutputStream, bArr.length);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    protected static final void writeChar(ByteArrayOutputStream byteArrayOutputStream, int i10) {
        if (LITTLE_ENDIAN) {
            byteArrayOutputStream.write(i10);
            byteArrayOutputStream.write(i10 >>> 8);
            return;
        }
        byteArrayOutputStream.write(i10 >>> 8);
        byteArrayOutputStream.write(i10);
    }

    protected static final void writeDouble(ByteArrayOutputStream byteArrayOutputStream, double d10) {
        writeLong(byteArrayOutputStream, Double.doubleToLongBits(d10));
    }

    protected static final void writeFloat(ByteArrayOutputStream byteArrayOutputStream, float f10) {
        writeInt(byteArrayOutputStream, Float.floatToIntBits(f10));
    }

    protected static final void writeInt(ByteArrayOutputStream byteArrayOutputStream, int i10) {
        if (LITTLE_ENDIAN) {
            byteArrayOutputStream.write(i10);
            byteArrayOutputStream.write(i10 >>> 8);
            byteArrayOutputStream.write(i10 >>> 16);
            byteArrayOutputStream.write(i10 >>> 24);
            return;
        }
        byteArrayOutputStream.write(i10 >>> 24);
        byteArrayOutputStream.write(i10 >>> 16);
        byteArrayOutputStream.write(i10 >>> 8);
        byteArrayOutputStream.write(i10);
    }

    protected static final void writeLong(ByteArrayOutputStream byteArrayOutputStream, long j10) {
        if (LITTLE_ENDIAN) {
            byteArrayOutputStream.write((byte) j10);
            byteArrayOutputStream.write((byte) (j10 >>> 8));
            byteArrayOutputStream.write((byte) (j10 >>> 16));
            byteArrayOutputStream.write((byte) (j10 >>> 24));
            byteArrayOutputStream.write((byte) (j10 >>> 32));
            byteArrayOutputStream.write((byte) (j10 >>> 40));
            byteArrayOutputStream.write((byte) (j10 >>> 48));
            byteArrayOutputStream.write((byte) (j10 >>> 56));
            return;
        }
        byteArrayOutputStream.write((byte) (j10 >>> 56));
        byteArrayOutputStream.write((byte) (j10 >>> 48));
        byteArrayOutputStream.write((byte) (j10 >>> 40));
        byteArrayOutputStream.write((byte) (j10 >>> 32));
        byteArrayOutputStream.write((byte) (j10 >>> 24));
        byteArrayOutputStream.write((byte) (j10 >>> 16));
        byteArrayOutputStream.write((byte) (j10 >>> 8));
        byteArrayOutputStream.write((byte) j10);
    }

    protected static final void writeSize(ByteArrayOutputStream byteArrayOutputStream, int i10) {
        if (i10 < 254) {
            byteArrayOutputStream.write(i10);
        } else if (i10 <= 65535) {
            byteArrayOutputStream.write(254);
            writeChar(byteArrayOutputStream, i10);
        } else {
            byteArrayOutputStream.write(KotlinVersion.MAX_COMPONENT_VALUE);
            writeInt(byteArrayOutputStream, i10);
        }
    }

    @Override // io.flutter.plugin.common.MessageCodec
    public Object decodeMessage(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        byteBuffer.order(ByteOrder.nativeOrder());
        Object readValue = readValue(byteBuffer);
        if (!byteBuffer.hasRemaining()) {
            return readValue;
        }
        throw new IllegalArgumentException("Message corrupted");
    }

    @Override // io.flutter.plugin.common.MessageCodec
    public ByteBuffer encodeMessage(Object obj) {
        if (obj == null) {
            return null;
        }
        ExposedByteArrayOutputStream exposedByteArrayOutputStream = new ExposedByteArrayOutputStream();
        writeValue(exposedByteArrayOutputStream, obj);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(exposedByteArrayOutputStream.size());
        allocateDirect.put(exposedByteArrayOutputStream.buffer(), 0, exposedByteArrayOutputStream.size());
        return allocateDirect;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object readValue(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            return readValueOfType(byteBuffer.get(), byteBuffer);
        }
        throw new IllegalArgumentException("Message corrupted");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.Map, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.List, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public Object readValueOfType(byte b10, ByteBuffer byteBuffer) {
        ?? arrayList;
        int i10 = 0;
        switch (b10) {
            case 0:
                return null;
            case 1:
                return Boolean.TRUE;
            case 2:
                return Boolean.FALSE;
            case 3:
                return Integer.valueOf(byteBuffer.getInt());
            case 4:
                return Long.valueOf(byteBuffer.getLong());
            case 5:
                return new BigInteger(new String(readBytes(byteBuffer), UTF8), 16);
            case 6:
                readAlignment(byteBuffer, 8);
                return Double.valueOf(byteBuffer.getDouble());
            case 7:
                return new String(readBytes(byteBuffer), UTF8);
            case 8:
                return readBytes(byteBuffer);
            case 9:
                int readSize = readSize(byteBuffer);
                int[] iArr = new int[readSize];
                readAlignment(byteBuffer, 4);
                byteBuffer.asIntBuffer().get(iArr);
                byteBuffer.position(byteBuffer.position() + (readSize * 4));
                return iArr;
            case 10:
                int readSize2 = readSize(byteBuffer);
                long[] jArr = new long[readSize2];
                readAlignment(byteBuffer, 8);
                byteBuffer.asLongBuffer().get(jArr);
                byteBuffer.position(byteBuffer.position() + (readSize2 * 8));
                return jArr;
            case 11:
                int readSize3 = readSize(byteBuffer);
                double[] dArr = new double[readSize3];
                readAlignment(byteBuffer, 8);
                byteBuffer.asDoubleBuffer().get(dArr);
                byteBuffer.position(byteBuffer.position() + (readSize3 * 8));
                return dArr;
            case 12:
                int readSize4 = readSize(byteBuffer);
                arrayList = new ArrayList(readSize4);
                while (i10 < readSize4) {
                    arrayList.add(readValue(byteBuffer));
                    i10++;
                }
                break;
            case 13:
                int readSize5 = readSize(byteBuffer);
                arrayList = new HashMap();
                while (i10 < readSize5) {
                    arrayList.put(readValue(byteBuffer), readValue(byteBuffer));
                    i10++;
                }
                break;
            case 14:
                int readSize6 = readSize(byteBuffer);
                float[] fArr = new float[readSize6];
                readAlignment(byteBuffer, 4);
                byteBuffer.asFloatBuffer().get(fArr);
                byteBuffer.position(byteBuffer.position() + (readSize6 * 4));
                return fArr;
            default:
                throw new IllegalArgumentException("Message corrupted");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
        int i10;
        int i11 = 0;
        if (obj != null && !obj.equals(null)) {
            if (obj instanceof Boolean) {
                if (((Boolean) obj).booleanValue()) {
                    i10 = 1;
                } else {
                    i10 = 2;
                }
                byteArrayOutputStream.write(i10);
                return;
            } else if (obj instanceof Number) {
                if (!(obj instanceof Integer) && !(obj instanceof Short) && !(obj instanceof Byte)) {
                    if (obj instanceof Long) {
                        byteArrayOutputStream.write(4);
                        writeLong(byteArrayOutputStream, ((Long) obj).longValue());
                        return;
                    } else if (!(obj instanceof Float) && !(obj instanceof Double)) {
                        if (obj instanceof BigInteger) {
                            byteArrayOutputStream.write(5);
                            writeBytes(byteArrayOutputStream, ((BigInteger) obj).toString(16).getBytes(UTF8));
                            return;
                        }
                        throw new IllegalArgumentException("Unsupported Number type: " + obj.getClass());
                    } else {
                        byteArrayOutputStream.write(6);
                        writeAlignment(byteArrayOutputStream, 8);
                        writeDouble(byteArrayOutputStream, ((Number) obj).doubleValue());
                        return;
                    }
                }
                byteArrayOutputStream.write(3);
                writeInt(byteArrayOutputStream, ((Number) obj).intValue());
                return;
            } else if (obj instanceof CharSequence) {
                byteArrayOutputStream.write(7);
                writeBytes(byteArrayOutputStream, obj.toString().getBytes(UTF8));
                return;
            } else if (obj instanceof byte[]) {
                byteArrayOutputStream.write(8);
                writeBytes(byteArrayOutputStream, (byte[]) obj);
                return;
            } else if (obj instanceof int[]) {
                byteArrayOutputStream.write(9);
                int[] iArr = (int[]) obj;
                writeSize(byteArrayOutputStream, iArr.length);
                writeAlignment(byteArrayOutputStream, 4);
                int length = iArr.length;
                while (i11 < length) {
                    writeInt(byteArrayOutputStream, iArr[i11]);
                    i11++;
                }
                return;
            } else if (obj instanceof long[]) {
                byteArrayOutputStream.write(10);
                long[] jArr = (long[]) obj;
                writeSize(byteArrayOutputStream, jArr.length);
                writeAlignment(byteArrayOutputStream, 8);
                int length2 = jArr.length;
                while (i11 < length2) {
                    writeLong(byteArrayOutputStream, jArr[i11]);
                    i11++;
                }
                return;
            } else if (obj instanceof double[]) {
                byteArrayOutputStream.write(11);
                double[] dArr = (double[]) obj;
                writeSize(byteArrayOutputStream, dArr.length);
                writeAlignment(byteArrayOutputStream, 8);
                int length3 = dArr.length;
                while (i11 < length3) {
                    writeDouble(byteArrayOutputStream, dArr[i11]);
                    i11++;
                }
                return;
            } else if (obj instanceof List) {
                byteArrayOutputStream.write(12);
                List<Object> list = (List) obj;
                writeSize(byteArrayOutputStream, list.size());
                for (Object obj2 : list) {
                    writeValue(byteArrayOutputStream, obj2);
                }
                return;
            } else if (obj instanceof Map) {
                byteArrayOutputStream.write(13);
                Map map = (Map) obj;
                writeSize(byteArrayOutputStream, map.size());
                for (Map.Entry entry : map.entrySet()) {
                    writeValue(byteArrayOutputStream, entry.getKey());
                    writeValue(byteArrayOutputStream, entry.getValue());
                }
                return;
            } else if (obj instanceof float[]) {
                byteArrayOutputStream.write(14);
                float[] fArr = (float[]) obj;
                writeSize(byteArrayOutputStream, fArr.length);
                writeAlignment(byteArrayOutputStream, 4);
                int length4 = fArr.length;
                while (i11 < length4) {
                    writeFloat(byteArrayOutputStream, fArr[i11]);
                    i11++;
                }
                return;
            } else {
                throw new IllegalArgumentException("Unsupported value: '" + obj + "' of type '" + obj.getClass() + "'");
            }
        }
        byteArrayOutputStream.write(0);
    }
}
