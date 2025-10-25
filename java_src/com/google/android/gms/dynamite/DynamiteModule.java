package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import n5.o;
import n5.q;
/* loaded from: classes.dex */
public final class DynamiteModule {

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f5941h = null;

    /* renamed from: i  reason: collision with root package name */
    private static String f5942i = null;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f5943j = false;

    /* renamed from: k  reason: collision with root package name */
    private static int f5944k = -1;

    /* renamed from: l  reason: collision with root package name */
    private static Boolean f5945l;

    /* renamed from: q  reason: collision with root package name */
    private static m f5950q;

    /* renamed from: r  reason: collision with root package name */
    private static n f5951r;

    /* renamed from: a  reason: collision with root package name */
    private final Context f5952a;

    /* renamed from: m  reason: collision with root package name */
    private static final ThreadLocal f5946m = new ThreadLocal();

    /* renamed from: n  reason: collision with root package name */
    private static final ThreadLocal f5947n = new com.google.android.gms.dynamite.b();

    /* renamed from: o  reason: collision with root package name */
    private static final b.a f5948o = new c();

    /* renamed from: b  reason: collision with root package name */
    public static final b f5935b = new d();

    /* renamed from: c  reason: collision with root package name */
    public static final b f5936c = new e();

    /* renamed from: d  reason: collision with root package name */
    public static final b f5937d = new f();

    /* renamed from: e  reason: collision with root package name */
    public static final b f5938e = new g();

    /* renamed from: f  reason: collision with root package name */
    public static final b f5939f = new h();

    /* renamed from: g  reason: collision with root package name */
    public static final b f5940g = new i();

    /* renamed from: p  reason: collision with root package name */
    public static final b f5949p = new j();

    @DynamiteApi
    /* loaded from: classes.dex */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes.dex */
    public static class a extends Exception {
        /* synthetic */ a(String str, v5.e eVar) {
            super(str);
        }

        /* synthetic */ a(String str, Throwable th, v5.e eVar) {
            super(str, th);
        }
    }

    /* loaded from: classes.dex */
    public interface b {

        /* loaded from: classes.dex */
        public interface a {
            int a(Context context, String str, boolean z10);

            int b(Context context, String str);
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0100b {

            /* renamed from: a  reason: collision with root package name */
            public int f5953a = 0;

            /* renamed from: b  reason: collision with root package name */
            public int f5954b = 0;

            /* renamed from: c  reason: collision with root package name */
            public int f5955c = 0;
        }

        C0100b a(Context context, String str, a aVar);
    }

