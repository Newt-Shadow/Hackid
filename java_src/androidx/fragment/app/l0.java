package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.k0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l0 extends androidx.lifecycle.j0 {

    /* renamed from: i  reason: collision with root package name */
    private static final k0.c f2703i = new a();

    /* renamed from: e  reason: collision with root package name */
    private final boolean f2707e;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap f2704b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap f2705c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final HashMap f2706d = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private boolean f2708f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2709g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2710h = false;

    /* loaded from: classes.dex */
    class a implements k0.c {
        a() {
        }

        @Override // androidx.lifecycle.k0.c
        public androidx.lifecycle.j0 a(Class cls) {
            return new l0(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(boolean z10) {
        this.f2707e = z10;
    }

    private void h(String str, boolean z10) {
        l0 l0Var = (l0) this.f2705c.get(str);
        if (l0Var != null) {
            if (z10) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(l0Var.f2705c.keySet());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    l0Var.g((String) it.next(), true);
                }
            }
            l0Var.d();
            this.f2705c.remove(str);
        }
        androidx.lifecycle.l0 l0Var2 = (androidx.lifecycle.l0) this.f2706d.get(str);
        if (l0Var2 != null) {
            l0Var2.a();
            this.f2706d.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 k(androidx.lifecycle.l0 l0Var) {
        return (l0) new androidx.lifecycle.k0(l0Var, f2703i).a(l0.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.j0
    public void d() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f2708f = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(p pVar) {
        if (this.f2710h) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.f2704b.containsKey(pVar.mWho)) {
        } else {
            this.f2704b.put(pVar.mWho, pVar);
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + pVar);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l0.class != obj.getClass()) {
            return false;
        }
        l0 l0Var = (l0) obj;
        if (this.f2704b.equals(l0Var.f2704b) && this.f2705c.equals(l0Var.f2705c) && this.f2706d.equals(l0Var.f2706d)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(p pVar, boolean z10) {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + pVar);
        }
        h(pVar.mWho, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(String str, boolean z10) {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
        }
        h(str, z10);
    }

    public int hashCode() {
        return (((this.f2704b.hashCode() * 31) + this.f2705c.hashCode()) * 31) + this.f2706d.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p i(String str) {
        return (p) this.f2704b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0 j(p pVar) {
        l0 l0Var = (l0) this.f2705c.get(pVar.mWho);
        if (l0Var == null) {
            l0 l0Var2 = new l0(this.f2707e);
            this.f2705c.put(pVar.mWho, l0Var2);
            return l0Var2;
        }
        return l0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection l() {
        return new ArrayList(this.f2704b.values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.lifecycle.l0 m(p pVar) {
        androidx.lifecycle.l0 l0Var = (androidx.lifecycle.l0) this.f2706d.get(pVar.mWho);
        if (l0Var == null) {
            androidx.lifecycle.l0 l0Var2 = new androidx.lifecycle.l0();
            this.f2706d.put(pVar.mWho, l0Var2);
            return l0Var2;
        }
        return l0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        return this.f2708f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(p pVar) {
        boolean z10;
        if (this.f2710h) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if (this.f2704b.remove(pVar.mWho) != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 && i0.J0(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + pVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(boolean z10) {
        this.f2710h = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q(p pVar) {
        if (!this.f2704b.containsKey(pVar.mWho)) {
            return true;
        }
        if (this.f2707e) {
            return this.f2708f;
        }
        return !this.f2709g;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FragmentManagerViewModel{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} Fragments (");
        Iterator it = this.f2704b.values().iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") Child Non Config (");
        Iterator it2 = this.f2705c.keySet().iterator();
        while (it2.hasNext()) {
            sb2.append((String) it2.next());
            if (it2.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") ViewModelStores (");
        Iterator it3 = this.f2706d.keySet().iterator();
        while (it3.hasNext()) {
            sb2.append((String) it3.next());
            if (it3.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(')');
        return sb2.toString();
    }
}
