package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ac.CrashpadHelper;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* renamed from: com.yandex.metrica.impl.ob.y7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0991y7 {

    /* renamed from: m  reason: collision with root package name */
    private static final Set<String> f13980m;

    /* renamed from: a  reason: collision with root package name */
    private final Context f13981a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13982b;

    /* renamed from: c  reason: collision with root package name */
    private final File f13983c;

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f13984d;

    /* renamed from: e  reason: collision with root package name */
    private final File f13985e;

    /* renamed from: f  reason: collision with root package name */
    private final File f13986f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0741nm<Void, String> f13987g;

    /* renamed from: h  reason: collision with root package name */
    private final Jl f13988h;

    /* renamed from: i  reason: collision with root package name */
    private final C0967x7 f13989i;

    /* renamed from: j  reason: collision with root package name */
    private final Callable<String> f13990j;

    /* renamed from: k  reason: collision with root package name */
    private final C0800q7 f13991k;

    /* renamed from: l  reason: collision with root package name */
    private final B0 f13992l;

    /* renamed from: com.yandex.metrica.impl.ob.y7$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0741nm<Void, String> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public String a(Void r12) {
            return CrashpadHelper.getLibraryVersion();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.y7$b */
    /* loaded from: classes2.dex */
    class b implements Callable<String> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            return CrashpadHelper.getLibDirInsideApk();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.y7$c */
    /* loaded from: classes2.dex */
    static class c implements InterfaceC0741nm<File, Boolean> {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public /* bridge */ /* synthetic */ Boolean a(File file) {
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.y7$d */
    /* loaded from: classes2.dex */
    public static class d implements InterfaceC0741nm<File, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final String f13993a;

        public d(String str) {
            this.f13993a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public Boolean a(File file) {
            return Boolean.valueOf(!file.getName().endsWith(this.f13993a));
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f13980m = hashSet;
        hashSet.add("armeabi-v7a");
        hashSet.add("arm64-v8a");
        hashSet.add("x86");
        hashSet.add("x86_64");
    }

    public C0991y7(Context context, B0 b02, ICommonExecutor iCommonExecutor) {
        this(context, b02, iCommonExecutor, Arrays.asList("libappmetrica_crashpad_handler.so", "libappmetrica_handler.so"));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.C7 a() {
        /*
            r9 = this;
            java.io.File r0 = r9.f13983c
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lf
            boolean r0 = r0.exists()
            if (r0 != 0) goto Ld
            goto Lf
        Ld:
            r0 = r2
            goto L10
        Lf:
            r0 = r1
        L10:
            r3 = 0
            if (r0 == 0) goto Lac
            android.os.SystemClock.elapsedRealtime()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = "-"
            r0.append(r4)
            com.yandex.metrica.impl.ob.nm<java.lang.Void, java.lang.String> r4 = r9.f13987g
            java.lang.Object r4 = r4.a(r3)
            java.lang.String r4 = (java.lang.String) r4
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            com.yandex.metrica.impl.ob.Jl r4 = r9.f13988h
            java.lang.String r4 = r4.a()
            if (r4 == 0) goto Lab
            java.io.File r5 = r9.f13986f
            if (r5 != 0) goto L3c
            goto L5d
        L3c:
            boolean r5 = r5.exists()
            if (r5 != 0) goto L5e
            java.io.File r5 = r9.f13986f
            boolean r5 = r5.mkdirs()
            if (r5 != 0) goto L4b
            goto L5d
        L4b:
            java.io.File r5 = r9.f13985e
            if (r5 == 0) goto L5d
            boolean r5 = r5.setExecutable(r1, r2)
            if (r5 != 0) goto L56
            goto L5d
        L56:
            java.io.File r5 = r9.f13986f
            boolean r1 = r5.setExecutable(r1, r2)
            goto L5e
        L5d:
            r1 = r2
        L5e:
            if (r1 == 0) goto Lab
            com.yandex.metrica.impl.ob.y7$d r1 = new com.yandex.metrica.impl.ob.y7$d
            r1.<init>(r0)
            com.yandex.metrica.core.api.executors.ICommonExecutor r5 = r9.f13982b
            com.yandex.metrica.impl.ob.z7 r6 = new com.yandex.metrica.impl.ob.z7
            r6.<init>(r9, r1)
            r5.execute(r6)
            java.util.List<java.lang.String> r1 = r9.f13984d
            java.util.Iterator r1 = r1.iterator()
        L75:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto Lab
            java.lang.Object r5 = r1.next()
            java.lang.String r5 = (java.lang.String) r5
            com.yandex.metrica.impl.ob.x7 r6 = r9.f13989i
            java.lang.Object[] r7 = new java.lang.Object[]{r4, r5}
            java.lang.String r8 = "lib/%s/%s"
            java.lang.String r7 = java.lang.String.format(r8, r7)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r5)
            r8.append(r0)
            java.lang.String r5 = r8.toString()
            java.lang.String r5 = r6.a(r7, r5)
            android.os.SystemClock.elapsedRealtime()
            if (r5 == 0) goto L75
            com.yandex.metrica.impl.ob.C7 r0 = new com.yandex.metrica.impl.ob.C7
            r0.<init>(r5, r2, r3)
            r3 = r0
        Lab:
            return r3
        Lac:
            java.io.File r0 = r9.f13983c
            java.lang.String r0 = r0.getAbsolutePath()
            com.yandex.metrica.impl.ob.C7 r1 = new com.yandex.metrica.impl.ob.C7
            r1.<init>(r0, r2, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0991y7.a():com.yandex.metrica.impl.ob.C7");
    }

    private File c() {
        String str;
        try {
            str = this.f13990j.call();
        } catch (Throwable unused) {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.f13992l.getClass();
        return new File(str);
    }

    public C7 b() {
        C0776p7 c0776p7;
        C7 c72 = null;
        if (A2.a(29)) {
            File c10 = c();
            if (c10 == null) {
                return null;
            }
            for (String str : this.f13984d) {
                this.f13992l.getClass();
                File file = new File(c10, str);
                if (file.exists()) {
                    return new C7(file.getAbsolutePath(), true, null);
                }
            }
            return null;
        } else if (A2.a(23)) {
            C0800q7 c0800q7 = this.f13991k;
            Context context = this.f13981a;
            String a10 = this.f13988h.a();
            c0800q7.getClass();
            try {
                String[] a11 = D7.a(context, a10);
                c0776p7 = new C0776p7(a11[0], a11[1], Environment.getDataDirectory().getAbsolutePath());
            } catch (Throwable unused) {
                c0776p7 = null;
            }
            if (c0776p7 != null) {
                File c11 = c();
                if (c11 == null) {
                    c72 = new C7("stub", false, c0776p7);
                } else {
                    Iterator<String> it = this.f13984d.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        this.f13992l.getClass();
                        File file2 = new File(c11, it.next());
                        if (file2.exists()) {
                            c72 = new C7(file2.getAbsolutePath(), false, c0776p7);
                            break;
                        }
                    }
                }
            }
            if (c72 != null && c72.f9836d != null) {
                this.f13982b.execute(new RunnableC1015z7(this, new c()));
                return c72;
            }
            return a();
        } else {
            return a();
        }
    }

    private C0991y7(Context context, B0 b02, ICommonExecutor iCommonExecutor, List<String> list) {
        this(context, iCommonExecutor, list, b02, b02.a(b02.a(context), list.get(0)), b02.b(context.getCacheDir(), "appmetrica_crashpad_handler_extracted"), new a(), new b(), new Jl(f13980m));
    }

    private C0991y7(Context context, ICommonExecutor iCommonExecutor, List<String> list, B0 b02, File file, File file2, InterfaceC0741nm<Void, String> interfaceC0741nm, Callable<String> callable, Jl jl) {
        this(context, iCommonExecutor, list, file, file2, interfaceC0741nm, callable, jl, new C0967x7(context, file2), new C0800q7(), b02);
    }

    C0991y7(Context context, ICommonExecutor iCommonExecutor, List<String> list, File file, File file2, InterfaceC0741nm<Void, String> interfaceC0741nm, Callable<String> callable, Jl jl, C0967x7 c0967x7, C0800q7 c0800q7, B0 b02) {
        this.f13981a = context;
        this.f13982b = iCommonExecutor;
        this.f13984d = list;
        this.f13983c = file;
        this.f13985e = context.getCacheDir();
        this.f13986f = file2;
        this.f13987g = interfaceC0741nm;
        this.f13990j = callable;
        this.f13988h = jl;
        this.f13989i = c0967x7;
        this.f13991k = c0800q7;
        this.f13992l = b02;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC0741nm<File, Boolean> interfaceC0741nm) {
        File[] listFiles;
        File file = this.f13986f;
        if (file == null || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (interfaceC0741nm.a(file2).booleanValue()) {
                file2.delete();
            }
        }
    }
}
