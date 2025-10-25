package androidx.webkit.internal;

import java.util.Objects;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;
/* loaded from: classes.dex */
public class g1 implements WebMessagePayloadBoundaryInterface {

    /* renamed from: a  reason: collision with root package name */
    private final int f3559a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3560b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f3561c;

    public g1(String str) {
        this.f3559a = 0;
        this.f3560b = str;
        this.f3561c = null;
    }

    private void a(int i10) {
        if (this.f3559a == i10) {
            return;
        }
        throw new IllegalStateException("Expected " + i10 + ", but type is " + this.f3559a);
    }

    @Override // org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface
    public byte[] getAsArrayBuffer() {
        a(1);
        byte[] bArr = this.f3561c;
        Objects.requireNonNull(bArr);
        return bArr;
    }

    @Override // org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface
    public String getAsString() {
        a(0);
        return this.f3560b;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[0];
    }

    @Override // org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface
    public int getType() {
        return this.f3559a;
    }

    public g1(byte[] bArr) {
        this.f3559a = 1;
        this.f3560b = null;
        this.f3561c = bArr;
    }
}
