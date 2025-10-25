package ve;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public enum b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    SETTINGS_TIMEOUT(4),
    STREAM_CLOSED(5),
    FRAME_SIZE_ERROR(6),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);
    

    /* renamed from: b  reason: collision with root package name */
    public static final a f31421b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f31437a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(int i10) {
            b[] values;
            boolean z10;
            for (b bVar : b.values()) {
                if (bVar.b() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    return bVar;
                }
            }
            return null;
        }
    }

    b(int i10) {
        this.f31437a = i10;
    }

    public final int b() {
        return this.f31437a;
    }
}
