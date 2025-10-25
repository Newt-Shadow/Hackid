package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import b1.c;
/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {
    private final Context O;
    private final ArrayAdapter P;
    private Spinner Q;
    private final AdapterView.OnItemSelectedListener R;

    /* loaded from: classes.dex */
    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            if (i10 >= 0) {
                String charSequence = DropDownPreference.this.O()[i10].toString();
                if (!charSequence.equals(DropDownPreference.this.P()) && DropDownPreference.this.a(charSequence)) {
                    DropDownPreference.this.R(charSequence);
                }
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.f3682c);
    }

    private void T() {
        this.P.clear();
        if (M() != null) {
            for (CharSequence charSequence : M()) {
                this.P.add(charSequence.toString());
            }
        }
    }

    protected ArrayAdapter S() {
        return new ArrayAdapter(this.O, 17367049);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void x() {
        super.x();
        ArrayAdapter arrayAdapter = this.P;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public void z() {
        this.Q.performClick();
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.R = new a();
        this.O = context;
        this.P = S();
        T();
    }
}
