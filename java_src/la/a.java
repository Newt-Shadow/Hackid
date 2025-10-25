package la;

import android.hardware.camera2.CaptureRequest;
import fa.e0;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private b f25395b;

    /* renamed from: la.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class C0242a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f25396a;

        static {
            int[] iArr = new int[b.values().length];
            f25396a = iArr;
            try {
                iArr[b.off.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25396a[b.always.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25396a[b.torch.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f25396a[b.auto.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(e0 e0Var) {
        super(e0Var);
        this.f25395b = b.auto;
    }

    @Override // ga.a
    public String a() {
        return "FlashFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        if (!c()) {
            return;
        }
        int i10 = C0242a.f25396a[this.f25395b.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        builder.set(CaptureRequest.CONTROL_AE_MODE, 2);
                        builder.set(CaptureRequest.FLASH_MODE, 0);
                        return;
                    }
                    return;
                }
                builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                builder.set(CaptureRequest.FLASH_MODE, 2);
                return;
            }
            builder.set(CaptureRequest.CONTROL_AE_MODE, 3);
            builder.set(CaptureRequest.FLASH_MODE, 0);
            return;
        }
        builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
        builder.set(CaptureRequest.FLASH_MODE, 0);
    }

    public boolean c() {
        Boolean c10 = this.f16340a.c();
        if (c10 != null && c10.booleanValue()) {
            return true;
        }
        return false;
    }

    public void d(b bVar) {
        this.f25395b = bVar;
    }
}
