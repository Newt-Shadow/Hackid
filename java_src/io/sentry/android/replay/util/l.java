package io.sentry.android.replay.util;

import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final Color f22813a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f22814b;

    public /* synthetic */ l(Color color, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(color, z10);
    }

    public final Color a() {
        return this.f22813a;
    }

    public final boolean b() {
        return this.f22814b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            return kotlin.jvm.internal.m.a(this.f22813a, lVar.f22813a) && this.f22814b == lVar.f22814b;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        Color color = this.f22813a;
        int i10 = (color == null ? 0 : Color.hashCode-impl(color.unbox-impl())) * 31;
        boolean z10 = this.f22814b;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        return i10 + i11;
    }

    public String toString() {
        return "TextAttributes(color=" + this.f22813a + ", hasFillModifier=" + this.f22814b + ')';
    }

    private l(Color color, boolean z10) {
        this.f22813a = color;
        this.f22814b = z10;
    }
}
