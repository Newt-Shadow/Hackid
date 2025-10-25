package s6;

import e7.c0;
import e7.i0;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f29414a = new byte[0];

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29415a;

        static {
            int[] iArr = new int[i0.values().length];
            f29415a = iArr;
            try {
                iArr[i0.LEGACY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29415a[i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29415a[i0.TINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29415a[i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static byte[] a(c0.c cVar) {
        int i10 = a.f29415a[cVar.b0().ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                if (i10 == 4) {
                    return f29414a;
                }
                throw new GeneralSecurityException("unknown output prefix type");
            }
            return ByteBuffer.allocate(5).put((byte) 1).putInt(cVar.a0()).array();
        }
        return ByteBuffer.allocate(5).put((byte) 0).putInt(cVar.a0()).array();
    }
}
