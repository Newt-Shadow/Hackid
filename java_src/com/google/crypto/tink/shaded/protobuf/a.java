package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.h;
import com.google.crypto.tink.shaded.protobuf.o0;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class a implements o0 {
    protected int memoizedHashCode = 0;

    /* renamed from: com.google.crypto.tink.shaded.protobuf.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0103a implements o0.a {
        /* JADX INFO: Access modifiers changed from: protected */
        public static i1 i(o0 o0Var) {
            return new i1(o0Var);
        }
    }

    private String h(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public h e() {
        try {
            h.C0104h y10 = h.y(b());
            d(y10.b());
            return y10.a();
        } catch (IOException e10) {
            throw new RuntimeException(h("ByteString"), e10);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public byte[] f() {
        try {
            byte[] bArr = new byte[b()];
            k U = k.U(bArr);
            d(U);
            U.c();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException(h("byte array"), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int g(d1 d1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1 i() {
        return new i1(this);
    }
}
