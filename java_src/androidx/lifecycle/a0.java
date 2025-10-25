package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import h1.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: f  reason: collision with root package name */
    public static final a f2930f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final Class[] f2931g = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a  reason: collision with root package name */
    private final Map f2932a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f2933b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f2934c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f2935d;

    /* renamed from: e  reason: collision with root package name */
    private final d.c f2936e;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a0 a(Bundle bundle, Bundle bundle2) {
            boolean z10;
            if (bundle == null) {
                if (bundle2 == null) {
                    return new a0();
                }
                HashMap hashMap = new HashMap();
                for (String key : bundle2.keySet()) {
                    kotlin.jvm.internal.m.d(key, "key");
                    hashMap.put(key, bundle2.get(key));
                }
                return new a0(hashMap);
            }
            ClassLoader classLoader = a0.class.getClassLoader();
            kotlin.jvm.internal.m.b(classLoader);
            bundle.setClassLoader(classLoader);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if (parcelableArrayList != null && parcelableArrayList2 != null && parcelableArrayList.size() == parcelableArrayList2.size()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int size = parcelableArrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj = parcelableArrayList.get(i10);
                    kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.String");
                    linkedHashMap.put((String) obj, parcelableArrayList2.get(i10));
                }
                return new a0(linkedHashMap);
            }
            throw new IllegalStateException("Invalid bundle passed as restored state".toString());
        }

        public final boolean b(Object obj) {
            Class[] clsArr;
            if (obj == null) {
                return true;
            }
            for (Class cls : a0.f2931g) {
                kotlin.jvm.internal.m.b(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    public a0(Map initialState) {
        kotlin.jvm.internal.m.e(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f2932a = linkedHashMap;
        this.f2933b = new LinkedHashMap();
        this.f2934c = new LinkedHashMap();
        this.f2935d = new LinkedHashMap();
        this.f2936e = new d.c() { // from class: androidx.lifecycle.z
            @Override // h1.d.c
            public final Bundle a() {
                Bundle d10;
                d10 = a0.d(a0.this);
                return d10;
            }
        };
        linkedHashMap.putAll(initialState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle d(a0 this$0) {
        Map q10;
        kotlin.jvm.internal.m.e(this$0, "this$0");
        q10 = yc.h0.q(this$0.f2933b);
        for (Map.Entry entry : q10.entrySet()) {
            this$0.e((String) entry.getKey(), ((d.c) entry.getValue()).a());
        }
        Set<String> keySet = this$0.f2932a.keySet();
        ArrayList arrayList = new ArrayList(keySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : keySet) {
            arrayList.add(str);
            arrayList2.add(this$0.f2932a.get(str));
        }
        return z.d.a(xc.q.a("keys", arrayList), xc.q.a("values", arrayList2));
    }

    public final d.c c() {
        return this.f2936e;
    }

    public final void e(String key, Object obj) {
        s sVar;
        kotlin.jvm.internal.m.e(key, "key");
        if (f2930f.b(obj)) {
            Object obj2 = this.f2934c.get(key);
            if (obj2 instanceof s) {
                sVar = (s) obj2;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                sVar.setValue(obj);
            } else {
                this.f2932a.put(key, obj);
            }
            wd.p pVar = (wd.p) this.f2935d.get(key);
            if (pVar != null) {
                pVar.setValue(obj);
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't put value with type ");
        kotlin.jvm.internal.m.b(obj);
        sb2.append(obj.getClass());
        sb2.append(" into saved state");
        throw new IllegalArgumentException(sb2.toString());
    }

    public a0() {
        this.f2932a = new LinkedHashMap();
        this.f2933b = new LinkedHashMap();
        this.f2934c = new LinkedHashMap();
        this.f2935d = new LinkedHashMap();
        this.f2936e = new d.c() { // from class: androidx.lifecycle.z
            @Override // h1.d.c
            public final Bundle a() {
                Bundle d10;
                d10 = a0.d(a0.this);
                return d10;
            }
        };
    }
}
