package f;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.i;
import androidx.lifecycle.k;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import qd.j;
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: h  reason: collision with root package name */
    private static final b f15547h = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Map f15548a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map f15549b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map f15550c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final List f15551d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final transient Map f15552e = new LinkedHashMap();

    /* renamed from: f  reason: collision with root package name */
    private final Map f15553f = new LinkedHashMap();

    /* renamed from: g  reason: collision with root package name */
    private final Bundle f15554g = new Bundle();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final f.b f15555a;

        /* renamed from: b  reason: collision with root package name */
        private final g.a f15556b;

        public a(f.b callback, g.a contract) {
            m.e(callback, "callback");
            m.e(contract, "contract");
            this.f15555a = callback;
            this.f15556b = contract;
        }

        public final f.b a() {
            return this.f15555a;
        }

        public final g.a b() {
            return this.f15556b;
        }
    }

    /* loaded from: classes.dex */
    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final i f15557a;

        /* renamed from: b  reason: collision with root package name */
        private final List f15558b;

        public c(i lifecycle) {
            m.e(lifecycle, "lifecycle");
            this.f15557a = lifecycle;
            this.f15558b = new ArrayList();
        }

        public final void a(k observer) {
            m.e(observer, "observer");
            this.f15557a.a(observer);
            this.f15558b.add(observer);
        }

        public final void b() {
            for (k kVar : this.f15558b) {
                this.f15557a.c(kVar);
            }
            this.f15558b.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final d f15559e = new d();

        d() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Integer invoke() {
            return Integer.valueOf(md.c.f26021a.b(2147418112) + 65536);
        }
    }

    /* renamed from: f.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0162e extends f.c {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15561b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g.a f15562c;

        C0162e(String str, g.a aVar) {
            this.f15561b = str;
            this.f15562c = aVar;
        }

        @Override // f.c
        public void b(Object obj, androidx.core.app.c cVar) {
            Object obj2 = e.this.f15549b.get(this.f15561b);
            g.a aVar = this.f15562c;
            if (obj2 != null) {
                int intValue = ((Number) obj2).intValue();
                e.this.f15551d.add(this.f15561b);
                try {
                    e.this.i(intValue, this.f15562c, obj, cVar);
                    return;
                } catch (Exception e10) {
                    e.this.f15551d.remove(this.f15561b);
                    throw e10;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override // f.c
        public void c() {
            e.this.p(this.f15561b);
        }
    }

    /* loaded from: classes.dex */
    public static final class f extends f.c {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15564b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g.a f15565c;

        f(String str, g.a aVar) {
            this.f15564b = str;
            this.f15565c = aVar;
        }

        @Override // f.c
        public void b(Object obj, androidx.core.app.c cVar) {
            Object obj2 = e.this.f15549b.get(this.f15564b);
            g.a aVar = this.f15565c;
            if (obj2 != null) {
                int intValue = ((Number) obj2).intValue();
                e.this.f15551d.add(this.f15564b);
                try {
                    e.this.i(intValue, this.f15565c, obj, cVar);
                    return;
                } catch (Exception e10) {
                    e.this.f15551d.remove(this.f15564b);
                    throw e10;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override // f.c
        public void c() {
            e.this.p(this.f15564b);
        }
    }

    private final void d(int i10, String str) {
        this.f15548a.put(Integer.valueOf(i10), str);
        this.f15549b.put(str, Integer.valueOf(i10));
    }

    private final void g(String str, int i10, Intent intent, a aVar) {
        f.b bVar;
        if (aVar != null) {
            bVar = aVar.a();
        } else {
            bVar = null;
        }
        if (bVar != null && this.f15551d.contains(str)) {
            aVar.a().a(aVar.b().c(i10, intent));
            this.f15551d.remove(str);
            return;
        }
        this.f15553f.remove(str);
        this.f15554g.putParcelable(str, new f.a(i10, intent));
    }

    private final int h() {
        qd.e<Number> d10;
        d10 = j.d(d.f15559e);
        for (Number number : d10) {
            if (!this.f15548a.containsKey(Integer.valueOf(number.intValue()))) {
                return number.intValue();
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(e eVar, String str, f.b bVar, g.a aVar, androidx.lifecycle.m mVar, i.a event) {
        m.e(mVar, "<anonymous parameter 0>");
        m.e(event, "event");
        if (i.a.ON_START == event) {
            eVar.f15552e.put(str, new a(bVar, aVar));
            if (eVar.f15553f.containsKey(str)) {
                Object obj = eVar.f15553f.get(str);
                eVar.f15553f.remove(str);
                bVar.a(obj);
            }
            f.a aVar2 = (f.a) z.c.a(eVar.f15554g, str, f.a.class);
            if (aVar2 != null) {
                eVar.f15554g.remove(str);
                bVar.a(aVar.c(aVar2.b(), aVar2.a()));
            }
        } else if (i.a.ON_STOP == event) {
            eVar.f15552e.remove(str);
        } else if (i.a.ON_DESTROY == event) {
            eVar.p(str);
        }
    }

    private final void o(String str) {
        if (((Integer) this.f15549b.get(str)) != null) {
            return;
        }
        d(h(), str);
    }

    public final boolean e(int i10, int i11, Intent intent) {
        String str = (String) this.f15548a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        g(str, i11, intent, (a) this.f15552e.get(str));
        return true;
    }

    public final boolean f(int i10, Object obj) {
        f.b bVar;
        String str = (String) this.f15548a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        a aVar = (a) this.f15552e.get(str);
        if (aVar != null) {
            bVar = aVar.a();
        } else {
            bVar = null;
        }
        if (bVar == null) {
            this.f15554g.remove(str);
            this.f15553f.put(str, obj);
            return true;
        }
        f.b a10 = aVar.a();
        m.c(a10, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>");
        if (this.f15551d.remove(str)) {
            a10.a(obj);
            return true;
        }
        return true;
    }

    public abstract void i(int i10, g.a aVar, Object obj, androidx.core.app.c cVar);

    public final void j(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList != null && integerArrayList != null) {
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            if (stringArrayList2 != null) {
                this.f15551d.addAll(stringArrayList2);
            }
            Bundle bundle2 = bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
            if (bundle2 != null) {
                this.f15554g.putAll(bundle2);
            }
            int size = stringArrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                String str = stringArrayList.get(i10);
                if (this.f15549b.containsKey(str)) {
                    Integer num = (Integer) this.f15549b.remove(str);
                    if (!this.f15554g.containsKey(str)) {
                        g0.b(this.f15548a).remove(num);
                    }
                }
                Integer num2 = integerArrayList.get(i10);
                m.d(num2, "rcs[i]");
                int intValue = num2.intValue();
                String str2 = stringArrayList.get(i10);
                m.d(str2, "keys[i]");
                d(intValue, str2);
            }
        }
    }

    public final void k(Bundle outState) {
        m.e(outState, "outState");
        outState.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f15549b.values()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f15549b.keySet()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f15551d));
        outState.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(this.f15554g));
    }

    public final f.c l(final String key, androidx.lifecycle.m lifecycleOwner, final g.a contract, final f.b callback) {
        m.e(key, "key");
        m.e(lifecycleOwner, "lifecycleOwner");
        m.e(contract, "contract");
        m.e(callback, "callback");
        i lifecycle = lifecycleOwner.getLifecycle();
        if (!lifecycle.b().b(i.b.STARTED)) {
            o(key);
            c cVar = (c) this.f15550c.get(key);
            if (cVar == null) {
                cVar = new c(lifecycle);
            }
            cVar.a(new k() { // from class: f.d
                @Override // androidx.lifecycle.k
                public final void a(androidx.lifecycle.m mVar, i.a aVar) {
                    e.n(e.this, key, callback, contract, mVar, aVar);
                }
            });
            this.f15550c.put(key, cVar);
            return new C0162e(key, contract);
        }
        throw new IllegalStateException(("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.").toString());
    }

    public final f.c m(String key, g.a contract, f.b callback) {
        m.e(key, "key");
        m.e(contract, "contract");
        m.e(callback, "callback");
        o(key);
        this.f15552e.put(key, new a(callback, contract));
        if (this.f15553f.containsKey(key)) {
            Object obj = this.f15553f.get(key);
            this.f15553f.remove(key);
            callback.a(obj);
        }
        f.a aVar = (f.a) z.c.a(this.f15554g, key, f.a.class);
        if (aVar != null) {
            this.f15554g.remove(key);
            callback.a(contract.c(aVar.b(), aVar.a()));
        }
        return new f(key, contract);
    }

    public final void p(String key) {
        Integer num;
        m.e(key, "key");
        if (!this.f15551d.contains(key) && (num = (Integer) this.f15549b.remove(key)) != null) {
            this.f15548a.remove(num);
        }
        this.f15552e.remove(key);
        if (this.f15553f.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + this.f15553f.get(key));
            this.f15553f.remove(key);
        }
        if (this.f15554g.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + ((f.a) z.c.a(this.f15554g, key, f.a.class)));
            this.f15554g.remove(key);
        }
        c cVar = (c) this.f15550c.get(key);
        if (cVar != null) {
            cVar.b();
            this.f15550c.remove(key);
        }
    }
}
