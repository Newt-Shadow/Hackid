package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.core.app.b;
import androidx.lifecycle.i;
import h1.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class u extends androidx.activity.j implements b.e {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    boolean mResumed;
    final y mFragments = y.b(new a());
    final androidx.lifecycle.n mFragmentLifecycleRegistry = new androidx.lifecycle.n(this);
    boolean mStopped = true;

    /* loaded from: classes.dex */
    class a extends a0 implements androidx.core.content.c, androidx.core.content.d, androidx.core.app.q, androidx.core.app.r, androidx.lifecycle.m0, androidx.activity.y, f.f, h1.f, m0, d0.w {
        public a() {
            super(u.this);
        }

        @Override // androidx.fragment.app.m0
        public void a(i0 i0Var, p pVar) {
            u.this.onAttachFragment(pVar);
        }

        @Override // d0.w
        public void addMenuProvider(d0.b0 b0Var) {
            u.this.addMenuProvider(b0Var);
        }

        @Override // androidx.core.content.c
        public void addOnConfigurationChangedListener(c0.a aVar) {
            u.this.addOnConfigurationChangedListener(aVar);
        }

        @Override // androidx.core.app.q
        public void addOnMultiWindowModeChangedListener(c0.a aVar) {
            u.this.addOnMultiWindowModeChangedListener(aVar);
        }

        @Override // androidx.core.app.r
        public void addOnPictureInPictureModeChangedListener(c0.a aVar) {
            u.this.addOnPictureInPictureModeChangedListener(aVar);
        }

        @Override // androidx.core.content.d
        public void addOnTrimMemoryListener(c0.a aVar) {
            u.this.addOnTrimMemoryListener(aVar);
        }

        @Override // androidx.fragment.app.w
        public View c(int i10) {
            return u.this.findViewById(i10);
        }

        @Override // androidx.fragment.app.w
        public boolean d() {
            Window window = u.this.getWindow();
            if (window != null && window.peekDecorView() != null) {
                return true;
            }
            return false;
        }

        @Override // f.f
        public f.e getActivityResultRegistry() {
            return u.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.m
        public androidx.lifecycle.i getLifecycle() {
            return u.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.y
        public androidx.activity.w getOnBackPressedDispatcher() {
            return u.this.getOnBackPressedDispatcher();
        }

        @Override // h1.f
        public h1.d getSavedStateRegistry() {
            return u.this.getSavedStateRegistry();
        }

        @Override // androidx.lifecycle.m0
        public androidx.lifecycle.l0 getViewModelStore() {
            return u.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.a0
        public void i(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            u.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.a0
        public LayoutInflater k() {
            return u.this.getLayoutInflater().cloneInContext(u.this);
        }

        @Override // androidx.fragment.app.a0
        public boolean m(String str) {
            return androidx.core.app.b.y(u.this, str);
        }

        @Override // androidx.fragment.app.a0
        public void p() {
            q();
        }

        public void q() {
            u.this.invalidateMenu();
        }

        @Override // androidx.fragment.app.a0
        /* renamed from: r */
        public u j() {
            return u.this;
        }

        @Override // d0.w
        public void removeMenuProvider(d0.b0 b0Var) {
            u.this.removeMenuProvider(b0Var);
        }

        @Override // androidx.core.content.c
        public void removeOnConfigurationChangedListener(c0.a aVar) {
            u.this.removeOnConfigurationChangedListener(aVar);
        }

        @Override // androidx.core.app.q
        public void removeOnMultiWindowModeChangedListener(c0.a aVar) {
            u.this.removeOnMultiWindowModeChangedListener(aVar);
        }

        @Override // androidx.core.app.r
        public void removeOnPictureInPictureModeChangedListener(c0.a aVar) {
            u.this.removeOnPictureInPictureModeChangedListener(aVar);
        }

        @Override // androidx.core.content.d
        public void removeOnTrimMemoryListener(c0.a aVar) {
            u.this.removeOnTrimMemoryListener(aVar);
        }
    }

    public u() {
        u();
    }

    private void u() {
        getSavedStateRegistry().h(LIFECYCLE_TAG, new d.c() { // from class: androidx.fragment.app.q
            @Override // h1.d.c
            public final Bundle a() {
                Bundle v10;
                v10 = u.this.v();
                return v10;
            }
        });
        addOnConfigurationChangedListener(new c0.a() { // from class: androidx.fragment.app.r
            @Override // c0.a
            public final void accept(Object obj) {
                u.this.w((Configuration) obj);
            }
        });
        addOnNewIntentListener(new c0.a() { // from class: androidx.fragment.app.s
            @Override // c0.a
            public final void accept(Object obj) {
                u.this.x((Intent) obj);
            }
        });
        addOnContextAvailableListener(new e.b() { // from class: androidx.fragment.app.t
            @Override // e.b
            public final void a(Context context) {
                u.this.y(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle v() {
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.h(i.a.ON_STOP);
        return new Bundle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(Configuration configuration) {
        this.mFragments.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(Intent intent) {
        this.mFragments.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(Context context) {
        this.mFragments.a(null);
    }

    private static boolean z(i0 i0Var, i.b bVar) {
        boolean z10 = false;
        for (p pVar : i0Var.v0()) {
            if (pVar != null) {
                if (pVar.getHost() != null) {
                    z10 |= z(pVar.getChildFragmentManager(), bVar);
                }
                u0 u0Var = pVar.mViewLifecycleOwner;
                if (u0Var != null && u0Var.getLifecycle().b().b(i.b.STARTED)) {
                    pVar.mViewLifecycleOwner.f(bVar);
                    z10 = true;
                }
                if (pVar.mLifecycleRegistry.b().b(i.b.STARTED)) {
                    pVar.mLifecycleRegistry.m(bVar);
                    z10 = true;
                }
            }
        }
        return z10;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.n(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (!shouldDumpInternalState(strArr)) {
            return;
        }
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            androidx.loader.app.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.l().X(str, fileDescriptor, printWriter, strArr);
    }

    public i0 getSupportFragmentManager() {
        return this.mFragments.l();
    }

    @Deprecated
    public androidx.loader.app.a getSupportLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    void markFragmentsCreated() {
        do {
        } while (z(getSupportFragmentManager(), i.b.CREATED));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.j, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        this.mFragments.m();
        super.onActivityResult(i10, i11, intent);
    }

    @Deprecated
    public void onAttachFragment(p pVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.j, androidx.core.app.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.h(i.a.ON_CREATE);
        this.mFragments.e();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f();
        this.mFragmentLifecycleRegistry.h(i.a.ON_DESTROY);
    }

    @Override // androidx.activity.j, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 6) {
            return this.mFragments.d(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.g();
        this.mFragmentLifecycleRegistry.h(i.a.ON_PAUSE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.j, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.mFragments.m();
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        this.mFragments.m();
        super.onResume();
        this.mResumed = true;
        this.mFragments.k();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.h(i.a.ON_RESUME);
        this.mFragments.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.m();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.k();
        this.mFragmentLifecycleRegistry.h(i.a.ON_START);
        this.mFragments.i();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.j();
        this.mFragmentLifecycleRegistry.h(i.a.ON_STOP);
    }

    public void setEnterSharedElementCallback(androidx.core.app.w wVar) {
        androidx.core.app.b.w(this, wVar);
    }

    public void setExitSharedElementCallback(androidx.core.app.w wVar) {
        androidx.core.app.b.x(this, wVar);
    }

    public void startActivityFromFragment(p pVar, Intent intent, int i10) {
        startActivityFromFragment(pVar, intent, i10, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(p pVar, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        if (i10 == -1) {
            androidx.core.app.b.A(this, intentSender, i10, intent, i11, i12, i13, bundle);
        } else {
            pVar.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        androidx.core.app.b.r(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateMenu();
    }

    public void supportPostponeEnterTransition() {
        androidx.core.app.b.t(this);
    }

    public void supportStartPostponedEnterTransition() {
        androidx.core.app.b.B(this);
    }

    @Override // androidx.core.app.b.e
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i10) {
    }

    public void startActivityFromFragment(p pVar, Intent intent, int i10, Bundle bundle) {
        if (i10 == -1) {
            androidx.core.app.b.z(this, intent, -1, bundle);
        } else {
            pVar.startActivityForResult(intent, i10, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }
}
