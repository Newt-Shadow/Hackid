package e7;

import com.google.crypto.tink.shaded.protobuf.z;
/* loaded from: classes.dex */
public enum u implements z.a {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    SHA224(5),
    UNRECOGNIZED(-1);
    

    /* renamed from: i  reason: collision with root package name */
    private static final z.b f15418i = new z.b() { // from class: e7.u.a
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f15420a;

    u(int i10) {
        this.f15420a = i10;
    }

    public static u a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return null;
                            }
                            return SHA224;
                        }
                        return SHA512;
                    }
                    return SHA256;
                }
                return SHA384;
            }
            return SHA1;
        }
        return UNKNOWN_HASH;
    }

    public final int c() {
        if (this != UNRECOGNIZED) {
            return this.f15420a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
