package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
abstract class d extends y {

    /* renamed from: a  reason: collision with root package name */
    private final int f6961a;

    /* renamed from: b  reason: collision with root package name */
    private int f6962b;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(int i10, int i11) {
        b.b(i11, i10, StreamInformation.KEY_INDEX);
        this.f6961a = i10;
        this.f6962b = i11;
    }

    protected abstract Object b(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f6962b < this.f6961a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f6962b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i10 = this.f6962b;
            this.f6962b = i10 + 1;
            return b(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f6962b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i10 = this.f6962b - 1;
            this.f6962b = i10;
            return b(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f6962b - 1;
    }
}
