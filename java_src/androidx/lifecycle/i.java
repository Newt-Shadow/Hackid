package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private AtomicReference f2971a = new AtomicReference(null);

    /* loaded from: classes.dex */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;
        
        public static final C0045a Companion = new C0045a(null);

        /* renamed from: androidx.lifecycle.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0045a {

            /* renamed from: androidx.lifecycle.i$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public /* synthetic */ class C0046a {

                /* renamed from: a  reason: collision with root package name */
                public static final /* synthetic */ int[] f2972a;

                static {
                    int[] iArr = new int[b.values().length];
                    try {
                        iArr[b.CREATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[b.STARTED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[b.RESUMED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[b.DESTROYED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[b.INITIALIZED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    f2972a = iArr;
                }
            }

            private C0045a() {
            }

            public /* synthetic */ C0045a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(b state) {
                kotlin.jvm.internal.m.e(state, "state");
                int i10 = C0046a.f2972a[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return a.ON_PAUSE;
                    }
                    return a.ON_STOP;
                }
                return a.ON_DESTROY;
            }

            public final a b(b state) {
                kotlin.jvm.internal.m.e(state, "state");
                int i10 = C0046a.f2972a[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 5) {
                            return null;
                        }
                        return a.ON_CREATE;
                    }
                    return a.ON_RESUME;
                }
                return a.ON_START;
            }

            public final a c(b state) {
                kotlin.jvm.internal.m.e(state, "state");
                int i10 = C0046a.f2972a[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return a.ON_RESUME;
                    }
                    return a.ON_START;
                }
                return a.ON_CREATE;
            }
        }

        /* loaded from: classes.dex */
        public /* synthetic */ class b {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f2973a;

            static {
                int[] iArr = new int[a.values().length];
                try {
                    iArr[a.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[a.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[a.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[a.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[a.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[a.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[a.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f2973a = iArr;
            }
        }

        public static final a b(b bVar) {
            return Companion.a(bVar);
        }

        public static final a i(b bVar) {
            return Companion.c(bVar);
        }

        public final b f() {
            switch (b.f2973a[ordinal()]) {
                case 1:
                case 2:
                    return b.CREATED;
                case 3:
                case 4:
                    return b.STARTED;
                case 5:
                    return b.RESUMED;
                case 6:
                    return b.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean b(b state) {
            kotlin.jvm.internal.m.e(state, "state");
            if (compareTo(state) >= 0) {
                return true;
            }
            return false;
        }
    }

    public abstract void a(l lVar);

    public abstract b b();

    public abstract void c(l lVar);
}
