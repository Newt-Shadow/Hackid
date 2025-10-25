package ha;

import android.hardware.camera2.CaptureRequest;
import fa.e0;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private b f16969b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f16970c;

    /* renamed from: ha.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class C0183a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16971a;

        static {
            int[] iArr = new int[b.values().length];
            f16971a = iArr;
            try {
                iArr[b.locked.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16971a[b.auto.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public a(e0 e0Var, boolean z10) {
        super(e0Var);
        this.f16969b = b.auto;
        this.f16970c = z10;
    }

    @Override // ga.a
    public String a() {
        return "AutoFocusFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        int i10;
        if (!c()) {
            return;
        }
        int i11 = C0183a.f16971a[this.f16969b.ordinal()];
        if (i11 != 1) {
            if (i11 == 2) {
                CaptureRequest.Key key = CaptureRequest.CONTROL_AF_MODE;
                if (this.f16970c) {
                    i10 = 3;
                } else {
                    i10 = 4;
                }
                builder.set(key, Integer.valueOf(i10));
                return;
            }
            return;
        }
        builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
    }

    public boolean c() {
        boolean z10;
        int[] o10 = this.f16340a.o();
        Float q10 = this.f16340a.q();
        if (q10 != null && q10.floatValue() != 0.0f) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10 || o10.length == 0) {
            return false;
        }
        if (o10.length == 1 && o10[0] == 0) {
            return false;
        }
        return true;
    }

    public b d() {
        return this.f16969b;
    }

    public void e(b bVar) {
        this.f16969b = bVar;
    }
}
