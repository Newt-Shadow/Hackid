package androidx.fragment.app;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p0 {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f2797a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap f2798b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap f2799c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private l0 f2800d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(l0 l0Var) {
        this.f2800d = l0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle B(String str, Bundle bundle) {
        if (bundle != null) {
            return (Bundle) this.f2799c.put(str, bundle);
        }
        return (Bundle) this.f2799c.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(p pVar) {
        if (!this.f2797a.contains(pVar)) {
            synchronized (this.f2797a) {
                this.f2797a.add(pVar);
            }
            pVar.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f2798b.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(String str) {
        if (this.f2798b.get(str) != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i10) {
        for (o0 o0Var : this.f2798b.values()) {
            if (o0Var != null) {
                o0Var.s(i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f2798b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (o0 o0Var : this.f2798b.values()) {
                printWriter.print(str);
                if (o0Var != null) {
                    p k10 = o0Var.k();
                    printWriter.println(k10);
                    k10.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f2797a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size; i10++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(((p) this.f2797a.get(i10)).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p f(String str) {
        o0 o0Var = (o0) this.f2798b.get(str);
        if (o0Var != null) {
            return o0Var.k();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p g(int i10) {
        for (int size = this.f2797a.size() - 1; size >= 0; size--) {
            p pVar = (p) this.f2797a.get(size);
            if (pVar != null && pVar.mFragmentId == i10) {
                return pVar;
            }
        }
        for (o0 o0Var : this.f2798b.values()) {
            if (o0Var != null) {
                p k10 = o0Var.k();
                if (k10.mFragmentId == i10) {
                    return k10;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p h(String str) {
        if (str != null) {
            for (int size = this.f2797a.size() - 1; size >= 0; size--) {
                p pVar = (p) this.f2797a.get(size);
                if (pVar != null && str.equals(pVar.mTag)) {
                    return pVar;
                }
            }
        }
        if (str != null) {
            for (o0 o0Var : this.f2798b.values()) {
                if (o0Var != null) {
                    p k10 = o0Var.k();
                    if (str.equals(k10.mTag)) {
                        return k10;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p i(String str) {
        p findFragmentByWho;
        for (o0 o0Var : this.f2798b.values()) {
            if (o0Var != null && (findFragmentByWho = o0Var.k().findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(p pVar) {
        View view;
        View view2;
        ViewGroup viewGroup = pVar.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int indexOf = this.f2797a.indexOf(pVar);
        for (int i10 = indexOf - 1; i10 >= 0; i10--) {
            p pVar2 = (p) this.f2797a.get(i10);
            if (pVar2.mContainer == viewGroup && (view2 = pVar2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            indexOf++;
            if (indexOf >= this.f2797a.size()) {
                return -1;
            }
            p pVar3 = (p) this.f2797a.get(indexOf);
            if (pVar3.mContainer == viewGroup && (view = pVar3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List k() {
        ArrayList arrayList = new ArrayList();
        for (o0 o0Var : this.f2798b.values()) {
            if (o0Var != null) {
                arrayList.add(o0Var);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List l() {
        ArrayList arrayList = new ArrayList();
        for (o0 o0Var : this.f2798b.values()) {
            if (o0Var != null) {
                arrayList.add(o0Var.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap m() {
        return this.f2799c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0 n(String str) {
        return (o0) this.f2798b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List o() {
        ArrayList arrayList;
        if (this.f2797a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2797a) {
            arrayList = new ArrayList(this.f2797a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0 p() {
        return this.f2800d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle q(String str) {
        return (Bundle) this.f2799c.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(o0 o0Var) {
        p k10 = o0Var.k();
        if (c(k10.mWho)) {
            return;
        }
        this.f2798b.put(k10.mWho, o0Var);
        if (k10.mRetainInstanceChangedWhileDetached) {
            if (k10.mRetainInstance) {
                this.f2800d.e(k10);
            } else {
                this.f2800d.o(k10);
            }
            k10.mRetainInstanceChangedWhileDetached = false;
        }
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + k10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(o0 o0Var) {
        p k10 = o0Var.k();
        if (k10.mRetainInstance) {
            this.f2800d.o(k10);
        }
        if (this.f2798b.get(k10.mWho) == o0Var && ((o0) this.f2798b.put(k10.mWho, null)) != null && i0.J0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + k10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        boolean z10;
        Iterator it = this.f2797a.iterator();
        while (it.hasNext()) {
            o0 o0Var = (o0) this.f2798b.get(((p) it.next()).mWho);
            if (o0Var != null) {
                o0Var.m();
            }
        }
        for (o0 o0Var2 : this.f2798b.values()) {
            if (o0Var2 != null) {
                o0Var2.m();
                p k10 = o0Var2.k();
                if (k10.mRemoving && !k10.isInBackStack()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    if (k10.mBeingSaved && !this.f2799c.containsKey(k10.mWho)) {
                        B(k10.mWho, o0Var2.q());
                    }
                    s(o0Var2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(p pVar) {
        synchronized (this.f2797a) {
            this.f2797a.remove(pVar);
        }
        pVar.mAdded = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        this.f2798b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(List list) {
        this.f2797a.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                p f10 = f(str);
                if (f10 != null) {
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + f10);
                    }
                    a(f10);
                } else {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(HashMap hashMap) {
        this.f2799c.clear();
        this.f2799c.putAll(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList y() {
        ArrayList arrayList = new ArrayList(this.f2798b.size());
        for (o0 o0Var : this.f2798b.values()) {
            if (o0Var != null) {
                p k10 = o0Var.k();
                B(k10.mWho, o0Var.q());
                arrayList.add(k10.mWho);
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Saved state of " + k10 + ": " + k10.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList z() {
        synchronized (this.f2797a) {
            if (this.f2797a.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList(this.f2797a.size());
            Iterator it = this.f2797a.iterator();
            while (it.hasNext()) {
                p pVar = (p) it.next();
                arrayList.add(pVar.mWho);
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + pVar.mWho + "): " + pVar);
                }
            }
            return arrayList;
        }
    }
}
