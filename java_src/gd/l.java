package gd;

import java.io.BufferedReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l implements qd.e {

    /* renamed from: a  reason: collision with root package name */
    private final BufferedReader f16406a;

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private String f16407a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f16408b;

        a() {
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public String next() {
            if (hasNext()) {
                String str = this.f16407a;
                this.f16407a = null;
                kotlin.jvm.internal.m.b(str);
                return str;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f16407a == null && !this.f16408b) {
                String readLine = l.this.f16406a.readLine();
                this.f16407a = readLine;
                if (readLine == null) {
                    this.f16408b = true;
                }
            }
            if (this.f16407a != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public l(BufferedReader reader) {
        kotlin.jvm.internal.m.e(reader, "reader");
        this.f16406a = reader;
    }

    @Override // qd.e
    public Iterator iterator() {
        return new a();
    }
}
