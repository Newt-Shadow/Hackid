package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import b1.c;
import b1.g;
/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    int D;
    int E;
    private int F;
    private int G;
    boolean H;
    SeekBar I;
    private TextView J;
    boolean K;
    private boolean L;
    boolean M;
    private final SeekBar.OnSeekBarChangeListener N;
    private final View.OnKeyListener O;

    /* loaded from: classes.dex */
    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (z10) {
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if (seekBarPreference.M || !seekBarPreference.H) {
                    seekBarPreference.O(seekBar);
                    return;
                }
            }
            SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
            seekBarPreference2.P(i10 + seekBarPreference2.E);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.H = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.H = false;
            int progress = seekBar.getProgress();
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if (progress + seekBarPreference.E != seekBarPreference.D) {
                seekBarPreference.O(seekBar);
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0) {
                return false;
            }
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if ((!seekBarPreference.K && (i10 == 21 || i10 == 22)) || i10 == 23 || i10 == 66) {
                return false;
            }
            SeekBar seekBar = seekBarPreference.I;
            if (seekBar == null) {
                Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
                return false;
            }
            return seekBar.onKeyDown(i10, keyEvent);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.N = new a();
        this.O = new b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.C0, i10, i11);
        this.E = obtainStyledAttributes.getInt(g.F0, 0);
        L(obtainStyledAttributes.getInt(g.D0, 100));
        M(obtainStyledAttributes.getInt(g.G0, 0));
        this.K = obtainStyledAttributes.getBoolean(g.E0, true);
        this.L = obtainStyledAttributes.getBoolean(g.H0, false);
        this.M = obtainStyledAttributes.getBoolean(g.I0, false);
        obtainStyledAttributes.recycle();
    }

    private void N(int i10, boolean z10) {
        int i11 = this.E;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.F;
        if (i10 > i12) {
            i10 = i12;
        }
        if (i10 != this.D) {
            this.D = i10;
            P(i10);
            G(i10);
            if (z10) {
                x();
            }
        }
    }

    @Override // androidx.preference.Preference
    protected Object B(TypedArray typedArray, int i10) {
        return Integer.valueOf(typedArray.getInt(i10, 0));
    }

    public final void L(int i10) {
        int i11 = this.E;
        if (i10 < i11) {
            i10 = i11;
        }
        if (i10 != this.F) {
            this.F = i10;
            x();
        }
    }

    public final void M(int i10) {
        if (i10 != this.G) {
            this.G = Math.min(this.F - this.E, Math.abs(i10));
            x();
        }
    }

    void O(SeekBar seekBar) {
        int progress = this.E + seekBar.getProgress();
        if (progress != this.D) {
            if (a(Integer.valueOf(progress))) {
                N(progress, false);
                return;
            }
            seekBar.setProgress(this.D - this.E);
            P(this.D);
        }
    }

    void P(int i10) {
        TextView textView = this.J;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.f3687h);
    }
}
