package com.google.crypto.tink.shaded.protobuf;
/* loaded from: classes.dex */
class w implements n0 {

    /* renamed from: a  reason: collision with root package name */
    private static final w f8651a = new w();

    private w() {
    }

    public static w c() {
        return f8651a;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.n0
    public m0 a(Class cls) {
        if (x.class.isAssignableFrom(cls)) {
            try {
                return (m0) x.v(cls.asSubclass(x.class)).j();
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }

    @Override // com.google.crypto.tink.shaded.protobuf.n0
    public boolean b(Class cls) {
        return x.class.isAssignableFrom(cls);
    }
}
