package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import android.util.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.c0;
import o0.f;
/* loaded from: classes2.dex */
public final class SharedPreferencesPlugin implements FlutterPlugin, SharedPreferencesAsyncApi {
    private SharedPreferencesBackend backend;
    private Context context;
    private SharedPreferencesListEncoder listEncoder;

    public SharedPreferencesPlugin() {
        this.listEncoder = new ListEncoder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object dataStoreSetString(String str, String str2, ad.e eVar) {
        Object e10;
        f.a g10 = o0.h.g(str);
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.m.s("context");
            context = null;
        }
        Object a10 = o0.i.a(SharedPreferencesPluginKt.getSharedPreferencesDataStore(context), new SharedPreferencesPlugin$dataStoreSetString$2(g10, str2, null), eVar);
        e10 = bd.d.e();
        if (a10 == e10) {
            return a10;
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a3 -> B:32:0x00a6). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getPrefs(java.util.List<java.lang.String> r9, ad.e r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getPrefs$1
            if (r0 == 0) goto L13
            r0 = r10
            io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getPrefs$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getPrefs$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getPrefs$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getPrefs$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L58
            if (r2 == r4) goto L48
            if (r2 != r3) goto L40
            java.lang.Object r9 = r0.L$4
            o0.f$a r9 = (o0.f.a) r9
            java.lang.Object r2 = r0.L$3
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.L$2
            java.util.Map r4 = (java.util.Map) r4
            java.lang.Object r5 = r0.L$1
            java.util.Set r5 = (java.util.Set) r5
            java.lang.Object r6 = r0.L$0
            io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin r6 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin) r6
            xc.m.b(r10)
            goto La6
        L40:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L48:
            java.lang.Object r9 = r0.L$2
            java.util.Map r9 = (java.util.Map) r9
            java.lang.Object r2 = r0.L$1
            java.util.Set r2 = (java.util.Set) r2
            java.lang.Object r4 = r0.L$0
            io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin r4 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin) r4
            xc.m.b(r10)
            goto L7b
        L58:
            xc.m.b(r10)
            if (r9 == 0) goto L64
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.util.Set r9 = yc.m.o0(r9)
            goto L65
        L64:
            r9 = 0
        L65:
            r2 = r9
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap
            r9.<init>()
            r0.L$0 = r8
            r0.L$1 = r2
            r0.L$2 = r9
            r0.label = r4
            java.lang.Object r10 = r8.readAllKeys(r0)
            if (r10 != r1) goto L7a
            return r1
        L7a:
            r4 = r8
        L7b:
            java.util.Set r10 = (java.util.Set) r10
            if (r10 == 0) goto Lc1
            java.util.Iterator r10 = r10.iterator()
            r5 = r2
            r6 = r4
            r4 = r9
            r2 = r10
        L87:
            boolean r9 = r2.hasNext()
            if (r9 == 0) goto Lc0
            java.lang.Object r9 = r2.next()
            o0.f$a r9 = (o0.f.a) r9
            r0.L$0 = r6
            r0.L$1 = r5
            r0.L$2 = r4
            r0.L$3 = r2
            r0.L$4 = r9
            r0.label = r3
            java.lang.Object r10 = r6.getValueByKey(r9, r0)
            if (r10 != r1) goto La6
            return r1
        La6:
            java.lang.String r7 = r9.toString()
            boolean r7 = io.flutter.plugins.sharedpreferences.SharedPreferencesPluginKt.preferencesFilter(r7, r10, r5)
            if (r7 == 0) goto L87
            io.flutter.plugins.sharedpreferences.SharedPreferencesListEncoder r7 = r6.listEncoder
            java.lang.Object r10 = io.flutter.plugins.sharedpreferences.SharedPreferencesPluginKt.transformPref(r10, r7)
            if (r10 == 0) goto L87
            java.lang.String r9 = r9.toString()
            r4.put(r9, r10)
            goto L87
        Lc0:
            r9 = r4
        Lc1:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin.getPrefs(java.util.List, ad.e):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getValueByKey(final f.a aVar, ad.e eVar) {
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.m.s("context");
            context = null;
        }
        final wd.d data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
        return wd.f.n(new wd.d() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1

            /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2<T> implements wd.e {
                final /* synthetic */ f.a $key$inlined;
                final /* synthetic */ wd.e $this_unsafeFlow;

                @kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", l = {223}, m = "emit")
                /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(ad.e eVar) {
                        super(eVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(wd.e eVar, f.a aVar) {
                    this.$this_unsafeFlow = eVar;
                    this.$key$inlined = aVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // wd.e
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, ad.e r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = bd.b.e()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        xc.m.b(r6)
                        goto L47
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        xc.m.b(r6)
                        wd.e r6 = r4.$this_unsafeFlow
                        o0.f r5 = (o0.f) r5
                        o0.f$a r2 = r4.$key$inlined
                        java.lang.Object r5 = r5.b(r2)
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        xc.t r5 = xc.t.f32733a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getValueByKey$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, ad.e):java.lang.Object");
                }
            }

            @Override // wd.d
            public Object collect(wd.e eVar2, ad.e eVar3) {
                Object e10;
                Object collect = wd.d.this.collect(new AnonymousClass2(eVar2, aVar), eVar3);
                e10 = bd.d.e();
                if (collect == e10) {
                    return collect;
                }
                return xc.t.f32733a;
            }
        }, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readAllKeys(ad.e eVar) {
        Context context = this.context;
        if (context == null) {
            kotlin.jvm.internal.m.s("context");
            context = null;
        }
        final wd.d data = SharedPreferencesPluginKt.getSharedPreferencesDataStore(context).getData();
        return wd.f.n(new wd.d() { // from class: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1

            /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2<T> implements wd.e {
                final /* synthetic */ wd.e $this_unsafeFlow;

                @kotlin.coroutines.jvm.internal.f(c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2", f = "SharedPreferencesPlugin.kt", l = {223}, m = "emit")
                /* renamed from: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(ad.e eVar) {
                        super(eVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(wd.e eVar) {
                    this.$this_unsafeFlow = eVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // wd.e
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, ad.e r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1 r0 = (io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1 r0 = new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = bd.b.e()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        xc.m.b(r6)
                        goto L49
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        xc.m.b(r6)
                        wd.e r6 = r4.$this_unsafeFlow
                        o0.f r5 = (o0.f) r5
                        java.util.Map r5 = r5.a()
                        java.util.Set r5 = r5.keySet()
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L49
                        return r1
                    L49:
                        xc.t r5 = xc.t.f32733a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$readAllKeys$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, ad.e):java.lang.Object");
                }
            }

            @Override // wd.d
            public Object collect(wd.e eVar2, ad.e eVar3) {
                Object e10;
                Object collect = wd.d.this.collect(new AnonymousClass2(eVar2), eVar3);
                e10 = bd.d.e();
                if (collect == e10) {
                    return collect;
                }
                return xc.t.f32733a;
            }
        }, eVar);
    }

    private final void setUp(BinaryMessenger binaryMessenger, Context context) {
        this.context = context;
        try {
            SharedPreferencesAsyncApi.Companion.setUp(binaryMessenger, this, "data_store");
            this.backend = new SharedPreferencesBackend(binaryMessenger, context, this.listEncoder);
        } catch (Exception e10) {
            Log.e(SharedPreferencesPluginKt.TAG, "Received exception while setting up SharedPreferencesPlugin", e10);
        }
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void clear(List<String> list, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(options, "options");
        td.h.b(null, new SharedPreferencesPlugin$clear$1(this, list, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Map<String, Object> getAll(List<String> list, SharedPreferencesPigeonOptions options) {
        Object b10;
        kotlin.jvm.internal.m.e(options, "options");
        b10 = td.h.b(null, new SharedPreferencesPlugin$getAll$1(this, list, null), 1, null);
        return (Map) b10;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Boolean getBool(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        c0 c0Var = new c0();
        td.h.b(null, new SharedPreferencesPlugin$getBool$1(key, this, c0Var, null), 1, null);
        return (Boolean) c0Var.f24971a;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Double getDouble(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        c0 c0Var = new c0();
        td.h.b(null, new SharedPreferencesPlugin$getDouble$1(key, this, c0Var, null), 1, null);
        return (Double) c0Var.f24971a;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Long getInt(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        c0 c0Var = new c0();
        td.h.b(null, new SharedPreferencesPlugin$getInt$1(key, this, c0Var, null), 1, null);
        return (Long) c0Var.f24971a;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public List<String> getKeys(List<String> list, SharedPreferencesPigeonOptions options) {
        Object b10;
        List<String> k02;
        kotlin.jvm.internal.m.e(options, "options");
        b10 = td.h.b(null, new SharedPreferencesPlugin$getKeys$prefs$1(this, list, null), 1, null);
        k02 = yc.w.k0(((Map) b10).keySet());
        return k02;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public List<String> getPlatformEncodedStringList(String key, SharedPreferencesPigeonOptions options) {
        boolean H;
        boolean H2;
        List list;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        String string = getString(key, options);
        ArrayList arrayList = null;
        if (string != null) {
            H = rd.y.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null);
            if (!H) {
                H2 = rd.y.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null);
                if (H2 && (list = (List) SharedPreferencesPluginKt.transformPref(string, this.listEncoder)) != null) {
                    arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (obj instanceof String) {
                            arrayList.add(obj);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public String getString(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        c0 c0Var = new c0();
        td.h.b(null, new SharedPreferencesPlugin$getString$1(key, this, c0Var, null), 1, null);
        return (String) c0Var.f24971a;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public StringListResult getStringList(String key, SharedPreferencesPigeonOptions options) {
        boolean H;
        boolean H2;
        StringListResult stringListResult;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        String string = getString(key, options);
        if (string != null) {
            H = rd.y.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null);
            if (!H) {
                H2 = rd.y.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null);
                if (H2) {
                    stringListResult = new StringListResult(null, StringListLookupResultType.PLATFORM_ENCODED);
                } else {
                    stringListResult = new StringListResult(null, StringListLookupResultType.UNEXPECTED_STRING);
                }
                return stringListResult;
            }
            return new StringListResult(string, StringListLookupResultType.JSON_ENCODED);
        }
        return null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        kotlin.jvm.internal.m.d(binaryMessenger, "getBinaryMessenger(...)");
        Context applicationContext = binding.getApplicationContext();
        kotlin.jvm.internal.m.d(applicationContext, "getApplicationContext(...)");
        setUp(binaryMessenger, applicationContext);
        new LegacySharedPreferencesPlugin().onAttachedToEngine(binding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        SharedPreferencesAsyncApi.Companion companion = SharedPreferencesAsyncApi.Companion;
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        kotlin.jvm.internal.m.d(binaryMessenger, "getBinaryMessenger(...)");
        companion.setUp(binaryMessenger, null, "data_store");
        SharedPreferencesBackend sharedPreferencesBackend = this.backend;
        if (sharedPreferencesBackend != null) {
            sharedPreferencesBackend.tearDown();
        }
        this.backend = null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setBool(String key, boolean z10, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        td.h.b(null, new SharedPreferencesPlugin$setBool$1(key, this, z10, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setDeprecatedStringList(String key, List<String> value, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(options, "options");
        String encode = this.listEncoder.encode(value);
        td.h.b(null, new SharedPreferencesPlugin$setDeprecatedStringList$1(this, key, SharedPreferencesPluginKt.LIST_PREFIX + encode, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setDouble(String key, double d10, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        td.h.b(null, new SharedPreferencesPlugin$setDouble$1(key, this, d10, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setEncodedStringList(String key, String value, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(options, "options");
        td.h.b(null, new SharedPreferencesPlugin$setEncodedStringList$1(this, key, value, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setInt(String key, long j10, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        td.h.b(null, new SharedPreferencesPlugin$setInt$1(key, this, j10, null), 1, null);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setString(String key, String value, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(options, "options");
        td.h.b(null, new SharedPreferencesPlugin$setString$1(this, key, value, null), 1, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesPlugin(SharedPreferencesListEncoder listEncoder) {
        this();
        kotlin.jvm.internal.m.e(listEncoder, "listEncoder");
        this.listEncoder = listEncoder;
    }
}
