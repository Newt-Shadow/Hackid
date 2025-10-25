package io.appmetrica.analytics.coreutils.internal.toggle;

import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class SimpleThreadSafeToggle implements Toggle {

    /* renamed from: a  reason: collision with root package name */
    private final String f17783a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17784b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList f17785c;

    public SimpleThreadSafeToggle(boolean z10, String str) {
        this.f17783a = str;
        this.f17784b = z10;
        this.f17785c = new ArrayList();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public synchronized boolean getActualState() {
        return this.f17784b;
    }

    protected final String getTag() {
        return this.f17783a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public synchronized void registerObserver(ToggleObserver toggleObserver, boolean z10) {
        this.f17785c.add(toggleObserver);
        if (z10) {
            toggleObserver.onStateChanged(getActualState());
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public synchronized void removeObserver(ToggleObserver toggleObserver) {
        this.f17785c.remove(toggleObserver);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void updateState(boolean z10) {
        if (z10 != getActualState()) {
            this.f17784b = z10;
            for (ToggleObserver toggleObserver : this.f17785c) {
                toggleObserver.onStateChanged(z10);
            }
        }
    }

    public /* synthetic */ SimpleThreadSafeToggle(boolean z10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, str);
    }
}
