package androidx.lifecycle;

import androidx.lifecycle.i;
/* loaded from: classes.dex */
public final class d implements k {

    /* renamed from: a  reason: collision with root package name */
    private final DefaultLifecycleObserver f2949a;

    /* renamed from: b  reason: collision with root package name */
    private final k f2950b;

    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f2951a;

        static {
            int[] iArr = new int[i.a.values().length];
            try {
                iArr[i.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[i.a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[i.a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[i.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[i.a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[i.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[i.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f2951a = iArr;
        }
    }

    public d(DefaultLifecycleObserver defaultLifecycleObserver, k kVar) {
        kotlin.jvm.internal.m.e(defaultLifecycleObserver, "defaultLifecycleObserver");
        this.f2949a = defaultLifecycleObserver;
        this.f2950b = kVar;
    }

    @Override // androidx.lifecycle.k
    public void a(m source, i.a event) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(event, "event");
        switch (a.f2951a[event.ordinal()]) {
            case 1:
                this.f2949a.onCreate(source);
                break;
            case 2:
                this.f2949a.onStart(source);
                break;
            case 3:
                this.f2949a.onResume(source);
                break;
            case 4:
                this.f2949a.onPause(source);
                break;
            case 5:
                this.f2949a.onStop(source);
                break;
            case 6:
                this.f2949a.onDestroy(source);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        k kVar = this.f2950b;
        if (kVar != null) {
            kVar.a(source, event);
        }
    }
}
