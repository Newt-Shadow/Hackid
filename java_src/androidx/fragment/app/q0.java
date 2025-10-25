package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.i;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class q0 {

    /* renamed from: a  reason: collision with root package name */
    private final z f2802a;

    /* renamed from: b  reason: collision with root package name */
    private final ClassLoader f2803b;

    /* renamed from: d  reason: collision with root package name */
    int f2805d;

    /* renamed from: e  reason: collision with root package name */
    int f2806e;

    /* renamed from: f  reason: collision with root package name */
    int f2807f;

    /* renamed from: g  reason: collision with root package name */
    int f2808g;

    /* renamed from: h  reason: collision with root package name */
    int f2809h;

    /* renamed from: i  reason: collision with root package name */
    boolean f2810i;

    /* renamed from: k  reason: collision with root package name */
    String f2812k;

    /* renamed from: l  reason: collision with root package name */
    int f2813l;

    /* renamed from: m  reason: collision with root package name */
    CharSequence f2814m;

    /* renamed from: n  reason: collision with root package name */
    int f2815n;

    /* renamed from: o  reason: collision with root package name */
    CharSequence f2816o;

    /* renamed from: p  reason: collision with root package name */
    ArrayList f2817p;

    /* renamed from: q  reason: collision with root package name */
    ArrayList f2818q;

    /* renamed from: s  reason: collision with root package name */
    ArrayList f2820s;

    /* renamed from: c  reason: collision with root package name */
    ArrayList f2804c = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    boolean f2811j = true;

    /* renamed from: r  reason: collision with root package name */
    boolean f2819r = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f2821a;

        /* renamed from: b  reason: collision with root package name */
        p f2822b;

        /* renamed from: c  reason: collision with root package name */
        boolean f2823c;

        /* renamed from: d  reason: collision with root package name */
        int f2824d;

        /* renamed from: e  reason: collision with root package name */
        int f2825e;

        /* renamed from: f  reason: collision with root package name */
        int f2826f;

        /* renamed from: g  reason: collision with root package name */
        int f2827g;

        /* renamed from: h  reason: collision with root package name */
        i.b f2828h;

        /* renamed from: i  reason: collision with root package name */
        i.b f2829i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i10, p pVar) {
            this.f2821a = i10;
            this.f2822b = pVar;
            this.f2823c = false;
            i.b bVar = i.b.RESUMED;
            this.f2828h = bVar;
            this.f2829i = bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i10, p pVar, boolean z10) {
            this.f2821a = i10;
            this.f2822b = pVar;
            this.f2823c = z10;
            i.b bVar = i.b.RESUMED;
            this.f2828h = bVar;
            this.f2829i = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(z zVar, ClassLoader classLoader) {
        this.f2802a = zVar;
        this.f2803b = classLoader;
    }

    public q0 b(int i10, p pVar, String str) {
        k(i10, pVar, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0 c(ViewGroup viewGroup, p pVar, String str) {
        pVar.mContainer = viewGroup;
        return b(viewGroup.getId(), pVar, str);
    }

    public q0 d(p pVar, String str) {
        k(0, pVar, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(a aVar) {
        this.f2804c.add(aVar);
        aVar.f2824d = this.f2805d;
        aVar.f2825e = this.f2806e;
        aVar.f2826f = this.f2807f;
        aVar.f2827g = this.f2808g;
    }

    public abstract int f();

    public abstract int g();

    public abstract void h();

    public abstract void i();

    public q0 j() {
        if (!this.f2810i) {
            this.f2811j = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(int i10, p pVar, String str, int i11) {
        String str2 = pVar.mPreviousWho;
        if (str2 != null) {
            t0.c.f(pVar, str2);
        }
        Class<?> cls = pVar.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str3 = pVar.mTag;
                if (str3 != null && !str.equals(str3)) {
                    throw new IllegalStateException("Can't change tag of fragment " + pVar + ": was " + pVar.mTag + " now " + str);
                }
                pVar.mTag = str;
            }
            if (i10 != 0) {
                if (i10 != -1) {
                    int i12 = pVar.mFragmentId;
                    if (i12 != 0 && i12 != i10) {
                        throw new IllegalStateException("Can't change container ID of fragment " + pVar + ": was " + pVar.mFragmentId + " now " + i10);
                    }
                    pVar.mFragmentId = i10;
                    pVar.mContainerId = i10;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + pVar + " with tag " + str + " to container view with no id");
                }
            }
            e(new a(i11, pVar));
            return;
        }
        throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }

    public q0 l(p pVar) {
        e(new a(3, pVar));
        return this;
    }

    public q0 m(boolean z10) {
        this.f2819r = z10;
        return this;
    }
}
