package o1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private int f26931a;

    /* renamed from: b  reason: collision with root package name */
    private final List f26932b;

    /* renamed from: c  reason: collision with root package name */
    private int f26933c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f26934a = 0;

        /* renamed from: b  reason: collision with root package name */
        private final List f26935b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private int f26936c = 1;

        public a a(int... iArr) {
            for (int i10 : iArr) {
                this.f26934a = i10 | this.f26934a;
            }
            return this;
        }

        public a b(String... strArr) {
            this.f26935b.addAll(Arrays.asList(strArr));
            return this;
        }

        public k c() {
            return new k(this.f26934a, this.f26935b, this.f26936c);
        }

        public a d(int i10) {
            this.f26936c = i10;
            return this;
        }
    }

    public k(int i10, List list, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f26932b = arrayList;
        this.f26931a = i10;
        arrayList.addAll(list);
        this.f26933c = i11;
    }

    public List a() {
        return this.f26932b;
    }

    public int b() {
        return this.f26931a;
    }

    public int c() {
        return this.f26933c;
    }
}