    private DynamiteModule(Context context) {
        q.k(context);
        this.f5952a = context;
    }

    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            Class<?> loadClass = classLoader.loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!o.a(declaredField.get(null), str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", "Module descriptor id '" + valueOf + "' didn't match expected id '" + str + "'");
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e10) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e10.getMessage())));
            return 0;
        }
    }

    public static int b(Context context, String str) {
        return e(context, str, false);
    }

    public static DynamiteModule d(Context context, b bVar, String str) {
        DynamiteModule g10;
        Boolean bool;
        u5.a h12;
        DynamiteModule dynamiteModule;
        n nVar;
        Boolean valueOf;
        u5.a e12;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            ThreadLocal threadLocal = f5946m;
            k kVar = (k) threadLocal.get();
            k kVar2 = new k(null);
            threadLocal.set(kVar2);
            ThreadLocal threadLocal2 = f5947n;
            long longValue = ((Long) threadLocal2.get()).longValue();
            try {
                threadLocal2.set(Long.valueOf(SystemClock.uptimeMillis()));
                b.C0100b a10 = bVar.a(context, str, f5948o);
                Log.i("DynamiteModule", "Considering local module " + str + ":" + a10.f5953a + " and remote module " + str + ":" + a10.f5954b);
                int i10 = a10.f5955c;
                if (i10 != 0) {
                    if (i10 == -1) {
                        if (a10.f5953a != 0) {
                            i10 = -1;
                        }
                    }
                    if (i10 != 1 || a10.f5954b != 0) {
                        if (i10 == -1) {
                            g10 = g(applicationContext, str);
                        } else if (i10 == 1) {
                            try {
                                int i11 = a10.f5954b;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (j(context)) {
                                            bool = f5941h;
                                        } else {
                                            throw new a("Remote loading disabled", null);
                                        }
                                    }
                                    if (bool != null) {
                                        if (bool.booleanValue()) {
                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i11);
                                            synchronized (DynamiteModule.class) {
                                                nVar = f5951r;
                                            }
                                            if (nVar != null) {
                                                k kVar3 = (k) threadLocal.get();
                                                if (kVar3 != null && kVar3.f5956a != null) {
                                                    Context applicationContext2 = context.getApplicationContext();
                                                    Cursor cursor = kVar3.f5956a;
                                                    u5.b.e1(null);
                                                    synchronized (DynamiteModule.class) {
                                                        valueOf = Boolean.valueOf(f5944k >= 2);
                                                    }
                                                    if (valueOf.booleanValue()) {
                                                        Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                        e12 = nVar.f1(u5.b.e1(applicationContext2), str, i11, u5.b.e1(cursor));
                                                    } else {
                                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                        e12 = nVar.e1(u5.b.e1(applicationContext2), str, i11, u5.b.e1(cursor));
                                                    }
                                                    Context context2 = (Context) u5.b.k(e12);
                                                    if (context2 != null) {
                                                        dynamiteModule = new DynamiteModule(context2);
                                                    } else {
                                                        throw new a("Failed to get module context", null);
                                                    }
                                                } else {
                                                    throw new a("No result cursor", null);
                                                }
                                            } else {
                                                throw new a("DynamiteLoaderV2 was not cached.", null);
                                            }
                                        } else {
                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i11);
                                            m k10 = k(context);
                                            if (k10 != null) {
                                                int e13 = k10.e1();
                                                if (e13 >= 3) {
                                                    k kVar4 = (k) threadLocal.get();
                                                    if (kVar4 != null) {
                                                        h12 = k10.i1(u5.b.e1(context), str, i11, u5.b.e1(kVar4.f5956a));
                                                    } else {
                                                        throw new a("No cached result cursor holder", null);
                                                    }
                                                } else if (e13 == 2) {
                                                    Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                    h12 = k10.j1(u5.b.e1(context), str, i11);
                                                } else {
                                                    Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                    h12 = k10.h1(u5.b.e1(context), str, i11);
                                                }
                                                Object k11 = u5.b.k(h12);
                                                if (k11 != null) {
                                                    dynamiteModule = new DynamiteModule((Context) k11);
                                                } else {
                                                    throw new a("Failed to load remote module.", null);
                                                }
                                            } else {
                                                throw new a("Failed to create IDynamiteLoader.", null);
                                            }
                                        }
                                        g10 = dynamiteModule;
                                    } else {
                                        throw new a("Failed to determine which loading route to use.", null);
                                    }
                                } catch (RemoteException e10) {
                                    throw new a("Failed to load remote module.", e10, null);
                                } catch (a e11) {
                                    throw e11;
                                } catch (Throwable th) {
                                    com.google.android.gms.common.util.f.a(context, th);
                                    throw new a("Failed to load remote module.", th, null);
                                }
                            } catch (a e14) {
                                Log.w("DynamiteModule", "Failed to load remote module: " + e14.getMessage());
                                int i12 = a10.f5953a;
                                if (i12 != 0 && bVar.a(context, str, new l(i12, 0)).f5955c == -1) {
                                    g10 = g(applicationContext, str);
                                } else {
                                    throw new a("Remote load failed. No local fallback found.", e14, null);
                                }
                            }
                        } else {
                            throw new a("VersionPolicy returned invalid code:" + i10, null);
                        }
                        if (longValue == 0) {
                            f5947n.remove();
                        } else {
                            f5947n.set(Long.valueOf(longValue));
                        }
                        Cursor cursor2 = kVar2.f5956a;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        f5946m.set(kVar);
                        return g10;
                    }
                }
                throw new a("No acceptable module " + str + " found. Local version is " + a10.f5953a + " and remote version is " + a10.f5954b + ".", null);
            } catch (Throwable th2) {
                if (longValue == 0) {
                    f5947n.remove();
                } else {
                    f5947n.set(Long.valueOf(longValue));
                }
                Cursor cursor3 = kVar2.f5956a;
                if (cursor3 != null) {
                    cursor3.close();
                }
                f5946m.set(kVar);
                throw th2;
            }
        }
        throw new a("null application Context", null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x01b3 -> B:131:0x01b8). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x01b5 -> B:131:0x01b8). Please submit an issue!!! */
    public static int e(Context context, String str, boolean z10) {
        Field declaredField;
        Throwable th;
        RemoteException e10;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f5941h;
                Cursor cursor2 = null;
                int i10 = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e11) {
                        String obj = e11.toString();
                        Log.w("DynamiteModule", "Failed to load module via V2: " + obj);
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                h(classLoader);
                            } catch (a unused) {
                            }
                            bool = Boolean.TRUE;
                        } else if (!j(context)) {
                            return 0;
                        } else {
                            if (!f5943j) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int f10 = f(context, str, z10, true);
                                        String str2 = f5942i;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader a10 = v5.d.a();
                                            if (a10 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    v5.b.a();
                                                    String str3 = f5942i;
                                                    q.k(str3);
                                                    a10 = v5.a.a(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = f5942i;
                                                    q.k(str4);
                                                    a10 = new com.google.android.gms.dynamite.a(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            h(a10);
                                            declaredField.set(null, a10);
                                            f5941h = bool2;
                                            return f10;
                                        }
                                        return f10;
                                    } catch (a unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        f5941h = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return f(context, str, z10, false);
                    } catch (a e12) {
                        String message = e12.getMessage();
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + message);
                        return 0;
                    }
                }
                m k10 = k(context);
                try {
                    if (k10 != null) {
                        try {
                            int e13 = k10.e1();
                            if (e13 >= 3) {
                                k kVar = (k) f5946m.get();
                                if (kVar != null && (cursor = kVar.f5956a) != null) {
                                    i10 = cursor.getInt(0);
                                } else {
                                    Cursor cursor3 = (Cursor) u5.b.k(k10.k1(u5.b.e1(context), str, z10, ((Long) f5947n.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i11 = cursor3.getInt(0);
                                                if (i11 <= 0 || !i(cursor3)) {
                                                    cursor2 = cursor3;
                                                }
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                i10 = i11;
                                            }
                                        } catch (RemoteException e14) {
                                            e10 = e14;
                                            cursor2 = cursor3;
                                            String message2 = e10.getMessage();
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + message2);
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return i10;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                }
                            } else if (e13 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i10 = k10.g1(u5.b.e1(context), str, z10);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i10 = k10.f1(u5.b.e1(context), str, z10);
                            }
                        } catch (RemoteException e15) {
                            e10 = e15;
                        }
                    }
                    return i10;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            com.google.android.gms.common.util.f.a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0133, code lost:
        r4.close();
     */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x016b: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:98:0x016b */
    /* JADX WARN: Removed duplicated region for block: B:100:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int f(android.content.Context r12, java.lang.String r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.f(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    private static DynamiteModule g(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    private static void h(ClassLoader classLoader) {
        n nVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                nVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof n) {
                    nVar = (n) queryLocalInterface;
                } else {
                    nVar = new n(iBinder);
                }
            }
            f5951r = nVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new a("Failed to instantiate dynamite loader", e10, null);
        }
    }

    private static boolean i(Cursor cursor) {
        k kVar = (k) f5946m.get();
        if (kVar != null && kVar.f5956a == null) {
            kVar.f5956a = cursor;
            return true;
        }
        return false;
    }

    private static boolean j(Context context) {
        int i10;
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f5945l)) {
            return true;
        }
        boolean z10 = false;
        if (f5945l == null) {
            PackageManager packageManager = context.getPackageManager();
            if (true != com.google.android.gms.common.util.k.g()) {
                i10 = 0;
            } else {
                i10 = 268435456;
            }
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider("com.google.android.gms.chimera", i10);
            if (l5.g.f().h(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z10 = true;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            f5945l = valueOf;
            z10 = valueOf.booleanValue();
            if (z10 && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f5943j = true;
            }
        }
        if (!z10) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z10;
    }

    private static m k(Context context) {
        m mVar;
        synchronized (DynamiteModule.class) {
            m mVar2 = f5950q;
            if (mVar2 != null) {
                return mVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    mVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    if (queryLocalInterface instanceof m) {
                        mVar = (m) queryLocalInterface;
                    } else {
                        mVar = new m(iBinder);
                    }
                }
                if (mVar != null) {
                    f5950q = mVar;
                    return mVar;
                }
            } catch (Exception e10) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e10.getMessage());
            }
            return null;
        }
    }

    public IBinder c(String str) {
        try {
            return (IBinder) this.f5952a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            throw new a("Failed to instantiate module class: ".concat(String.valueOf(str)), e10, null);
        }
    }
}
