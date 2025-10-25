package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import b1.g;
import java.util.ArrayList;
import java.util.List;
import r.i;
/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    final i D;
    private final Handler E;
    private final List F;
    private boolean G;
    private int H;
    private boolean I;
    private int J;
    private final Runnable K;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                PreferenceGroup.this.D.clear();
            }
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.D = new i();
        this.E = new Handler(Looper.getMainLooper());
        this.G = true;
        this.H = 0;
        this.I = false;
        this.J = Integer.MAX_VALUE;
        this.K = new a();
        this.F = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f3741v0, i10, i11);
        int i12 = g.f3745x0;
        this.G = u.i.b(obtainStyledAttributes, i12, i12, true);
        if (obtainStyledAttributes.hasValue(g.f3743w0)) {
            int i13 = g.f3743w0;
            N(u.i.d(obtainStyledAttributes, i13, i13, Integer.MAX_VALUE));
        }
        obtainStyledAttributes.recycle();
    }

    public Preference L(int i10) {
        return (Preference) this.F.get(i10);
    }

    public int M() {
        return this.F.size();
    }

    public void N(int i10) {
        if (i10 != Integer.MAX_VALUE && !u()) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.J = i10;
    }

    @Override // androidx.preference.Preference
    public void y(boolean z10) {
        super.y(z10);
        int M = M();
        for (int i10 = 0; i10 < M; i10++) {
            L(i10).C(this, z10);
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
