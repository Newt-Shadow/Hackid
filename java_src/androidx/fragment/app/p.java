package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.i;
import androidx.lifecycle.k0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class p implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.m, androidx.lifecycle.m0, androidx.lifecycle.g, h1.f {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    k mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    k0.c mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    i0 mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    a0 mHost;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    androidx.lifecycle.n mLifecycleRegistry;
    p mParentFragment;
    boolean mPerformedCreateView;
    Handler mPostponedHandler;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    h1.e mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    p mTarget;
    int mTargetRequestCode;
    boolean mTransitioning;
    View mView;
    u0 mViewLifecycleOwner;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    i0 mChildFragmentManager = new j0();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    Runnable mPostponedDurationRunnable = new b();
    i.b mMaxState = i.b.RESUMED;
    androidx.lifecycle.s mViewLifecycleOwnerLiveData = new androidx.lifecycle.s();
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final ArrayList<m> mOnPreAttachedListeners = new ArrayList<>();
    private final m mSavedStateAttachListener = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicReference f2758a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g.a f2759b;

        a(AtomicReference atomicReference, g.a aVar) {
            this.f2758a = atomicReference;
            this.f2759b = aVar;
        }

        @Override // f.c
        public void b(Object obj, androidx.core.app.c cVar) {
            f.c cVar2 = (f.c) this.f2758a.get();
            if (cVar2 != null) {
                cVar2.b(obj, cVar);
                return;
            }
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }

        @Override // f.c
        public void c() {
            f.c cVar = (f.c) this.f2758a.getAndSet(null);
            if (cVar != null) {
                cVar.c();
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.startPostponedEnterTransition();
        }
    }

    /* loaded from: classes.dex */
    class c extends m {
        c() {
            super(null);
        }

        @Override // androidx.fragment.app.p.m
        void a() {
            Bundle bundle;
            p.this.mSavedStateRegistryController.c();
            androidx.lifecycle.d0.c(p.this);
            Bundle bundle2 = p.this.mSavedFragmentState;
            if (bundle2 != null) {
                bundle = bundle2.getBundle("registryState");
            } else {
                bundle = null;
            }
            p.this.mSavedStateRegistryController.d(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.callStartTransitionListener(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y0 f2764a;

        e(y0 y0Var) {
            this.f2764a = y0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2764a.w()) {
                this.f2764a.n();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f extends w {
        f() {
        }

        @Override // androidx.fragment.app.w
        public View c(int i10) {
            View view = p.this.mView;
            if (view != null) {
                return view.findViewById(i10);
            }
            throw new IllegalStateException("Fragment " + p.this + " does not have a view");
        }

        @Override // androidx.fragment.app.w
        public boolean d() {
            if (p.this.mView != null) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    class g implements androidx.lifecycle.k {
        g() {
        }

        @Override // androidx.lifecycle.k
        public void a(androidx.lifecycle.m mVar, i.a aVar) {
            View view;
            if (aVar == i.a.ON_STOP && (view = p.this.mView) != null) {
                view.cancelPendingInputEvents();
            }
        }
    }

    /* loaded from: classes.dex */
    class h implements o.a {
        h() {
        }

        @Override // o.a
        /* renamed from: a */
        public f.e apply(Void r32) {
            p pVar = p.this;
            a0 a0Var = pVar.mHost;
            if (a0Var instanceof f.f) {
                return ((f.f) a0Var).getActivityResultRegistry();
            }
            return pVar.requireActivity().getActivityResultRegistry();
        }
    }

    /* loaded from: classes.dex */
    class i implements o.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f.e f2769a;

        i(f.e eVar) {
            this.f2769a = eVar;
        }

        @Override // o.a
        /* renamed from: a */
        public f.e apply(Void r12) {
            return this.f2769a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j extends m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o.a f2771a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicReference f2772b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g.a f2773c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f.b f2774d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(o.a aVar, AtomicReference atomicReference, g.a aVar2, f.b bVar) {
            super(null);
            this.f2771a = aVar;
            this.f2772b = atomicReference;
            this.f2773c = aVar2;
            this.f2774d = bVar;
        }

        @Override // androidx.fragment.app.p.m
        void a() {
            this.f2772b.set(((f.e) this.f2771a.apply(null)).l(p.this.generateActivityResultKey(), p.this, this.f2773c, this.f2774d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        View f2776a;

        /* renamed from: b  reason: collision with root package name */
        boolean f2777b;

        /* renamed from: c  reason: collision with root package name */
        int f2778c;

        /* renamed from: d  reason: collision with root package name */
        int f2779d;

        /* renamed from: e  reason: collision with root package name */
        int f2780e;

        /* renamed from: f  reason: collision with root package name */
        int f2781f;

        /* renamed from: g  reason: collision with root package name */
        int f2782g;

        /* renamed from: h  reason: collision with root package name */
        ArrayList f2783h;

        /* renamed from: i  reason: collision with root package name */
        ArrayList f2784i;

        /* renamed from: j  reason: collision with root package name */
        Object f2785j = null;

        /* renamed from: k  reason: collision with root package name */
        Object f2786k;

        /* renamed from: l  reason: collision with root package name */
        Object f2787l;

        /* renamed from: m  reason: collision with root package name */
        Object f2788m;

        /* renamed from: n  reason: collision with root package name */
        Object f2789n;

        /* renamed from: o  reason: collision with root package name */
        Object f2790o;

        /* renamed from: p  reason: collision with root package name */
        Boolean f2791p;

        /* renamed from: q  reason: collision with root package name */
        Boolean f2792q;

        /* renamed from: r  reason: collision with root package name */
        float f2793r;

        /* renamed from: s  reason: collision with root package name */
        View f2794s;

        /* renamed from: t  reason: collision with root package name */
        boolean f2795t;

        k() {
            Object obj = p.USE_DEFAULT_TRANSITION;
            this.f2786k = obj;
            this.f2787l = null;
            this.f2788m = obj;
            this.f2789n = null;
            this.f2790o = obj;
            this.f2793r = 1.0f;
            this.f2794s = null;
        }
    }

    /* loaded from: classes.dex */
    public static class l extends RuntimeException {
        public l(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class m {
        private m() {
        }

        /* synthetic */ m(b bVar) {
            this();
        }

        abstract void a();
    }

    /* loaded from: classes.dex */
    public static class n implements Parcelable {
        public static final Parcelable.Creator<n> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        final Bundle f2796a;

        /* loaded from: classes.dex */
        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public n createFromParcel(Parcel parcel) {
                return new n(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public n createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new n(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public n[] newArray(int i10) {
                return new n[i10];
            }
        }

        n(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.f2796a = readBundle;
            if (classLoader != null && readBundle != null) {
                readBundle.setClassLoader(classLoader);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeBundle(this.f2796a);
        }
    }

    public p() {
        h();
    }

    private k e() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new k();
        }
        return this.mAnimationInfo;
    }

    private int f() {
        i.b bVar = this.mMaxState;
        if (bVar != i.b.INITIALIZED && this.mParentFragment != null) {
            return Math.min(bVar.ordinal(), this.mParentFragment.f());
        }
        return bVar.ordinal();
    }

    private p g(boolean z10) {
        String str;
        if (z10) {
            t0.c.j(this);
        }
        p pVar = this.mTarget;
        if (pVar != null) {
            return pVar;
        }
        i0 i0Var = this.mFragmentManager;
        if (i0Var != null && (str = this.mTargetWho) != null) {
            return i0Var.g0(str);
        }
        return null;
    }

    private void h() {
        this.mLifecycleRegistry = new androidx.lifecycle.n(this);
        this.mSavedStateRegistryController = h1.e.a(this);
        this.mDefaultFactory = null;
        if (!this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            k(this.mSavedStateAttachListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        this.mViewLifecycleOwner.d(this.mSavedViewRegistryState);
        this.mSavedViewRegistryState = null;
    }

    @Deprecated
    public static p instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    private f.c j(g.a aVar, o.a aVar2, f.b bVar) {
        if (this.mState <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            k(new j(aVar2, atomicReference, aVar, bVar));
            return new a(atomicReference, aVar);
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    private void k(m mVar) {
        if (this.mState >= 0) {
            mVar.a();
        } else {
            this.mOnPreAttachedListeners.add(mVar);
        }
    }

    private void l() {
        Bundle bundle;
        if (i0.J0(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            Bundle bundle2 = this.mSavedFragmentState;
            if (bundle2 != null) {
                bundle = bundle2.getBundle("savedInstanceState");
            } else {
                bundle = null;
            }
            restoreViewState(bundle);
        }
        this.mSavedFragmentState = null;
    }

    void callStartTransitionListener(boolean z10) {
        ViewGroup viewGroup;
        i0 i0Var;
        k kVar = this.mAnimationInfo;
        if (kVar != null) {
            kVar.f2795t = false;
        }
        if (this.mView != null && (viewGroup = this.mContainer) != null && (i0Var = this.mFragmentManager) != null) {
            y0 u10 = y0.u(viewGroup, i0Var);
            u10.x();
            if (z10) {
                this.mHost.h().post(new e(u10));
            } else {
                u10.n();
            }
            Handler handler = this.mPostponedHandler;
            if (handler != null) {
                handler.removeCallbacks(this.mPostponedDurationRunnable);
                this.mPostponedHandler = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w createFragmentContainer() {
        return new f();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        p g10 = g(false);
        if (g10 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(g10);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            androidx.loader.app.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        i0 i0Var = this.mChildFragmentManager;
        i0Var.X(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p findFragmentByWho(String str) {
        if (str.equals(this.mWho)) {
            return this;
        }
        return this.mChildFragmentManager.k0(str);
    }

    String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final u getActivity() {
        a0 a0Var = this.mHost;
        if (a0Var == null) {
            return null;
        }
        return (u) a0Var.e();
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        k kVar = this.mAnimationInfo;
        if (kVar != null && (bool = kVar.f2792q) != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        k kVar = this.mAnimationInfo;
        if (kVar != null && (bool = kVar.f2791p) != null) {
            return bool.booleanValue();
        }
        return true;
    }

    View getAnimatingAway() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2776a;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final i0 getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Context getContext() {
        a0 a0Var = this.mHost;
        if (a0Var == null) {
            return null;
        }
        return a0Var.f();
    }

    @Override // androidx.lifecycle.g
    public x0.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (applicationContext instanceof ContextWrapper) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            } else {
                application = null;
                break;
            }
        }
        if (application == null && i0.J0(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        x0.b bVar = new x0.b();
        if (application != null) {
            bVar.c(k0.a.f2988h, application);
        }
        bVar.c(androidx.lifecycle.d0.f2952a, this);
        bVar.c(androidx.lifecycle.d0.f2953b, this);
        if (getArguments() != null) {
            bVar.c(androidx.lifecycle.d0.f2954c, getArguments());
        }
        return bVar;
    }

    public k0.c getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager != null) {
            if (this.mDefaultFactory == null) {
                Context applicationContext = requireContext().getApplicationContext();
                while (true) {
                    if (applicationContext instanceof ContextWrapper) {
                        if (applicationContext instanceof Application) {
                            application = (Application) applicationContext;
                            break;
                        }
                        applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
                    } else {
                        application = null;
                        break;
                    }
                }
                if (application == null && i0.J0(3)) {
                    Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
                }
                this.mDefaultFactory = new androidx.lifecycle.g0(application, this, getArguments());
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEnterAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2778c;
    }

    public Object getEnterTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2785j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.core.app.w getEnterTransitionCallback() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        kVar.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getExitAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2779d;
    }

    public Object getExitTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2787l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.core.app.w getExitTransitionCallback() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        kVar.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getFocusedView() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2794s;
    }

    @Deprecated
    public final i0 getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        a0 a0Var = this.mHost;
        if (a0Var == null) {
            return null;
        }
        return a0Var.j();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.m
    public androidx.lifecycle.i getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public androidx.loader.app.a getLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2782g;
    }

    public final p getParentFragment() {
        return this.mParentFragment;
    }

    public final i0 getParentFragmentManager() {
        i0 i0Var = this.mFragmentManager;
        if (i0Var != null) {
            return i0Var;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getPopDirection() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return false;
        }
        return kVar.f2777b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPopEnterAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2780e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPopExitAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2781f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getPostOnViewCreatedAlpha() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 1.0f;
        }
        return kVar.f2793r;
    }

    public Object getReenterTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        Object obj = kVar.f2788m;
        if (obj == USE_DEFAULT_TRANSITION) {
            return getExitTransition();
        }
        return obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        t0.c.h(this);
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        Object obj = kVar.f2786k;
        if (obj == USE_DEFAULT_TRANSITION) {
            return getEnterTransition();
        }
        return obj;
    }

    @Override // h1.f
    public final h1.d getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b();
    }

    public Object getSharedElementEnterTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2789n;
    }

    public Object getSharedElementReturnTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        Object obj = kVar.f2790o;
        if (obj == USE_DEFAULT_TRANSITION) {
            return getSharedElementEnterTransition();
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        k kVar = this.mAnimationInfo;
        if (kVar != null && (arrayList = kVar.f2783h) != null) {
            return arrayList;
        }
        return new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        k kVar = this.mAnimationInfo;
        if (kVar != null && (arrayList = kVar.f2784i) != null) {
            return arrayList;
        }
        return new ArrayList<>();
    }

    public final String getString(int i10) {
        return getResources().getString(i10);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final p getTargetFragment() {
        return g(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        t0.c.i(this);
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i10) {
        return getResources().getText(i10);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public androidx.lifecycle.m getViewLifecycleOwner() {
        u0 u0Var = this.mViewLifecycleOwner;
        if (u0Var != null) {
            return u0Var;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner for " + this + " when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public androidx.lifecycle.q getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.m0
    public androidx.lifecycle.l0 getViewModelStore() {
        if (this.mFragmentManager != null) {
            if (f() != i.b.INITIALIZED.ordinal()) {
                return this.mFragmentManager.E0(this);
            }
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initState() {
        h();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new j0();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        if (this.mHost != null && this.mAdded) {
            return true;
        }
        return false;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        i0 i0Var;
        if (!this.mHidden && ((i0Var = this.mFragmentManager) == null || !i0Var.M0(this.mParentFragment))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isInBackStack() {
        if (this.mBackStackNesting > 0) {
            return true;
        }
        return false;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        i0 i0Var;
        if (this.mMenuVisible && ((i0Var = this.mFragmentManager) == null || i0Var.N0(this.mParentFragment))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPostponed() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return false;
        }
        return kVar.f2795t;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        if (this.mState >= 7) {
            return true;
        }
        return false;
    }

    public final boolean isStateSaved() {
        i0 i0Var = this.mFragmentManager;
        if (i0Var == null) {
            return false;
        }
        return i0Var.Q0();
    }

    public final boolean isVisible() {
        View view;
        if (isAdded() && !isHidden() && (view = this.mView) != null && view.getWindowToken() != null && this.mView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void noteStateNotSaved() {
        this.mChildFragmentManager.a1();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i10 + " resultCode: " + i11 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        a0 a0Var = this.mHost;
        Activity e10 = a0Var == null ? null : a0Var.e();
        if (e10 != null) {
            this.mCalled = false;
            onAttach(e10);
        }
    }

    @Deprecated
    public void onAttachFragment(p pVar) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState();
        if (!this.mChildFragmentManager.P0(1)) {
            this.mChildFragmentManager.C();
        }
    }

    public Animation onCreateAnimation(int i10, boolean z10, int i11) {
        return null;
    }

    public Animator onCreateAnimator(int i10, boolean z10, int i11) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10 = this.mContentLayoutId;
        if (i10 != 0) {
            return layoutInflater.inflate(i10, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z10) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        a0 a0Var = this.mHost;
        Activity e10 = a0Var == null ? null : a0Var.e();
        if (e10 != null) {
            this.mCalled = false;
            onInflate(e10, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z10) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z10) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z10) {
    }

    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.a1();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            l();
            this.mChildFragmentManager.y();
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performAttach() {
        Iterator<m> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.m(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f());
        if (this.mCalled) {
            this.mFragmentManager.I(this);
            this.mChildFragmentManager.z();
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performContextItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (onContextItemSelected(menuItem)) {
                return true;
            }
            return this.mChildFragmentManager.B(menuItem);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.a1();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new g());
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.h(i.a.ON_CREATE);
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z10 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z10 = true;
        }
        return z10 | this.mChildFragmentManager.D(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.a1();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new u0(this, getViewModelStore(), new Runnable() { // from class: androidx.fragment.app.o
            @Override // java.lang.Runnable
            public final void run() {
                p.this.i();
            }
        });
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView != null) {
            this.mViewLifecycleOwner.b();
            if (i0.J0(3)) {
                Log.d("FragmentManager", "Setting ViewLifecycleOwner on View " + this.mView + " for Fragment " + this);
            }
            androidx.lifecycle.n0.a(this.mView, this.mViewLifecycleOwner);
            androidx.lifecycle.o0.a(this.mView, this.mViewLifecycleOwner);
            h1.g.a(this.mView, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.setValue(this.mViewLifecycleOwner);
        } else if (!this.mViewLifecycleOwner.c()) {
            this.mViewLifecycleOwner = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroy() {
        this.mChildFragmentManager.E();
        this.mLifecycleRegistry.h(i.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroyView() {
        this.mChildFragmentManager.F();
        if (this.mView != null && this.mViewLifecycleOwner.getLifecycle().b().b(i.b.CREATED)) {
            this.mViewLifecycleOwner.a(i.a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            androidx.loader.app.a.b(this).d();
            this.mPerformedCreateView = false;
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (!this.mChildFragmentManager.I0()) {
                this.mChildFragmentManager.E();
                this.mChildFragmentManager = new j0();
                return;
            }
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onDetach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performLowMemory() {
        onLowMemory();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performMultiWindowModeChanged(boolean z10) {
        onMultiWindowModeChanged(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
                return true;
            }
            return this.mChildFragmentManager.K(menuItem);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            this.mChildFragmentManager.L(menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPause() {
        this.mChildFragmentManager.N();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(i.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.h(i.a.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onPause()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPictureInPictureModeChanged(boolean z10) {
        onPictureInPictureModeChanged(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z10 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z10 = true;
        }
        return z10 | this.mChildFragmentManager.P(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPrimaryNavigationFragmentChanged() {
        boolean O0 = this.mFragmentManager.O0(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != O0) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(O0);
            onPrimaryNavigationFragmentChanged(O0);
            this.mChildFragmentManager.Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performResume() {
        this.mChildFragmentManager.a1();
        this.mChildFragmentManager.b0(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (this.mCalled) {
            androidx.lifecycle.n nVar = this.mLifecycleRegistry;
            i.a aVar = i.a.ON_RESUME;
            nVar.h(aVar);
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(aVar);
            }
            this.mChildFragmentManager.R();
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onResume()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStart() {
        this.mChildFragmentManager.a1();
        this.mChildFragmentManager.b0(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            androidx.lifecycle.n nVar = this.mLifecycleRegistry;
            i.a aVar = i.a.ON_START;
            nVar.h(aVar);
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(aVar);
            }
            this.mChildFragmentManager.S();
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onStart()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStop() {
        this.mChildFragmentManager.U();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(i.a.ON_STOP);
        }
        this.mLifecycleRegistry.h(i.a.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onStop()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performViewCreated() {
        Bundle bundle;
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        onViewCreated(this.mView, bundle);
        this.mChildFragmentManager.V();
    }

    public void postponeEnterTransition() {
        e().f2795t = true;
    }

    public final <I, O> f.c registerForActivityResult(g.a aVar, f.b bVar) {
        return j(aVar, new h(), bVar);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i10) {
        if (this.mHost != null) {
            getParentFragmentManager().W0(this, strArr, i10);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final u requireActivity() {
        u activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @Deprecated
    public final i0 requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    public final p requireParentFragment() {
        p parentFragment = getParentFragment();
        if (parentFragment == null) {
            if (getContext() == null) {
                throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
            }
            throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
        }
        return parentFragment;
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void restoreChildFragmentState() {
        Bundle bundle;
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 != null && (bundle = bundle2.getBundle("childFragmentManager")) != null) {
            this.mChildFragmentManager.p1(bundle);
            this.mChildFragmentManager.C();
        }
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(i.a.ON_CREATE);
                return;
            }
            return;
        }
        throw new a1("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }

    public void setAllowEnterTransitionOverlap(boolean z10) {
        e().f2792q = Boolean.valueOf(z10);
    }

    public void setAllowReturnTransitionOverlap(boolean z10) {
        e().f2791p = Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimations(int i10, int i11, int i12, int i13) {
        if (this.mAnimationInfo == null && i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return;
        }
        e().f2778c = i10;
        e().f2779d = i11;
        e().f2780e = i12;
        e().f2781f = i13;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(androidx.core.app.w wVar) {
        e().getClass();
    }

    public void setEnterTransition(Object obj) {
        e().f2785j = obj;
    }

    public void setExitSharedElementCallback(androidx.core.app.w wVar) {
        e().getClass();
    }

    public void setExitTransition(Object obj) {
        e().f2787l = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFocusedView(View view) {
        e().f2794s = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z10) {
        if (this.mHasMenu != z10) {
            this.mHasMenu = z10;
            if (isAdded() && !isHidden()) {
                this.mHost.p();
            }
        }
    }

    public void setInitialSavedState(n nVar) {
        if (this.mFragmentManager == null) {
            this.mSavedFragmentState = (nVar == null || (r2 = nVar.f2796a) == null) ? null : null;
            return;
        }
        throw new IllegalStateException("Fragment already added");
    }

    public void setMenuVisibility(boolean z10) {
        if (this.mMenuVisible != z10) {
            this.mMenuVisible = z10;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNextTransition(int i10) {
        if (this.mAnimationInfo == null && i10 == 0) {
            return;
        }
        e();
        this.mAnimationInfo.f2782g = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPopDirection(boolean z10) {
        if (this.mAnimationInfo == null) {
            return;
        }
        e().f2777b = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPostOnViewCreatedAlpha(float f10) {
        e().f2793r = f10;
    }

    public void setReenterTransition(Object obj) {
        e().f2788m = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z10) {
        t0.c.k(this);
        this.mRetainInstance = z10;
        i0 i0Var = this.mFragmentManager;
        if (i0Var != null) {
            if (z10) {
                i0Var.k(this);
                return;
            } else {
                i0Var.n1(this);
                return;
            }
        }
        this.mRetainInstanceChangedWhileDetached = true;
    }

    public void setReturnTransition(Object obj) {
        e().f2786k = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        e().f2789n = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        e();
        k kVar = this.mAnimationInfo;
        kVar.f2783h = arrayList;
        kVar.f2784i = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        e().f2790o = obj;
    }

    @Deprecated
    public void setTargetFragment(p pVar, int i10) {
        i0 i0Var;
        if (pVar != null) {
            t0.c.l(this, pVar, i10);
        }
        i0 i0Var2 = this.mFragmentManager;
        if (pVar != null) {
            i0Var = pVar.mFragmentManager;
        } else {
            i0Var = null;
        }
        if (i0Var2 != null && i0Var != null && i0Var2 != i0Var) {
            throw new IllegalArgumentException("Fragment " + pVar + " must share the same FragmentManager to be set as a target fragment");
        }
        for (p pVar2 = pVar; pVar2 != null; pVar2 = pVar2.g(false)) {
            if (pVar2.equals(this)) {
                throw new IllegalArgumentException("Setting " + pVar + " as the target of " + this + " would create a target cycle");
            }
        }
        if (pVar == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager != null && pVar.mFragmentManager != null) {
            this.mTargetWho = pVar.mWho;
            this.mTarget = null;
        } else {
            this.mTargetWho = null;
            this.mTarget = pVar;
        }
        this.mTargetRequestCode = i10;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z10) {
        boolean z11;
        t0.c.m(this, z10);
        if (!this.mUserVisibleHint && z10 && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            i0 i0Var = this.mFragmentManager;
            i0Var.c1(i0Var.w(this));
        }
        this.mUserVisibleHint = z10;
        if (this.mState < 5 && !z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.mDeferStart = z11;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z10);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        a0 a0Var = this.mHost;
        if (a0Var != null) {
            return a0Var.m(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i10) {
        startActivityForResult(intent, i10, null);
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        if (this.mHost != null) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i10 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
            }
            getParentFragmentManager().Y0(this, intentSender, i10, intent, i11, i12, i13, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo != null && e().f2795t) {
            if (this.mHost == null) {
                e().f2795t = false;
            } else if (Looper.myLooper() != this.mHost.h().getLooper()) {
                this.mHost.h().postAtFrontOfQueue(new d());
            } else {
                callStartTransitionListener(true);
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(getClass().getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("}");
        sb2.append(" (");
        sb2.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb2.append(" tag=");
            sb2.append(this.mTag);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @Deprecated
    public static p instantiate(Context context, String str, Bundle bundle) {
        try {
            p pVar = (p) z.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(pVar.getClass().getClassLoader());
                pVar.setArguments(bundle);
            }
            return pVar;
        } catch (IllegalAccessException e10) {
            throw new l("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e10);
        } catch (InstantiationException e11) {
            throw new l("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e11);
        } catch (NoSuchMethodException e12) {
            throw new l("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e12);
        } catch (InvocationTargetException e13) {
            throw new l("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e13);
        }
    }

    public final String getString(int i10, Object... objArr) {
        return getResources().getString(i10, objArr);
    }

    public final void postponeEnterTransition(long j10, TimeUnit timeUnit) {
        e().f2795t = true;
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
        }
        i0 i0Var = this.mFragmentManager;
        if (i0Var != null) {
            this.mPostponedHandler = i0Var.w0().h();
        } else {
            this.mPostponedHandler = new Handler(Looper.getMainLooper());
        }
        this.mPostponedHandler.removeCallbacks(this.mPostponedDurationRunnable);
        this.mPostponedHandler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j10));
    }

    public final <I, O> f.c registerForActivityResult(g.a aVar, f.e eVar, f.b bVar) {
        return j(aVar, new i(eVar), bVar);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        a0 a0Var = this.mHost;
        if (a0Var != null) {
            a0Var.n(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        if (this.mHost != null) {
            getParentFragmentManager().X0(this, intent, i10, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        a0 a0Var = this.mHost;
        if (a0Var != null) {
            LayoutInflater k10 = a0Var.k();
            d0.u.a(k10, this.mChildFragmentManager.x0());
            return k10;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }
}
