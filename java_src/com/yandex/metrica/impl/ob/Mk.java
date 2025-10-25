package com.yandex.metrica.impl.ob;

import android.widget.CheckBox;
import android.widget.Chronometer;
import android.widget.DigitalClock;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextClock;
import android.widget.TextView;
import com.yandex.metrica.impl.ob.C0837rl;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class Mk implements InterfaceC0466cl {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Class> f10860a;

    public Mk() {
        HashSet hashSet = new HashSet();
        this.f10860a = hashSet;
        hashSet.add(EditText.class);
        hashSet.add(Chronometer.class);
        hashSet.add(DigitalClock.class);
        hashSet.add(TextClock.class);
        hashSet.add(RadioButton.class);
        hashSet.add(CheckBox.class);
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(TextView textView) {
        TextView textView2 = textView;
        for (Class cls : this.f10860a) {
            if (cls.isInstance(textView2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C0837rl.b a() {
        return C0837rl.b.IRRELEVANT_CLASS;
    }
}
