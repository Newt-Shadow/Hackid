package t6;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import t6.i0;
/* loaded from: classes.dex */
public final class g0 extends b {

    /* renamed from: a  reason: collision with root package name */
    private final i0 f29978a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f29979b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f29980c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f29981d;

    private g0(i0 i0Var, g7.b bVar, g7.a aVar, Integer num) {
        this.f29978a = i0Var;
        this.f29979b = bVar;
        this.f29980c = aVar;
        this.f29981d = num;
    }

    public static g0 a(i0.a aVar, g7.b bVar, Integer num) {
        i0.a aVar2 = i0.a.f29999d;
        if (aVar != aVar2 && num == null) {
            throw new GeneralSecurityException("For given Variant " + aVar + " the value of idRequirement must be non-null");
        } else if (aVar == aVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (bVar.b() == 32) {
                i0 a10 = i0.a(aVar);
                return new g0(a10, bVar, b(a10, num), num);
            }
            throw new GeneralSecurityException("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + bVar.b());
        }
    }

    private static g7.a b(i0 i0Var, Integer num) {
        if (i0Var.b() == i0.a.f29999d) {
            return g7.a.a(new byte[0]);
        }
        if (i0Var.b() == i0.a.f29998c) {
            return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(num.intValue()).array());
        }
        if (i0Var.b() == i0.a.f29997b) {
            return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        }
        throw new IllegalStateException("Unknown Variant: " + i0Var.b());
    }
}
