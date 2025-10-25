package n6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final d f26442a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f26443b;

    /* renamed from: c  reason: collision with root package name */
    private final c f26444c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26445d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f26446a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: n6.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0258a extends b {
            C0258a(q qVar, CharSequence charSequence) {
                super(qVar, charSequence);
            }

            @Override // n6.q.b
            int f(int i10) {
                return i10 + 1;
            }

            @Override // n6.q.b
            int g(int i10) {
                return a.this.f26446a.c(this.f26448c, i10);
            }
        }

        a(d dVar) {
            this.f26446a = dVar;
        }

        @Override // n6.q.c
        /* renamed from: b */
        public b a(q qVar, CharSequence charSequence) {
            return new C0258a(qVar, charSequence);
        }
    }

    /* loaded from: classes.dex */
    private static abstract class b extends n6.b {

        /* renamed from: c  reason: collision with root package name */
        final CharSequence f26448c;

        /* renamed from: d  reason: collision with root package name */
        final d f26449d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f26450e;

        /* renamed from: f  reason: collision with root package name */
        int f26451f = 0;

        /* renamed from: g  reason: collision with root package name */
        int f26452g;

        protected b(q qVar, CharSequence charSequence) {
            this.f26449d = qVar.f26442a;
            this.f26450e = qVar.f26443b;
            this.f26452g = qVar.f26445d;
            this.f26448c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // n6.b
        /* renamed from: e */
        public String b() {
            int g10;
            int i10 = this.f26451f;
            while (true) {
                int i11 = this.f26451f;
                if (i11 != -1) {
                    g10 = g(i11);
                    if (g10 == -1) {
                        g10 = this.f26448c.length();
                        this.f26451f = -1;
                    } else {
                        this.f26451f = f(g10);
                    }
                    int i12 = this.f26451f;
                    if (i12 == i10) {
                        int i13 = i12 + 1;
                        this.f26451f = i13;
                        if (i13 > this.f26448c.length()) {
                            this.f26451f = -1;
                        }
                    } else {
                        while (i10 < g10 && this.f26449d.e(this.f26448c.charAt(i10))) {
                            i10++;
                        }
                        while (g10 > i10 && this.f26449d.e(this.f26448c.charAt(g10 - 1))) {
                            g10--;
                        }
                        if (!this.f26450e || i10 != g10) {
                            break;
                        }
                        i10 = this.f26451f;
                    }
                } else {
                    return (String) c();
                }
            }
            int i14 = this.f26452g;
            if (i14 == 1) {
                g10 = this.f26448c.length();
                this.f26451f = -1;
                while (g10 > i10 && this.f26449d.e(this.f26448c.charAt(g10 - 1))) {
                    g10--;
                }
            } else {
                this.f26452g = i14 - 1;
            }
            return this.f26448c.subSequence(i10, g10).toString();
        }

        abstract int f(int i10);

        abstract int g(int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        Iterator a(q qVar, CharSequence charSequence);
    }

    private q(c cVar) {
        this(cVar, false, d.f(), Integer.MAX_VALUE);
    }

    public static q d(char c10) {
        return e(d.d(c10));
    }

    public static q e(d dVar) {
        m.i(dVar);
        return new q(new a(dVar));
    }

    private Iterator g(CharSequence charSequence) {
        return this.f26444c.a(this, charSequence);
    }

    public List f(CharSequence charSequence) {
        m.i(charSequence);
        Iterator g10 = g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (g10.hasNext()) {
            arrayList.add((String) g10.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    private q(c cVar, boolean z10, d dVar, int i10) {
        this.f26444c = cVar;
        this.f26443b = z10;
        this.f26442a = dVar;
        this.f26445d = i10;
    }
}
