package ve;

import java.util.List;
/* loaded from: classes2.dex */
public interface l {

    /* renamed from: a  reason: collision with root package name */
    public static final a f31634a = a.f31636a;

    /* renamed from: b  reason: collision with root package name */
    public static final l f31635b = new a.C0353a();

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f31636a = new a();

        /* renamed from: ve.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static final class C0353a implements l {
            @Override // ve.l
            public void a(int i10, b errorCode) {
                kotlin.jvm.internal.m.e(errorCode, "errorCode");
            }

            @Override // ve.l
            public boolean b(int i10, List requestHeaders) {
                kotlin.jvm.internal.m.e(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // ve.l
            public boolean c(int i10, List responseHeaders, boolean z10) {
                kotlin.jvm.internal.m.e(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // ve.l
            public boolean d(int i10, af.f source, int i11, boolean z10) {
                kotlin.jvm.internal.m.e(source, "source");
                source.skip(i11);
                return true;
            }
        }

        private a() {
        }
    }

    void a(int i10, b bVar);

    boolean b(int i10, List list);

    boolean c(int i10, List list, boolean z10);

    boolean d(int i10, af.f fVar, int i11, boolean z10);
}
