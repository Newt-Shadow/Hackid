package androidx.webkit.internal;

import android.os.Build;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class a implements p0 {

    /* renamed from: c  reason: collision with root package name */
    private static final Set f3542c = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private final String f3543a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3544b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.webkit.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0063a {

        /* renamed from: a  reason: collision with root package name */
        static final Set f3545a = new HashSet(Arrays.asList(m1.d().a()));
    }

    /* loaded from: classes.dex */
    public static class b extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class d extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public d(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class e extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 26) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class f extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public f(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 27) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class g extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public g(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 28) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class h extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public h(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 29) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class i extends a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public i(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 33) {
                return true;
            }
            return false;
        }
    }

    a(String str, String str2) {
        this.f3543a = str;
        this.f3544b = str2;
        f3542c.add(this);
    }

    public static Set e() {
        return Collections.unmodifiableSet(f3542c);
    }

    @Override // androidx.webkit.internal.p0
    public boolean a() {
        if (!c() && !d()) {
            return false;
        }
        return true;
    }

    @Override // androidx.webkit.internal.p0
    public String b() {
        return this.f3543a;
    }

    public abstract boolean c();

    public boolean d() {
        return kf.a.b(C0063a.f3545a, this.f3544b);
    }
}
