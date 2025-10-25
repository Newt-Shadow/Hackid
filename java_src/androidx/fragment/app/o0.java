package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.y0;
import androidx.lifecycle.i;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import org.apache.tika.utils.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o0 {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f2750a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f2751b;

    /* renamed from: c  reason: collision with root package name */
    private final p f2752c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2753d = false;

    /* renamed from: e  reason: collision with root package name */
    private int f2754e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f2755a;

        a(View view) {
            this.f2755a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f2755a.removeOnAttachStateChangeListener(this);
            d0.p0.R(this.f2755a);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2757a;

        static {
            int[] iArr = new int[i.b.values().length];
            f2757a = iArr;
            try {
                iArr[i.b.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2757a[i.b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2757a[i.b.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2757a[i.b.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(c0 c0Var, p0 p0Var, p pVar) {
        this.f2750a = c0Var;
        this.f2751b = p0Var;
        this.f2752c = pVar;
    }

    private boolean l(View view) {
        if (view == this.f2752c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f2752c.mView) {
                return true;
            }
        }
        return false;
    }

    void a() {
        Bundle bundle;
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f2752c);
        }
        Bundle bundle2 = this.f2752c.mSavedFragmentState;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        this.f2752c.performActivityCreated(bundle);
        this.f2750a.a(this.f2752c, bundle, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        p m02 = i0.m0(this.f2752c.mContainer);
        p parentFragment = this.f2752c.getParentFragment();
        if (m02 != null && !m02.equals(parentFragment)) {
            p pVar = this.f2752c;
            t0.c.o(pVar, m02, pVar.mContainerId);
        }
        int j10 = this.f2751b.j(this.f2752c);
        p pVar2 = this.f2752c;
        pVar2.mContainer.addView(pVar2.mView, j10);
    }

    void c() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.f2752c);
        }
        p pVar = this.f2752c;
        p pVar2 = pVar.mTarget;
        o0 o0Var = null;
        if (pVar2 != null) {
            o0 n10 = this.f2751b.n(pVar2.mWho);
            if (n10 != null) {
                p pVar3 = this.f2752c;
                pVar3.mTargetWho = pVar3.mTarget.mWho;
                pVar3.mTarget = null;
                o0Var = n10;
            } else {
                throw new IllegalStateException("Fragment " + this.f2752c + " declared target fragment " + this.f2752c.mTarget + " that does not belong to this FragmentManager!");
            }
        } else {
            String str = pVar.mTargetWho;
            if (str != null && (o0Var = this.f2751b.n(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f2752c + " declared target fragment " + this.f2752c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (o0Var != null) {
            o0Var.m();
        }
        p pVar4 = this.f2752c;
        pVar4.mHost = pVar4.mFragmentManager.w0();
        p pVar5 = this.f2752c;
        pVar5.mParentFragment = pVar5.mFragmentManager.z0();
        this.f2750a.g(this.f2752c, false);
        this.f2752c.performAttach();
        this.f2750a.b(this.f2752c, false);
    }

    int d() {
        y0.d.a aVar;
        p pVar = this.f2752c;
        if (pVar.mFragmentManager == null) {
            return pVar.mState;
        }
        int i10 = this.f2754e;
        int i11 = b.f2757a[pVar.mMaxState.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        i10 = Math.min(i10, -1);
                    } else {
                        i10 = Math.min(i10, 0);
                    }
                } else {
                    i10 = Math.min(i10, 1);
                }
            } else {
                i10 = Math.min(i10, 5);
            }
        }
        p pVar2 = this.f2752c;
        if (pVar2.mFromLayout) {
            if (pVar2.mInLayout) {
                i10 = Math.max(this.f2754e, 2);
                View view = this.f2752c.mView;
                if (view != null && view.getParent() == null) {
                    i10 = Math.min(i10, 2);
                }
            } else {
                i10 = this.f2754e < 4 ? Math.min(i10, pVar2.mState) : Math.min(i10, 1);
            }
        }
        if (!this.f2752c.mAdded) {
            i10 = Math.min(i10, 1);
        }
        p pVar3 = this.f2752c;
        ViewGroup viewGroup = pVar3.mContainer;
        if (viewGroup != null) {
            aVar = y0.u(viewGroup, pVar3.getParentFragmentManager()).s(this);
        } else {
            aVar = null;
        }
        if (aVar == y0.d.a.ADDING) {
            i10 = Math.min(i10, 6);
        } else if (aVar == y0.d.a.REMOVING) {
            i10 = Math.max(i10, 3);
        } else {
            p pVar4 = this.f2752c;
            if (pVar4.mRemoving) {
                if (pVar4.isInBackStack()) {
                    i10 = Math.min(i10, 1);
                } else {
                    i10 = Math.min(i10, -1);
                }
            }
        }
        p pVar5 = this.f2752c;
        if (pVar5.mDeferStart && pVar5.mState < 5) {
            i10 = Math.min(i10, 4);
        }
        p pVar6 = this.f2752c;
        if (pVar6.mTransitioning && pVar6.mContainer != null) {
            i10 = Math.max(i10, 3);
        }
        if (i0.J0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i10 + " for " + this.f2752c);
        }
        return i10;
    }

    void e() {
        Bundle bundle;
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f2752c);
        }
        Bundle bundle2 = this.f2752c.mSavedFragmentState;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        p pVar = this.f2752c;
        if (!pVar.mIsCreated) {
            this.f2750a.h(pVar, bundle, false);
            this.f2752c.performCreate(bundle);
            this.f2750a.c(this.f2752c, bundle, false);
            return;
        }
        pVar.mState = 1;
        pVar.restoreChildFragmentState();
    }

    void f() {
        Bundle bundle;
        String str;
        if (this.f2752c.mFromLayout) {
            return;
        }
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f2752c);
        }
        Bundle bundle2 = this.f2752c.mSavedFragmentState;
        ViewGroup viewGroup = null;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        LayoutInflater performGetLayoutInflater = this.f2752c.performGetLayoutInflater(bundle);
        p pVar = this.f2752c;
        ViewGroup viewGroup2 = pVar.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i10 = pVar.mContainerId;
            if (i10 != 0) {
                if (i10 != -1) {
                    viewGroup = (ViewGroup) pVar.mFragmentManager.s0().c(this.f2752c.mContainerId);
                    if (viewGroup == null) {
                        p pVar2 = this.f2752c;
                        if (!pVar2.mRestored) {
                            try {
                                str = pVar2.getResources().getResourceName(this.f2752c.mContainerId);
                            } catch (Resources.NotFoundException unused) {
                                str = CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f2752c.mContainerId) + " (" + str + ") for fragment " + this.f2752c);
                        }
                    } else if (!(viewGroup instanceof x)) {
                        t0.c.n(this.f2752c, viewGroup);
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f2752c + " for a container view with no id");
                }
            }
        }
        p pVar3 = this.f2752c;
        pVar3.mContainer = viewGroup;
        pVar3.performCreateView(performGetLayoutInflater, viewGroup, bundle);
        if (this.f2752c.mView != null) {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + this.f2752c);
            }
            this.f2752c.mView.setSaveFromParentEnabled(false);
            p pVar4 = this.f2752c;
            pVar4.mView.setTag(s0.b.f29226a, pVar4);
            if (viewGroup != null) {
                b();
            }
            p pVar5 = this.f2752c;
            if (pVar5.mHidden) {
                pVar5.mView.setVisibility(8);
            }
            if (this.f2752c.mView.isAttachedToWindow()) {
                d0.p0.R(this.f2752c.mView);
            } else {
                View view = this.f2752c.mView;
                view.addOnAttachStateChangeListener(new a(view));
            }
            this.f2752c.performViewCreated();
            c0 c0Var = this.f2750a;
            p pVar6 = this.f2752c;
            c0Var.m(pVar6, pVar6.mView, bundle, false);
            int visibility = this.f2752c.mView.getVisibility();
            this.f2752c.setPostOnViewCreatedAlpha(this.f2752c.mView.getAlpha());
            p pVar7 = this.f2752c;
            if (pVar7.mContainer != null && visibility == 0) {
                View findFocus = pVar7.mView.findFocus();
                if (findFocus != null) {
                    this.f2752c.setFocusedView(findFocus);
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + this.f2752c);
                    }
                }
                this.f2752c.mView.setAlpha(0.0f);
            }
        }
        this.f2752c.mState = 2;
    }

    void g() {
        boolean z10;
        boolean z11;
        p f10;
        if (i0.J0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f2752c);
        }
        p pVar = this.f2752c;
        boolean z12 = true;
        if (pVar.mRemoving && !pVar.isInBackStack()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            p pVar2 = this.f2752c;
            if (!pVar2.mBeingSaved) {
                this.f2751b.B(pVar2.mWho, null);
            }
        }
        if (!z10 && !this.f2751b.p().q(this.f2752c)) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (z11) {
            a0 a0Var = this.f2752c.mHost;
            if (a0Var instanceof androidx.lifecycle.m0) {
                z12 = this.f2751b.p().n();
            } else if (a0Var.f() instanceof Activity) {
                z12 = true ^ ((Activity) a0Var.f()).isChangingConfigurations();
            }
            if ((z10 && !this.f2752c.mBeingSaved) || z12) {
                this.f2751b.p().f(this.f2752c, false);
            }
            this.f2752c.performDestroy();
            this.f2750a.d(this.f2752c, false);
            for (o0 o0Var : this.f2751b.k()) {
                if (o0Var != null) {
                    p k10 = o0Var.k();
                    if (this.f2752c.mWho.equals(k10.mTargetWho)) {
                        k10.mTarget = this.f2752c;
                        k10.mTargetWho = null;
                    }
                }
            }
            p pVar3 = this.f2752c;
            String str = pVar3.mTargetWho;
            if (str != null) {
                pVar3.mTarget = this.f2751b.f(str);
            }
            this.f2751b.s(this);
            return;
        }
        String str2 = this.f2752c.mTargetWho;
        if (str2 != null && (f10 = this.f2751b.f(str2)) != null && f10.mRetainInstance) {
            this.f2752c.mTarget = f10;
        }
        this.f2752c.mState = 0;
    }

    void h() {
        View view;
        if (i0.J0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.f2752c);
        }
        p pVar = this.f2752c;
        ViewGroup viewGroup = pVar.mContainer;
        if (viewGroup != null && (view = pVar.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f2752c.performDestroyView();
        this.f2750a.n(this.f2752c, false);
        p pVar2 = this.f2752c;
        pVar2.mContainer = null;
        pVar2.mView = null;
        pVar2.mViewLifecycleOwner = null;
        pVar2.mViewLifecycleOwnerLiveData.setValue(null);
        this.f2752c.mInLayout = false;
    }

    void i() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f2752c);
        }
        this.f2752c.performDetach();
        boolean z10 = false;
        this.f2750a.e(this.f2752c, false);
        p pVar = this.f2752c;
        pVar.mState = -1;
        pVar.mHost = null;
        pVar.mParentFragment = null;
        pVar.mFragmentManager = null;
        if (pVar.mRemoving && !pVar.isInBackStack()) {
            z10 = true;
        }
        if (z10 || this.f2751b.p().q(this.f2752c)) {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f2752c);
            }
            this.f2752c.initState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        Bundle bundle;
        p pVar = this.f2752c;
        if (pVar.mFromLayout && pVar.mInLayout && !pVar.mPerformedCreateView) {
            if (i0.J0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f2752c);
            }
            Bundle bundle2 = this.f2752c.mSavedFragmentState;
            if (bundle2 != null) {
                bundle = bundle2.getBundle("savedInstanceState");
            } else {
                bundle = null;
            }
            p pVar2 = this.f2752c;
            pVar2.performCreateView(pVar2.performGetLayoutInflater(bundle), null, bundle);
            View view = this.f2752c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                p pVar3 = this.f2752c;
                pVar3.mView.setTag(s0.b.f29226a, pVar3);
                p pVar4 = this.f2752c;
                if (pVar4.mHidden) {
                    pVar4.mView.setVisibility(8);
                }
                this.f2752c.performViewCreated();
                c0 c0Var = this.f2750a;
                p pVar5 = this.f2752c;
                c0Var.m(pVar5, pVar5.mView, bundle, false);
                this.f2752c.mState = 2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p k() {
        return this.f2752c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f2753d) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.f2753d = true;
            boolean z10 = false;
            while (true) {
                int d10 = d();
                p pVar = this.f2752c;
                int i10 = pVar.mState;
                if (d10 != i10) {
                    if (d10 > i10) {
                        switch (i10 + 1) {
                            case 0:
                                c();
                                continue;
                            case 1:
                                e();
                                continue;
                            case 2:
                                j();
                                f();
                                continue;
                            case 3:
                                a();
                                continue;
                            case 4:
                                if (pVar.mView != null && (viewGroup3 = pVar.mContainer) != null) {
                                    y0.u(viewGroup3, pVar.getParentFragmentManager()).j(y0.d.b.f(this.f2752c.mView.getVisibility()), this);
                                }
                                this.f2752c.mState = 4;
                                continue;
                            case 5:
                                t();
                                continue;
                            case 6:
                                pVar.mState = 6;
                                continue;
                            case 7:
                                p();
                                continue;
                            default:
                                continue;
                        }
                    } else {
                        switch (i10 - 1) {
                            case -1:
                                i();
                                continue;
                            case 0:
                                if (pVar.mBeingSaved && this.f2751b.q(pVar.mWho) == null) {
                                    this.f2751b.B(this.f2752c.mWho, q());
                                }
                                g();
                                continue;
                            case 1:
                                h();
                                this.f2752c.mState = 1;
                                continue;
                            case 2:
                                pVar.mInLayout = false;
                                pVar.mState = 2;
                                continue;
                            case 3:
                                if (i0.J0(3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f2752c);
                                }
                                p pVar2 = this.f2752c;
                                if (pVar2.mBeingSaved) {
                                    this.f2751b.B(pVar2.mWho, q());
                                } else if (pVar2.mView != null && pVar2.mSavedViewState == null) {
                                    r();
                                }
                                p pVar3 = this.f2752c;
                                if (pVar3.mView != null && (viewGroup2 = pVar3.mContainer) != null) {
                                    y0.u(viewGroup2, pVar3.getParentFragmentManager()).l(this);
                                }
                                this.f2752c.mState = 3;
                                continue;
                            case 4:
                                u();
                                continue;
                            case 5:
                                pVar.mState = 5;
                                continue;
                            case 6:
                                n();
                                continue;
                            default:
                                continue;
                        }
                    }
                    z10 = true;
                } else {
                    if (!z10 && i10 == -1 && pVar.mRemoving && !pVar.isInBackStack() && !this.f2752c.mBeingSaved) {
                        if (i0.J0(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + this.f2752c);
                        }
                        this.f2751b.p().f(this.f2752c, true);
                        this.f2751b.s(this);
                        if (i0.J0(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + this.f2752c);
                        }
                        this.f2752c.initState();
                    }
                    p pVar4 = this.f2752c;
                    if (pVar4.mHiddenChanged) {
                        if (pVar4.mView != null && (viewGroup = pVar4.mContainer) != null) {
                            y0 u10 = y0.u(viewGroup, pVar4.getParentFragmentManager());
                            if (this.f2752c.mHidden) {
                                u10.k(this);
                            } else {
                                u10.m(this);
                            }
                        }
                        p pVar5 = this.f2752c;
                        i0 i0Var = pVar5.mFragmentManager;
                        if (i0Var != null) {
                            i0Var.H0(pVar5);
                        }
                        p pVar6 = this.f2752c;
                        pVar6.mHiddenChanged = false;
                        pVar6.onHiddenChanged(pVar6.mHidden);
                        this.f2752c.mChildFragmentManager.J();
                    }
                    return;
                }
            }
        } finally {
            this.f2753d = false;
        }
    }

    void n() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f2752c);
        }
        this.f2752c.performPause();
        this.f2750a.f(this.f2752c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(ClassLoader classLoader) {
        Bundle bundle = this.f2752c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (this.f2752c.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            this.f2752c.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        try {
            p pVar = this.f2752c;
            pVar.mSavedViewState = pVar.mSavedFragmentState.getSparseParcelableArray("viewState");
            p pVar2 = this.f2752c;
            pVar2.mSavedViewRegistryState = pVar2.mSavedFragmentState.getBundle("viewRegistryState");
            n0 n0Var = (n0) this.f2752c.mSavedFragmentState.getParcelable("state");
            if (n0Var != null) {
                p pVar3 = this.f2752c;
                pVar3.mTargetWho = n0Var.f2746l;
                pVar3.mTargetRequestCode = n0Var.f2747m;
                Boolean bool = pVar3.mSavedUserVisibleHint;
                if (bool != null) {
                    pVar3.mUserVisibleHint = bool.booleanValue();
                    this.f2752c.mSavedUserVisibleHint = null;
                } else {
                    pVar3.mUserVisibleHint = n0Var.f2748n;
                }
            }
            p pVar4 = this.f2752c;
            if (!pVar4.mUserVisibleHint) {
                pVar4.mDeferStart = true;
            }
        } catch (BadParcelableException e10) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + k(), e10);
        }
    }

    void p() {
        String str;
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f2752c);
        }
        View focusedView = this.f2752c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (i0.J0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("requestFocus: Restoring focused view ");
                sb2.append(focusedView);
                sb2.append(StringUtils.SPACE);
                if (requestFocus) {
                    str = "succeeded";
                } else {
                    str = "failed";
                }
                sb2.append(str);
                sb2.append(" on Fragment ");
                sb2.append(this.f2752c);
                sb2.append(" resulting in focused view ");
                sb2.append(this.f2752c.mView.findFocus());
                Log.v("FragmentManager", sb2.toString());
            }
        }
        this.f2752c.setFocusedView(null);
        this.f2752c.performResume();
        this.f2750a.i(this.f2752c, false);
        this.f2751b.B(this.f2752c.mWho, null);
        p pVar = this.f2752c;
        pVar.mSavedFragmentState = null;
        pVar.mSavedViewState = null;
        pVar.mSavedViewRegistryState = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle q() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        p pVar = this.f2752c;
        if (pVar.mState == -1 && (bundle = pVar.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new n0(this.f2752c));
        if (this.f2752c.mState > -1) {
            Bundle bundle3 = new Bundle();
            this.f2752c.performSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f2750a.j(this.f2752c, bundle3, false);
            Bundle bundle4 = new Bundle();
            this.f2752c.mSavedStateRegistryController.e(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle R0 = this.f2752c.mChildFragmentManager.R0();
            if (!R0.isEmpty()) {
                bundle2.putBundle("childFragmentManager", R0);
            }
            if (this.f2752c.mView != null) {
                r();
            }
            SparseArray<Parcelable> sparseArray = this.f2752c.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = this.f2752c.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = this.f2752c.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle(FFmpegKitFlutterPlugin.ARGUMENT_ARGUMENTS, bundle6);
        }
        return bundle2;
    }

    void r() {
        if (this.f2752c.mView == null) {
            return;
        }
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.f2752c + " with view " + this.f2752c.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f2752c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f2752c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f2752c.mViewLifecycleOwner.e(bundle);
        if (!bundle.isEmpty()) {
            this.f2752c.mSavedViewRegistryState = bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(int i10) {
        this.f2754e = i10;
    }

    void t() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f2752c);
        }
        this.f2752c.performStart();
        this.f2750a.k(this.f2752c, false);
    }

    void u() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f2752c);
        }
        this.f2752c.performStop();
        this.f2750a.l(this.f2752c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(c0 c0Var, p0 p0Var, ClassLoader classLoader, z zVar, Bundle bundle) {
        this.f2750a = c0Var;
        this.f2751b = p0Var;
        p a10 = ((n0) bundle.getParcelable("state")).a(zVar, classLoader);
        this.f2752c = a10;
        a10.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle(FFmpegKitFlutterPlugin.ARGUMENT_ARGUMENTS);
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        a10.setArguments(bundle2);
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(c0 c0Var, p0 p0Var, p pVar, Bundle bundle) {
        this.f2750a = c0Var;
        this.f2751b = p0Var;
        this.f2752c = pVar;
        pVar.mSavedViewState = null;
        pVar.mSavedViewRegistryState = null;
        pVar.mBackStackNesting = 0;
        pVar.mInLayout = false;
        pVar.mAdded = false;
        p pVar2 = pVar.mTarget;
        pVar.mTargetWho = pVar2 != null ? pVar2.mWho : null;
        pVar.mTarget = null;
        pVar.mSavedFragmentState = bundle;
        pVar.mArguments = bundle.getBundle(FFmpegKitFlutterPlugin.ARGUMENT_ARGUMENTS);
    }
}
