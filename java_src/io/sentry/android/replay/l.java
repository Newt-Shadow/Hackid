package io.sentry.android.replay;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private volatile m f22754a = m.INITIAL;

    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f22755a;

        static {
            int[] iArr = new int[m.values().length];
            try {
                iArr[m.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[m.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[m.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[m.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[m.STOPPED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[m.CLOSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f22755a = iArr;
        }
    }

    public final m a() {
        return this.f22754a;
    }

    public final boolean b(m newState) {
        kotlin.jvm.internal.m.e(newState, "newState");
        switch (a.f22755a[this.f22754a.ordinal()]) {
            case 1:
                if (newState == m.STARTED || newState == m.CLOSED) {
                    return true;
                }
                break;
            case 2:
                if (newState == m.PAUSED || newState == m.STOPPED || newState == m.CLOSED) {
                    return true;
                }
                break;
            case 3:
                if (newState == m.PAUSED || newState == m.STOPPED || newState == m.CLOSED) {
                    return true;
                }
                break;
            case 4:
                if (newState == m.RESUMED || newState == m.STOPPED || newState == m.CLOSED) {
                    return true;
                }
                break;
            case 5:
                if (newState == m.STARTED || newState == m.CLOSED) {
                    return true;
                }
                break;
            case 6:
                break;
            default:
                throw new xc.i();
        }
        return false;
    }

    public final boolean c() {
        if (this.f22754a != m.STARTED && this.f22754a != m.RESUMED) {
            return false;
        }
        return true;
    }

    public final void d(m mVar) {
        kotlin.jvm.internal.m.e(mVar, "<set-?>");
        this.f22754a = mVar;
    }
}
