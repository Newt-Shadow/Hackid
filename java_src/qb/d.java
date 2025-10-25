package qb;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final a f28657b;

    /* renamed from: c  reason: collision with root package name */
    public static final d f28658c = new d("NOTHING", 0, 1);

    /* renamed from: d  reason: collision with root package name */
    public static final d f28659d = new d("ONCE", 1, 2);

    /* renamed from: e  reason: collision with root package name */
    public static final d f28660e = new d("REPEAT", 2, 3);

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ d[] f28661f;

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ cd.a f28662g;

    /* renamed from: a  reason: collision with root package name */
    private final int f28663a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(int i10) {
            d dVar;
            boolean z10;
            d[] values = d.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    dVar = values[i11];
                    if (dVar.b() == i10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        break;
                    }
                    i11++;
                } else {
                    dVar = null;
                    break;
                }
            }
            if (dVar == null) {
                return d.f28658c;
            }
            return dVar;
        }
    }

    static {
        d[] a10 = a();
        f28661f = a10;
        f28662g = cd.b.a(a10);
        f28657b = new a(null);
    }

    private d(String str, int i10, int i11) {
        this.f28663a = i11;
    }

    private static final /* synthetic */ d[] a() {
        return new d[]{f28658c, f28659d, f28660e};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f28661f.clone();
    }

    public final int b() {
        return this.f28663a;
    }
}
