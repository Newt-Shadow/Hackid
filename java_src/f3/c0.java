package f3;

import java.util.UUID;
import y4.q0;
/* loaded from: classes.dex */
public final class c0 implements e3.b {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f15615d;

    /* renamed from: a  reason: collision with root package name */
    public final UUID f15616a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f15617b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f15618c;

    static {
        boolean z10;
        if ("Amazon".equals(q0.f32948c)) {
            String str = q0.f32949d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
                f15615d = z10;
            }
        }
        z10 = false;
        f15615d = z10;
    }

    public c0(UUID uuid, byte[] bArr, boolean z10) {
        this.f15616a = uuid;
        this.f15617b = bArr;
        this.f15618c = z10;
    }
}
