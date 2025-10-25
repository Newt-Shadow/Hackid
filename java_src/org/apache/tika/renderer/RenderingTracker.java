package org.apache.tika.renderer;
/* loaded from: classes2.dex */
public class RenderingTracker {

    /* renamed from: id  reason: collision with root package name */
    private int f27674id = 0;

    public synchronized int getNextId() {
        int i10;
        i10 = this.f27674id + 1;
        this.f27674id = i10;
        return i10;
    }
}
