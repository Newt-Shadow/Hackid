package l5;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
/* loaded from: classes.dex */
public class n extends androidx.fragment.app.n {

    /* renamed from: q  reason: collision with root package name */
    private Dialog f25317q;

    /* renamed from: r  reason: collision with root package name */
    private DialogInterface.OnCancelListener f25318r;

    /* renamed from: s  reason: collision with root package name */
    private Dialog f25319s;

    public static n y(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        n nVar = new n();
        Dialog dialog2 = (Dialog) n5.q.l(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        nVar.f25317q = dialog2;
        if (onCancelListener != null) {
            nVar.f25318r = onCancelListener;
        }
        return nVar;
    }

    @Override // androidx.fragment.app.n, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f25318r;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.n
    public Dialog r(Bundle bundle) {
        Dialog dialog = this.f25317q;
        if (dialog == null) {
            v(false);
            if (this.f25319s == null) {
                this.f25319s = new AlertDialog.Builder((Context) n5.q.k(getContext())).create();
            }
            return this.f25319s;
        }
        return dialog;
    }

    @Override // androidx.fragment.app.n
    public void x(androidx.fragment.app.i0 i0Var, String str) {
        super.x(i0Var, str);
    }
}
