package com.yandex.metrica.impl.ob;

import android.text.Layout;
import android.text.TextUtils;
import android.widget.TextView;
/* loaded from: classes2.dex */
public class Fl {

    /* renamed from: a  reason: collision with root package name */
    private final C1005yl f10094a;

    public Fl(C1005yl c1005yl) {
        this.f10094a = c1005yl;
    }

    public int a(TextView textView) {
        int i10 = 0;
        try {
            if (TextUtils.isEmpty(textView.getText()) || textView.getVisibility() != 0) {
                return 0;
            }
            String charSequence = textView.getText().toString();
            Layout layout = textView.getLayout();
            int length = charSequence.length();
            if (layout != null) {
                try {
                    int lineCount = textView.getLineCount() - 1;
                    TextUtils.TruncateAt ellipsize = textView.getEllipsize();
                    if (ellipsize != null && lineCount >= 0 && (lineCount == 0 || ellipsize == TextUtils.TruncateAt.END)) {
                        i10 = 1;
                    }
                    if (i10 != 0) {
                        return length - layout.getEllipsisCount(lineCount);
                    }
                } catch (Throwable th) {
                    th = th;
                    i10 = length;
                    this.f10094a.a("ui_parsing_visibility", th);
                    return i10;
                }
            }
            return length;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
