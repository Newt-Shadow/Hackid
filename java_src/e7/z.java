package e7;

import com.google.crypto.tink.shaded.protobuf.z;
/* loaded from: classes.dex */
public enum z implements z.a {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);
    

    /* renamed from: g  reason: collision with root package name */
    private static final z.b f15439g = new z.b() { // from class: e7.z.a
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f15441a;

    z(int i10) {
        this.f15441a = i10;
    }

    public static z a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return DESTROYED;
                }
                return DISABLED;
            }
            return ENABLED;
        }
        return UNKNOWN_STATUS;
    }

    public final int c() {
        if (this != UNRECOGNIZED) {
            return this.f15441a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
