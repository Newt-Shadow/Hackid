package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
/* loaded from: classes.dex */
public class n extends p implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    private Handler f2713a;

    /* renamed from: j  reason: collision with root package name */
    private boolean f2722j;

    /* renamed from: l  reason: collision with root package name */
    private Dialog f2724l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f2725m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f2726n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f2727o;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f2714b = new a();

    /* renamed from: c  reason: collision with root package name */
    private DialogInterface.OnCancelListener f2715c = new b();

    /* renamed from: d  reason: collision with root package name */
    private DialogInterface.OnDismissListener f2716d = new c();

    /* renamed from: e  reason: collision with root package name */
    private int f2717e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f2718f = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2719g = true;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2720h = true;

    /* renamed from: i  reason: collision with root package name */
    private int f2721i = -1;

    /* renamed from: k  reason: collision with root package name */
    private androidx.lifecycle.t f2723k = new d();

    /* renamed from: p  reason: collision with root package name */
    private boolean f2728p = false;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.f2716d.onDismiss(n.this.f2724l);
        }
    }

    /* loaded from: classes.dex */
    class b implements DialogInterface.OnCancelListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            if (n.this.f2724l != null) {
                n nVar = n.this;
                nVar.onCancel(nVar.f2724l);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (n.this.f2724l != null) {
                n nVar = n.this;
                nVar.onDismiss(nVar.f2724l);
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements androidx.lifecycle.t {
        d() {
        }

        @Override // androidx.lifecycle.t
        /* renamed from: b */
        public void a(androidx.lifecycle.m mVar) {
            if (mVar != null && n.this.f2720h) {
                View requireView = n.this.requireView();
                if (requireView.getParent() == null) {
                    if (n.this.f2724l != null) {
                        if (i0.J0(3)) {
                            Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + n.this.f2724l);
                        }
                        n.this.f2724l.setContentView(requireView);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
        }
    }

    /* loaded from: classes.dex */
    class e extends w {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w f2733a;

        e(w wVar) {
            this.f2733a = wVar;
        }

        @Override // androidx.fragment.app.w
        public View c(int i10) {
            if (this.f2733a.d()) {
                return this.f2733a.c(i10);
            }
            return n.this.s(i10);
        }

        @Override // androidx.fragment.app.w
        public boolean d() {
            if (!this.f2733a.d() && !n.this.t()) {
                return false;
            }
            return true;
        }
    }

    private void p(boolean z10, boolean z11, boolean z12) {
        if (this.f2726n) {
            return;
        }
        this.f2726n = true;
        this.f2727o = false;
        Dialog dialog = this.f2724l;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f2724l.dismiss();
            if (!z11) {
                if (Looper.myLooper() == this.f2713a.getLooper()) {
                    onDismiss(this.f2724l);
                } else {
                    this.f2713a.post(this.f2714b);
                }
            }
        }
        this.f2725m = true;
        if (this.f2721i >= 0) {
            if (z12) {
                getParentFragmentManager().f1(this.f2721i, 1);
            } else {
                getParentFragmentManager().d1(this.f2721i, 1, z10);
            }
            this.f2721i = -1;
            return;
        }
        q0 o10 = getParentFragmentManager().o();
        o10.m(true);
        o10.l(this);
        if (z12) {
            o10.h();
        } else if (z10) {
            o10.g();
        } else {
            o10.f();
        }
    }

    private void u(Bundle bundle) {
        if (this.f2720h && !this.f2728p) {
            try {
                this.f2722j = true;
                Dialog r10 = r(bundle);
                this.f2724l = r10;
                if (this.f2720h) {
                    w(r10, this.f2717e);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.f2724l.setOwnerActivity((Activity) context);
                    }
                    this.f2724l.setCancelable(this.f2719g);
                    this.f2724l.setOnCancelListener(this.f2715c);
                    this.f2724l.setOnDismissListener(this.f2716d);
                    this.f2728p = true;
                } else {
                    this.f2724l = null;
                }
            } finally {
                this.f2722j = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.p
    public w createFragmentContainer() {
        return new e(super.createFragmentContainer());
    }

    @Override // androidx.fragment.app.p
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.p
    public void onAttach(Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().observeForever(this.f2723k);
        if (!this.f2727o) {
            this.f2726n = false;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.p
    public void onCreate(Bundle bundle) {
        boolean z10;
        super.onCreate(bundle);
        this.f2713a = new Handler();
        if (this.mContainerId == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f2720h = z10;
        if (bundle != null) {
            this.f2717e = bundle.getInt("android:style", 0);
            this.f2718f = bundle.getInt("android:theme", 0);
            this.f2719g = bundle.getBoolean("android:cancelable", true);
            this.f2720h = bundle.getBoolean("android:showsDialog", this.f2720h);
            this.f2721i = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.p
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f2724l;
        if (dialog != null) {
            this.f2725m = true;
            dialog.setOnDismissListener(null);
            this.f2724l.dismiss();
            if (!this.f2726n) {
                onDismiss(this.f2724l);
            }
            this.f2724l = null;
            this.f2728p = false;
        }
    }

    @Override // androidx.fragment.app.p
    public void onDetach() {
        super.onDetach();
        if (!this.f2727o && !this.f2726n) {
            this.f2726n = true;
        }
        getViewLifecycleOwnerLiveData().removeObserver(this.f2723k);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f2725m) {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
            }
            p(true, true, false);
        }
    }

    @Override // androidx.fragment.app.p
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        if (this.f2720h && !this.f2722j) {
            u(bundle);
            if (i0.J0(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.f2724l;
            if (dialog != null) {
                return onGetLayoutInflater.cloneInContext(dialog.getContext());
            }
            return onGetLayoutInflater;
        }
        if (i0.J0(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.f2720h) {
                Log.d("FragmentManager", "mShowsDialog = false: " + str);
            } else {
                Log.d("FragmentManager", "mCreatingDialog = true: " + str);
            }
        }
        return onGetLayoutInflater;
    }

    @Override // androidx.fragment.app.p
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f2724l;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i10 = this.f2717e;
        if (i10 != 0) {
            bundle.putInt("android:style", i10);
        }
        int i11 = this.f2718f;
        if (i11 != 0) {
            bundle.putInt("android:theme", i11);
        }
        boolean z10 = this.f2719g;
        if (!z10) {
            bundle.putBoolean("android:cancelable", z10);
        }
        boolean z11 = this.f2720h;
        if (!z11) {
            bundle.putBoolean("android:showsDialog", z11);
        }
        int i12 = this.f2721i;
        if (i12 != -1) {
            bundle.putInt("android:backStackId", i12);
        }
    }

    @Override // androidx.fragment.app.p
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f2724l;
        if (dialog != null) {
            this.f2725m = false;
            dialog.show();
            View decorView = this.f2724l.getWindow().getDecorView();
            androidx.lifecycle.n0.a(decorView, this);
            androidx.lifecycle.o0.a(decorView, this);
            h1.g.a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.p
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f2724l;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.p
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.f2724l != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.f2724l.onRestoreInstanceState(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.p
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView == null && this.f2724l != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.f2724l.onRestoreInstanceState(bundle2);
        }
    }

    public int q() {
        return this.f2718f;
    }

    public Dialog r(Bundle bundle) {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new androidx.activity.r(requireContext(), q());
    }

    View s(int i10) {
        Dialog dialog = this.f2724l;
        if (dialog != null) {
            return dialog.findViewById(i10);
        }
        return null;
    }

    boolean t() {
        return this.f2728p;
    }

    public void v(boolean z10) {
        this.f2720h = z10;
    }

    public void w(Dialog dialog, int i10) {
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                Window window = dialog.getWindow();
                if (window != null) {
                    window.addFlags(24);
                }
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    public void x(i0 i0Var, String str) {
        this.f2726n = false;
        this.f2727o = true;
        q0 o10 = i0Var.o();
        o10.m(true);
        o10.d(this, str);
        o10.f();
    }
}
