package m0;

import ad.e;
import android.content.Context;
import android.content.SharedPreferences;
import id.Function2;
import id.p;
import j0.g;
import java.io.IOException;
import java.util.Set;
import kotlin.coroutines.jvm.internal.k;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.n;
import xc.f;
import xc.m;
import xc.t;
import yc.w;
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final Function2 f25580a;

    /* renamed from: b  reason: collision with root package name */
    private final p f25581b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f25582c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25583d;

    /* renamed from: e  reason: collision with root package name */
    private final xc.d f25584e;

    /* renamed from: f  reason: collision with root package name */
    private final Set f25585f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0245a extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f25586a;

        C0245a(e eVar) {
            super(2, eVar);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(Object obj, e eVar) {
            return ((C0245a) create(obj, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new C0245a(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f25586a == 0) {
                m.b(obj);
                return kotlin.coroutines.jvm.internal.b.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* loaded from: classes.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Context f25587e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f25588f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context, String str) {
            super(0);
            this.f25587e = context;
            this.f25588f = str;
        }

        @Override // id.a
        /* renamed from: b */
        public final SharedPreferences invoke() {
            SharedPreferences sharedPreferences = this.f25587e.getSharedPreferences(this.f25588f, 0);
            kotlin.jvm.internal.m.d(sharedPreferences, "context.getSharedPrefere…me, Context.MODE_PRIVATE)");
            return sharedPreferences;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f25589a = new c();

        private c() {
        }

        public static final boolean a(Context context, String name) {
            kotlin.jvm.internal.m.e(context, "context");
            kotlin.jvm.internal.m.e(name, "name");
            return context.deleteSharedPreferences(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f25590a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f25591b;

        /* renamed from: d  reason: collision with root package name */
        int f25593d;

        d(e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f25591b = obj;
            this.f25593d |= Integer.MIN_VALUE;
            return a.this.a(null, this);
        }
    }

    private a(id.a aVar, Set set, Function2 function2, p pVar, Context context, String str) {
        xc.d a10;
        this.f25580a = function2;
        this.f25581b = pVar;
        this.f25582c = context;
        this.f25583d = str;
        a10 = f.a(aVar);
        this.f25584e = a10;
        this.f25585f = set == m0.b.a() ? null : w.n0(set);
    }

    private final void d(Context context, String str) {
        c.a(context, str);
    }

    private final SharedPreferences e() {
        return (SharedPreferences) this.f25584e.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
        if (r5.isEmpty() == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // j0.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(java.lang.Object r5, ad.e r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof m0.a.d
            if (r0 == 0) goto L13
            r0 = r6
            m0.a$d r0 = (m0.a.d) r0
            int r1 = r0.f25593d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f25593d = r1
            goto L18
        L13:
            m0.a$d r0 = new m0.a$d
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f25591b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f25593d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f25590a
            m0.a r5 = (m0.a) r5
            xc.m.b(r6)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            xc.m.b(r6)
            id.Function2 r6 = r4.f25580a
            r0.f25590a = r4
            r0.f25593d = r3
            java.lang.Object r6 = r6.invoke(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            r0 = 0
            if (r6 != 0) goto L54
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.b.a(r0)
            return r5
        L54:
            java.util.Set r6 = r5.f25585f
            if (r6 != 0) goto L6e
            android.content.SharedPreferences r5 = r5.e()
            java.util.Map r5 = r5.getAll()
            java.lang.String r6 = "sharedPrefs.all"
            kotlin.jvm.internal.m.d(r5, r6)
            boolean r5 = r5.isEmpty()
            if (r5 != 0) goto L6c
            goto L93
        L6c:
            r3 = r0
            goto L93
        L6e:
            android.content.SharedPreferences r5 = r5.e()
            boolean r1 = r6 instanceof java.util.Collection
            if (r1 == 0) goto L7d
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto L7d
            goto L6c
        L7d:
            java.util.Iterator r6 = r6.iterator()
        L81:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L6c
            java.lang.Object r1 = r6.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r1 = r5.contains(r1)
            if (r1 == 0) goto L81
        L93:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.b.a(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.a.a(java.lang.Object, ad.e):java.lang.Object");
    }

    @Override // j0.g
    public Object b(e eVar) {
        Context context;
        String str;
        SharedPreferences.Editor edit = e().edit();
        Set<String> set = this.f25585f;
        if (set == null) {
            edit.clear();
        } else {
            for (String str2 : set) {
                edit.remove(str2);
            }
        }
        if (edit.commit()) {
            if (e().getAll().isEmpty() && (context = this.f25582c) != null && (str = this.f25583d) != null) {
                d(context, str);
            }
            Set set2 = this.f25585f;
            if (set2 != null) {
                set2.clear();
            }
            return t.f32733a;
        }
        throw new IOException("Unable to delete migrated keys from SharedPreferences.");
    }

    @Override // j0.g
    public Object c(Object obj, e eVar) {
        return this.f25581b.e(new m0.c(e(), this.f25585f), obj, eVar);
    }

    public /* synthetic */ a(Context context, String str, Set set, Function2 function2, p pVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i10 & 4) != 0 ? m0.b.a() : set, (i10 & 8) != 0 ? new C0245a(null) : function2, pVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(Context context, String sharedPreferencesName, Set keysToMigrate, Function2 shouldRunMigration, p migrate) {
        this(new b(context, sharedPreferencesName), keysToMigrate, shouldRunMigration, migrate, context, sharedPreferencesName);
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(sharedPreferencesName, "sharedPreferencesName");
        kotlin.jvm.internal.m.e(keysToMigrate, "keysToMigrate");
        kotlin.jvm.internal.m.e(shouldRunMigration, "shouldRunMigration");
        kotlin.jvm.internal.m.e(migrate, "migrate");
    }
}
