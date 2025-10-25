package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.i;
import androidx.lifecycle.n0;
/* loaded from: classes.dex */
public class r extends Dialog implements androidx.lifecycle.m, y, h1.f {

    /* renamed from: a  reason: collision with root package name */
    private androidx.lifecycle.n f560a;

    /* renamed from: b  reason: collision with root package name */
    private final h1.e f561b;

    /* renamed from: c  reason: collision with root package name */
    private final w f562c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context context, int i10) {
        super(context, i10);
        kotlin.jvm.internal.m.e(context, "context");
        this.f561b = h1.e.f16724d.a(this);
        this.f562c = new w(new Runnable() { // from class: androidx.activity.q
            @Override // java.lang.Runnable
            public final void run() {
                r.d(r.this);
            }
        });
    }

    private final androidx.lifecycle.n b() {
        androidx.lifecycle.n nVar = this.f560a;
        if (nVar == null) {
            androidx.lifecycle.n nVar2 = new androidx.lifecycle.n(this);
            this.f560a = nVar2;
            return nVar2;
        }
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(r rVar) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.m.e(view, "view");
        c();
        super.addContentView(view, layoutParams);
    }

    public void c() {
        Window window = getWindow();
        kotlin.jvm.internal.m.b(window);
        View decorView = window.getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window!!.decorView");
        n0.a(decorView, this);
        Window window2 = getWindow();
        kotlin.jvm.internal.m.b(window2);
        View decorView2 = window2.getDecorView();
        kotlin.jvm.internal.m.d(decorView2, "window!!.decorView");
        b0.a(decorView2, this);
        Window window3 = getWindow();
        kotlin.jvm.internal.m.b(window3);
        View decorView3 = window3.getDecorView();
        kotlin.jvm.internal.m.d(decorView3, "window!!.decorView");
        h1.g.a(decorView3, this);
    }

    @Override // androidx.lifecycle.m
    public androidx.lifecycle.i getLifecycle() {
        return b();
    }

    @Override // androidx.activity.y
    public final w getOnBackPressedDispatcher() {
        return this.f562c;
    }

    @Override // h1.f
    public h1.d getSavedStateRegistry() {
        return this.f561b.b();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f562c.k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            w wVar = this.f562c;
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            kotlin.jvm.internal.m.d(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            wVar.n(onBackInvokedDispatcher);
        }
        this.f561b.d(bundle);
        b().h(i.a.ON_CREATE);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        kotlin.jvm.internal.m.d(onSaveInstanceState, "super.onSaveInstanceState()");
        this.f561b.e(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        b().h(i.a.ON_RESUME);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onStop() {
        b().h(i.a.ON_DESTROY);
        this.f560a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        c();
        super.setContentView(i10);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        kotlin.jvm.internal.m.e(view, "view");
        c();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.m.e(view, "view");
        c();
        super.setContentView(view, layoutParams);
    }
}
