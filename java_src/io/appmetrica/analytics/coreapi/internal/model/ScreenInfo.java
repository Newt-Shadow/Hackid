package io.appmetrica.analytics.coreapi.internal.model;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class ScreenInfo {

    /* renamed from: a  reason: collision with root package name */
    private final int f17662a;

    /* renamed from: b  reason: collision with root package name */
    private final int f17663b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17664c;

    /* renamed from: d  reason: collision with root package name */
    private final float f17665d;

    public ScreenInfo(int i10, int i11, int i12, float f10) {
        this.f17662a = i10;
        this.f17663b = i11;
        this.f17664c = i12;
        this.f17665d = f10;
    }

    public static /* synthetic */ ScreenInfo copy$default(ScreenInfo screenInfo, int i10, int i11, int i12, float f10, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = screenInfo.f17662a;
        }
        if ((i13 & 2) != 0) {
            i11 = screenInfo.f17663b;
        }
        if ((i13 & 4) != 0) {
            i12 = screenInfo.f17664c;
        }
        if ((i13 & 8) != 0) {
            f10 = screenInfo.f17665d;
        }
        return screenInfo.copy(i10, i11, i12, f10);
    }

    public final int component1() {
        return this.f17662a;
    }

    public final int component2() {
        return this.f17663b;
    }

    public final int component3() {
        return this.f17664c;
    }

    public final float component4() {
        return this.f17665d;
    }

    public final ScreenInfo copy(int i10, int i11, int i12, float f10) {
        return new ScreenInfo(i10, i11, i12, f10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ScreenInfo) {
            ScreenInfo screenInfo = (ScreenInfo) obj;
            return this.f17662a == screenInfo.f17662a && this.f17663b == screenInfo.f17663b && this.f17664c == screenInfo.f17664c && m.a(Float.valueOf(this.f17665d), Float.valueOf(screenInfo.f17665d));
        }
        return false;
    }

    public final int getDpi() {
        return this.f17664c;
    }

    public final int getHeight() {
        return this.f17663b;
    }

    public final float getScaleFactor() {
        return this.f17665d;
    }

    public final int getWidth() {
        return this.f17662a;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.f17663b);
        int hashCode2 = Integer.hashCode(this.f17664c);
        return Float.hashCode(this.f17665d) + ((hashCode2 + ((hashCode + (Integer.hashCode(this.f17662a) * 31)) * 31)) * 31);
    }

    public String toString() {
        return "ScreenInfo(width=" + this.f17662a + ", height=" + this.f17663b + ", dpi=" + this.f17664c + ", scaleFactor=" + this.f17665d + ')';
    }
}
