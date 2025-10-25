package androidx.appcompat.app;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.b;
import d0.t;
/* loaded from: classes.dex */
public abstract class r extends androidx.activity.r implements e {

    /* renamed from: d  reason: collision with root package name */
    private g f802d;

    /* renamed from: e  reason: collision with root package name */
    private final t.a f803e;

    public r(Context context, int i10) {
        super(context, f(context, i10));
        this.f803e = new t.a() { // from class: androidx.appcompat.app.q
            @Override // d0.t.a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return r.this.g(keyEvent);
            }
        };
        g e10 = e();
        e10.N(f(context, i10));
        e10.y(null);
    }

    private static int f(Context context, int i10) {
        if (i10 == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(h.a.f16463w, typedValue, true);
            return typedValue.resourceId;
        }
        return i10;
    }

    @Override // androidx.activity.r, android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e().e(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        e().z();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return d0.t.e(this.f803e, getWindow().getDecorView(), this, keyEvent);
    }

    public g e() {
        if (this.f802d == null) {
            this.f802d = g.i(this, this);
        }
        return this.f802d;
    }

    @Override // android.app.Dialog
    public View findViewById(int i10) {
        return e().j(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean h(int i10) {
        return e().H(i10);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        e().u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.r, android.app.Dialog
    public void onCreate(Bundle bundle) {
        e().t();
        super.onCreate(bundle);
        e().y(bundle);
    }

    @Override // androidx.activity.r, android.app.Dialog
    protected void onStop() {
        super.onStop();
        e().E();
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeFinished(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeStarted(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // androidx.activity.r, android.app.Dialog
    public void setContentView(int i10) {
        e().I(i10);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        e().O(charSequence);
    }

    @Override // androidx.activity.r, android.app.Dialog
    public void setContentView(View view) {
        e().J(view);
    }

    @Override // androidx.activity.r, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e().K(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i10) {
        super.setTitle(i10);
        e().O(getContext().getString(i10));
    }
}
