package v3;

import java.nio.ByteBuffer;
import java.util.Arrays;
import t3.d;
import t3.g;
import y4.e0;
/* loaded from: classes.dex */
public final class b extends g {
    @Override // t3.g
    protected t3.a b(d dVar, ByteBuffer byteBuffer) {
        return new t3.a(c(new e0(byteBuffer.array(), byteBuffer.limit())));
    }

    public a c(e0 e0Var) {
        return new a((String) y4.a.e(e0Var.A()), (String) y4.a.e(e0Var.A()), e0Var.z(), e0Var.z(), Arrays.copyOfRange(e0Var.e(), e0Var.f(), e0Var.g()));
    }
}
