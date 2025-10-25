package io.sentry.android.core;

import io.sentry.l0;
import io.sentry.s5;
/* loaded from: classes2.dex */
final class e0 implements io.sentry.transport.r {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22232a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f22233a;

        static {
            int[] iArr = new int[l0.a.values().length];
            f22233a = iArr;
            try {
                iArr[l0.a.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22233a[l0.a.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22233a[l0.a.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(s5 s5Var) {
        this.f22232a = s5Var;
    }

    @Override // io.sentry.transport.r
    public boolean a() {
        return b(this.f22232a.getConnectionStatusProvider().b());
    }

    boolean b(l0.a aVar) {
        int i10 = a.f22233a[aVar.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return true;
        }
        return false;
    }
}
