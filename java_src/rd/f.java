package rd;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
final class f implements Iterator, jd.a {

    /* renamed from: f  reason: collision with root package name */
    private static final a f29107f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final CharSequence f29108a;

    /* renamed from: b  reason: collision with root package name */
    private int f29109b;

    /* renamed from: c  reason: collision with root package name */
    private int f29110c;

    /* renamed from: d  reason: collision with root package name */
    private int f29111d;

    /* renamed from: e  reason: collision with root package name */
    private int f29112e;

    /* loaded from: classes2.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public f(CharSequence string) {
        kotlin.jvm.internal.m.e(string, "string");
        this.f29108a = string;
    }

    @Override // java.util.Iterator
    /* renamed from: b */
    public String next() {
        if (hasNext()) {
            this.f29109b = 0;
            int i10 = this.f29111d;
            int i11 = this.f29110c;
            this.f29110c = this.f29112e + i10;
            return this.f29108a.subSequence(i11, i10).toString();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i10;
        int i11 = this.f29109b;
        if (i11 != 0) {
            if (i11 != 1) {
                return false;
            }
            return true;
        }
        int i12 = 2;
        if (this.f29112e < 0) {
            this.f29109b = 2;
            return false;
        }
        int length = this.f29108a.length();
        int length2 = this.f29108a.length();
        for (int i13 = this.f29110c; i13 < length2; i13++) {
            char charAt = this.f29108a.charAt(i13);
            if (charAt == '\n' || charAt == '\r') {
                i12 = (charAt == '\r' && (i10 = i13 + 1) < this.f29108a.length() && this.f29108a.charAt(i10) == '\n') ? 1 : 1;
                length = i13;
                this.f29109b = 1;
                this.f29112e = i12;
                this.f29111d = length;
                return true;
            }
        }
        i12 = -1;
        this.f29109b = 1;
        this.f29112e = i12;
        this.f29111d = length;
        return true;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
