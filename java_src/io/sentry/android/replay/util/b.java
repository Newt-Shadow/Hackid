package io.sentry.android.replay.util;

import androidx.compose.ui.text.TextLayoutResult;
/* loaded from: classes2.dex */
public final class b implements m {

    /* renamed from: a  reason: collision with root package name */
    private final TextLayoutResult f22800a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f22801b;

    public b(TextLayoutResult layout, boolean z10) {
        kotlin.jvm.internal.m.e(layout, "layout");
        this.f22800a = layout;
        this.f22801b = z10;
    }

    @Override // io.sentry.android.replay.util.m
    public int a(int i10) {
        int c10;
        c10 = kd.c.c(this.f22800a.getLineTop(i10));
        return c10;
    }

    @Override // io.sentry.android.replay.util.m
    public float b(int i10, int i11) {
        float horizontalPosition = this.f22800a.getHorizontalPosition(i11, true);
        if (!this.f22801b && e() == 1) {
            return horizontalPosition - this.f22800a.getLineLeft(i10);
        }
        return horizontalPosition;
    }

    @Override // io.sentry.android.replay.util.m
    public int c(int i10) {
        int c10;
        c10 = kd.c.c(this.f22800a.getLineBottom(i10));
        return c10;
    }

    @Override // io.sentry.android.replay.util.m
    public int d(int i10) {
        return this.f22800a.getLineStart(i10);
    }

    @Override // io.sentry.android.replay.util.m
    public int e() {
        return this.f22800a.getLineCount();
    }

    @Override // io.sentry.android.replay.util.m
    public Integer f() {
        return null;
    }

    @Override // io.sentry.android.replay.util.m
    public int g(int i10) {
        return this.f22800a.getLineEnd(i10, true);
    }

    @Override // io.sentry.android.replay.util.m
    public int h(int i10) {
        return this.f22800a.isLineEllipsized(i10) ? 1 : 0;
    }
}
