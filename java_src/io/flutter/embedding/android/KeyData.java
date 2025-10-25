package io.flutter.embedding.android;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
public class KeyData {
    private static final int BYTES_PER_FIELD = 8;
    public static final String CHANNEL = "flutter/keydata";
    private static final int FIELD_COUNT = 6;
    private static final String TAG = "KeyData";
    String character;
    DeviceType deviceType;
    long logicalKey;
    long physicalKey;
    boolean synthesized;
    long timestamp;
    Type type;

    /* loaded from: classes2.dex */
    public enum DeviceType {
        kKeyboard(0),
        kDirectionalPad(1),
        kGamepad(2),
        kJoystick(3),
        kHdmi(4);
        
        private final long value;

        DeviceType(long j10) {
            this.value = j10;
        }

        static DeviceType fromLong(long j10) {
            int i10 = (int) j10;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                return kHdmi;
                            }
                            throw new AssertionError("Unexpected DeviceType value");
                        }
                        return kJoystick;
                    }
                    return kGamepad;
                }
                return kDirectionalPad;
            }
            return kKeyboard;
        }

        public long getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2.dex */
    public enum Type {
        kDown(0),
        kUp(1),
        kRepeat(2);
        
        private long value;

        Type(long j10) {
            this.value = j10;
        }

        static Type fromLong(long j10) {
            int i10 = (int) j10;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return kRepeat;
                    }
                    throw new AssertionError("Unexpected Type value");
                }
                return kUp;
            }
            return kDown;
        }

        public long getValue() {
            return this.value;
        }
    }

    public KeyData() {
    }

    public KeyData(ByteBuffer byteBuffer) {
        long j10 = byteBuffer.getLong();
        this.timestamp = byteBuffer.getLong();
        this.type = Type.fromLong(byteBuffer.getLong());
        this.physicalKey = byteBuffer.getLong();
        this.logicalKey = byteBuffer.getLong();
        this.synthesized = byteBuffer.getLong() != 0;
        this.deviceType = DeviceType.fromLong(byteBuffer.getLong());
        if (byteBuffer.remaining() == j10) {
            this.character = null;
            if (j10 != 0) {
                int i10 = (int) j10;
                byte[] bArr = new byte[i10];
                byteBuffer.get(bArr, 0, i10);
                try {
                    this.character = new String(bArr, "UTF-8");
                    return;
                } catch (UnsupportedEncodingException unused) {
                    throw new AssertionError("UTF-8 unsupported");
                }
            }
            return;
        }
        throw new AssertionError(String.format("Unexpected char length: charSize is %d while buffer has position %d, capacity %d, limit %d", Long.valueOf(j10), Integer.valueOf(byteBuffer.position()), Integer.valueOf(byteBuffer.capacity()), Integer.valueOf(byteBuffer.limit())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer toBytes() {
        byte[] bytes;
        int length;
        long j10;
        try {
            String str = this.character;
            if (str == null) {
                bytes = null;
            } else {
                bytes = str.getBytes("UTF-8");
            }
            if (bytes == null) {
                length = 0;
            } else {
                length = bytes.length;
            }
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(length + 56);
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            allocateDirect.putLong(length);
            allocateDirect.putLong(this.timestamp);
            allocateDirect.putLong(this.type.getValue());
            allocateDirect.putLong(this.physicalKey);
            allocateDirect.putLong(this.logicalKey);
            if (this.synthesized) {
                j10 = 1;
            } else {
                j10 = 0;
            }
            allocateDirect.putLong(j10);
            allocateDirect.putLong(this.deviceType.getValue());
            if (bytes != null) {
                allocateDirect.put(bytes);
            }
            return allocateDirect;
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError("UTF-8 not supported");
        }
    }
}
