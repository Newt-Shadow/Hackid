package e7;

import com.google.crypto.tink.shaded.protobuf.z;
/* loaded from: classes.dex */
public enum i0 implements z.a {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: h  reason: collision with root package name */
    private static final z.b f15394h = new z.b() { // from class: e7.i0.a
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f15396a;

    i0(int i10) {
        this.f15396a = i10;
    }

    public static i0 a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return null;
                        }
                        return CRUNCHY;
                    }
                    return RAW;
                }
                return LEGACY;
            }
            return TINK;
        }
        return UNKNOWN_PREFIX;
    }

    public final int c() {
        if (this != UNRECOGNIZED) {
            return this.f15396a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
