package t6;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import t6.a0;
/* loaded from: classes.dex */
public final class y extends b {

    /* renamed from: a  reason: collision with root package name */
    private final a0 f30061a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.b f30062b;

    /* renamed from: c  reason: collision with root package name */
    private final g7.a f30063c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f30064d;

    private y(a0 a0Var, g7.b bVar, g7.a aVar, Integer num) {
        this.f30061a = a0Var;
        this.f30062b = bVar;
        this.f30063c = aVar;
        this.f30064d = num;
    }

    public static y a(a0.a aVar, g7.b bVar, Integer num) {
        a0.a aVar2 = a0.a.f29951d;
        if (aVar != aVar2 && num == null) {
            throw new GeneralSecurityException("For given Variant " + aVar + " the value of idRequirement must be non-null");
        } else if (aVar == aVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (bVar.b() == 32) {
                a0 a10 = a0.a(aVar);
                return new y(a10, bVar, b(a10, num), num);
            }
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + bVar.b());
        }
    }

    private static g7.a b(a0 a0Var, Integer num) {
        if (a0Var.b() == a0.a.f29951d) {
            return g7.a.a(new byte[0]);
        }
        if (a0Var.b() == a0.a.f29950c) {
            return g7.a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(num.intValue()).array());
        }
        if (a0Var.b() == a0.a.f29949b) {
            return g7.a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        }
        throw new IllegalStateException("Unknown Variant: " + a0Var.b());
    }
}
