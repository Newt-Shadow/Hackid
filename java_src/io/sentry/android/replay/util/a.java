package io.sentry.android.replay.util;

import android.text.Layout;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
/* loaded from: classes2.dex */
public final class a implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Layout f22799a;

    public a(Layout layout) {
        kotlin.jvm.internal.m.e(layout, "layout");
        this.f22799a = layout;
    }

    @Override // io.sentry.android.replay.util.m
    public int a(int i10) {
        return this.f22799a.getLineTop(i10);
    }

    @Override // io.sentry.android.replay.util.m
    public float b(int i10, int i11) {
        return this.f22799a.getPrimaryHorizontal(i11);
    }

    @Override // io.sentry.android.replay.util.m
    public int c(int i10) {
        return this.f22799a.getLineBottom(i10);
    }

    @Override // io.sentry.android.replay.util.m
    public int d(int i10) {
        return this.f22799a.getLineStart(i10);
    }

    @Override // io.sentry.android.replay.util.m
    public int e() {
        return this.f22799a.getLineCount();
    }

    @Override // io.sentry.android.replay.util.m
    public Integer f() {
        int i10;
        if (!(this.f22799a.getText() instanceof Spanned)) {
            return null;
        }
        CharSequence text = this.f22799a.getText();
        kotlin.jvm.internal.m.c(text, "null cannot be cast to non-null type android.text.Spanned");
        ForegroundColorSpan[] spans = (ForegroundColorSpan[]) ((Spanned) text).getSpans(0, this.f22799a.getText().length(), ForegroundColorSpan.class);
        kotlin.jvm.internal.m.d(spans, "spans");
        int i11 = Integer.MIN_VALUE;
        Integer num = null;
        for (ForegroundColorSpan foregroundColorSpan : spans) {
            CharSequence text2 = this.f22799a.getText();
            kotlin.jvm.internal.m.c(text2, "null cannot be cast to non-null type android.text.Spanned");
            int spanStart = ((Spanned) text2).getSpanStart(foregroundColorSpan);
            CharSequence text3 = this.f22799a.getText();
            kotlin.jvm.internal.m.c(text3, "null cannot be cast to non-null type android.text.Spanned");
            int spanEnd = ((Spanned) text3).getSpanEnd(foregroundColorSpan);
            if (spanStart != -1 && spanEnd != -1 && (i10 = spanEnd - spanStart) > i11) {
                num = Integer.valueOf(foregroundColorSpan.getForegroundColor());
                i11 = i10;
            }
        }
        if (num == null) {
            return null;
        }
        return Integer.valueOf(n.g(num.intValue()));
    }

    @Override // io.sentry.android.replay.util.m
    public int g(int i10) {
        return this.f22799a.getLineVisibleEnd(i10);
    }

    @Override // io.sentry.android.replay.util.m
    public int h(int i10) {
        return this.f22799a.getEllipsisCount(i10);
    }
}
