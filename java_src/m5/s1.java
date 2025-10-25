package m5;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class s1 extends Fragment implements i {

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap f25875b = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final u1 f25876a = new u1();

    public static s1 d(Activity activity) {
        s1 s1Var;
        WeakHashMap weakHashMap = f25875b;
        WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
        if (weakReference != null && (s1Var = (s1) weakReference.get()) != null) {
            return s1Var;
        }
        try {
            s1 s1Var2 = (s1) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (s1Var2 == null || s1Var2.isRemoving()) {
                s1Var2 = new s1();
                activity.getFragmentManager().beginTransaction().add(s1Var2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(activity, new WeakReference(s1Var2));
            return s1Var2;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e10);
        }
    }

    @Override // m5.i
    public final h a(String str, Class cls) {
        return this.f25876a.c(str, cls);
    }

    @Override // m5.i
    public final Activity b() {
        return getActivity();
    }

    @Override // m5.i
    public final void c(String str, h hVar) {
        this.f25876a.d(str, hVar);
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.f25876a.e(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.f25876a.f(i10, i11, intent);
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f25876a.g(bundle);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f25876a.h();
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f25876a.i();
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f25876a.j(bundle);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f25876a.k();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f25876a.l();
    }
}
