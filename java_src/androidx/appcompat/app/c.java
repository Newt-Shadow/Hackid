package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public class c extends r implements DialogInterface {

    /* renamed from: f  reason: collision with root package name */
    final AlertController f679f;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final AlertController.b f680a;

        /* renamed from: b  reason: collision with root package name */
        private final int f681b;

        public a(Context context) {
            this(context, c.j(context, 0));
        }

        public c a() {
            c cVar = new c(this.f680a.f629a, this.f681b);
            this.f680a.a(cVar.f679f);
            cVar.setCancelable(this.f680a.f646r);
            if (this.f680a.f646r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f680a.f647s);
            cVar.setOnDismissListener(this.f680a.f648t);
            DialogInterface.OnKeyListener onKeyListener = this.f680a.f649u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }

        public Context b() {
            return this.f680a.f629a;
        }

        public a c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f680a;
            bVar.f651w = listAdapter;
            bVar.f652x = onClickListener;
            return this;
        }

        public a d(View view) {
            this.f680a.f635g = view;
            return this;
        }

        public a e(Drawable drawable) {
            this.f680a.f632d = drawable;
            return this;
        }

        public a f(CharSequence charSequence) {
            this.f680a.f636h = charSequence;
            return this;
        }

        public a g(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f680a;
            bVar.f640l = bVar.f629a.getText(i10);
            this.f680a.f642n = onClickListener;
            return this;
        }

        public a h(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f680a;
            bVar.f640l = charSequence;
            bVar.f642n = onClickListener;
            return this;
        }

        public a i(DialogInterface.OnCancelListener onCancelListener) {
            this.f680a.f647s = onCancelListener;
            return this;
        }

        public a j(DialogInterface.OnKeyListener onKeyListener) {
            this.f680a.f649u = onKeyListener;
            return this;
        }

        public a k(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f680a;
            bVar.f637i = bVar.f629a.getText(i10);
            this.f680a.f639k = onClickListener;
            return this;
        }

        public a l(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f680a;
            bVar.f637i = charSequence;
            bVar.f639k = onClickListener;
            return this;
        }

        public a m(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f680a;
            bVar.f651w = listAdapter;
            bVar.f652x = onClickListener;
            bVar.I = i10;
            bVar.H = true;
            return this;
        }

        public a n(CharSequence charSequence) {
            this.f680a.f634f = charSequence;
            return this;
        }

        public a(Context context, int i10) {
            this.f680a = new AlertController.b(new ContextThemeWrapper(context, c.j(context, i10)));
            this.f681b = i10;
        }
    }

    protected c(Context context, int i10) {
        super(context, j(context, i10));
        this.f679f = new AlertController(getContext(), this, getWindow());
    }

    static int j(Context context, int i10) {
        if (((i10 >>> 24) & KotlinVersion.MAX_COMPONENT_VALUE) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(h.a.f16452l, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView i() {
        return this.f679f.d();
    }

    public void k(View view) {
        this.f679f.r(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.r, androidx.activity.r, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f679f.e();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.f679f.f(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (this.f679f.g(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // androidx.appcompat.app.r, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f679f.p(charSequence);
    }
}
