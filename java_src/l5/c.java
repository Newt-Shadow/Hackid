package l5;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
/* loaded from: classes.dex */
public class c extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f25266a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f25267b;

    /* renamed from: c  reason: collision with root package name */
    private Dialog f25268c;

    public static c a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        c cVar = new c();
        Dialog dialog2 = (Dialog) n5.q.l(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        cVar.f25266a = dialog2;
        if (onCancelListener != null) {
            cVar.f25267b = onCancelListener;
        }
        return cVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f25267b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f25266a;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f25268c == null) {
                this.f25268c = new AlertDialog.Builder((Context) n5.q.k(getActivity())).create();
            }
            return this.f25268c;
        }
        return dialog;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
