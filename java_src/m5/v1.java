package m5;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class v1 extends androidx.fragment.app.p implements i {

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap f25900b = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final u1 f25901a = new u1();

    public static v1 m(androidx.fragment.app.u uVar) {
        v1 v1Var;
        WeakHashMap weakHashMap = f25900b;
        WeakReference weakReference = (WeakReference) weakHashMap.get(uVar);
        if (weakReference != null && (v1Var = (v1) weakReference.get()) != null) {
            return v1Var;
        }
        try {
            v1 v1Var2 = (v1) uVar.getSupportFragmentManager().j0("SLifecycleFragmentImpl");
            if (v1Var2 == null || v1Var2.isRemoving()) {
                v1Var2 = new v1();
                uVar.getSupportFragmentManager().o().d(v1Var2, "SLifecycleFragmentImpl").g();
            }
            weakHashMap.put(uVar, new WeakReference(v1Var2));
            return v1Var2;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e10);
        }
    }

    @Override // m5.i
    public final h a(String str, Class cls) {
        return this.f25901a.c(str, cls);
    }

    @Override // m5.i
    public final Activity b() {
        return getActivity();
    }

    @Override // m5.i
    public final void c(String str, h hVar) {
        this.f25901a.d(str, hVar);
    }

    @Override // androidx.fragment.app.p
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.f25901a.e(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.fragment.app.p
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.f25901a.f(i10, i11, intent);
    }

    @Override // androidx.fragment.app.p
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f25901a.g(bundle);
    }

    @Override // androidx.fragment.app.p
    public final void onDestroy() {
        super.onDestroy();
        this.f25901a.h();
    }

    @Override // androidx.fragment.app.p
    public final void onResume() {
        super.onResume();
        this.f25901a.i();
    }

    @Override // androidx.fragment.app.p
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f25901a.j(bundle);
    }

    @Override // androidx.fragment.app.p
    public final void onStart() {
        super.onStart();
        this.f25901a.k();
    }

    @Override // androidx.fragment.app.p
    public final void onStop() {
        super.onStop();
        this.f25901a.l();
    }
}
