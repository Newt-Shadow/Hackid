package a0;

import a0.k;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    static final r.h f25a = new r.h(16);

    /* renamed from: b  reason: collision with root package name */
    private static final ExecutorService f26b = l.a("fonts-androidx", 10, 10000);

    /* renamed from: c  reason: collision with root package name */
    static final Object f27c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final r.i f28d = new r.i();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f30b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ a0.e f31c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f32d;

        a(String str, Context context, a0.e eVar, int i10) {
            this.f29a = str;
            this.f30b = context;
            this.f31c = eVar;
            this.f32d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public e call() {
            List a10;
            String str = this.f29a;
            Context context = this.f30b;
            a10 = v.f.a(new Object[]{this.f31c});
            return i.c(str, context, a10, this.f32d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements c0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a0.a f33a;

        b(a0.a aVar) {
            this.f33a = aVar;
        }

        @Override // c0.a
        /* renamed from: a */
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.f33a.b(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f35b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f36c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f37d;

        c(String str, Context context, List list, int i10) {
            this.f34a = str;
            this.f35b = context;
            this.f36c = list;
            this.f37d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public e call() {
            try {
                return i.c(this.f34a, this.f35b, this.f36c, this.f37d);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements c0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38a;

        d(String str) {
            this.f38a = str;
        }

        @Override // c0.a
        /* renamed from: a */
        public void accept(e eVar) {
            synchronized (i.f27c) {
                r.i iVar = i.f28d;
                ArrayList arrayList = (ArrayList) iVar.get(this.f38a);
                if (arrayList == null) {
                    return;
                }
                iVar.remove(this.f38a);
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ((c0.a) arrayList.get(i10)).accept(eVar);
                }
            }
        }
    }

    private static String a(List list, int i10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            sb2.append(((a0.e) list.get(i11)).d());
            sb2.append("-");
            sb2.append(i10);
            if (i11 < list.size() - 1) {
                sb2.append(";");
            }
        }
        return sb2.toString();
    }

    private static int b(k.a aVar) {
        int i10 = 1;
        if (aVar.e() != 0) {
            if (aVar.e() != 1) {
                return -3;
            }
            return -2;
        }
        k.b[] c10 = aVar.c();
        if (c10 != null && c10.length != 0) {
            i10 = 0;
            for (k.b bVar : c10) {
                int b10 = bVar.b();
                if (b10 != 0) {
                    if (b10 < 0) {
                        return -3;
                    }
                    return b10;
                }
            }
        }
        return i10;
    }

    static e c(String str, Context context, List list, int i10) {
        Typeface b10;
        k1.a.c("getFontSync");
        try {
            r.h hVar = f25a;
            Typeface typeface = (Typeface) hVar.c(str);
            if (typeface != null) {
                return new e(typeface);
            }
            k.a e10 = a0.d.e(context, list, null);
            int b11 = b(e10);
            if (b11 != 0) {
                return new e(b11);
            }
            if (e10.f() && Build.VERSION.SDK_INT >= 29) {
                b10 = v.g.c(context, null, e10.d(), i10);
            } else {
                b10 = v.g.b(context, null, e10.c(), i10);
            }
            if (b10 != null) {
                hVar.d(str, b10);
                return new e(b10);
            }
            return new e(-3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        } finally {
            k1.a.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface d(Context context, List list, int i10, Executor executor, a0.a aVar) {
        String a10 = a(list, i10);
        Typeface typeface = (Typeface) f25a.c(a10);
        if (typeface != null) {
            aVar.b(new e(typeface));
            return typeface;
        }
        b bVar = new b(aVar);
        synchronized (f27c) {
            r.i iVar = f28d;
            ArrayList arrayList = (ArrayList) iVar.get(a10);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(bVar);
            iVar.put(a10, arrayList2);
            c cVar = new c(a10, context, list, i10);
            if (executor == null) {
                executor = f26b;
            }
            l.c(executor, cVar, new d(a10));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface e(Context context, a0.e eVar, a0.a aVar, int i10, int i11) {
        List a10;
        List a11;
        a10 = v.f.a(new Object[]{eVar});
        String a12 = a(a10, i10);
        Typeface typeface = (Typeface) f25a.c(a12);
        if (typeface != null) {
            aVar.b(new e(typeface));
            return typeface;
        } else if (i11 == -1) {
            a11 = v.f.a(new Object[]{eVar});
            e c10 = c(a12, context, a11, i10);
            aVar.b(c10);
            return c10.f39a;
        } else {
            try {
                e eVar2 = (e) l.d(f26b, new a(a12, context, eVar, i10), i11);
                aVar.b(eVar2);
                return eVar2.f39a;
            } catch (InterruptedException unused) {
                aVar.b(new e(-3));
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        final Typeface f39a;

        /* renamed from: b  reason: collision with root package name */
        final int f40b;

        e(int i10) {
            this.f39a = null;
            this.f40b = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            if (this.f40b == 0) {
                return true;
            }
            return false;
        }

        e(Typeface typeface) {
            this.f39a = typeface;
            this.f40b = 0;
        }
    }
}
